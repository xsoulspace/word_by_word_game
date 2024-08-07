// ignore: lines_longer_than_80_chars
// ignore_for_file: avoid_dynamic_calls, avoid_print, depend_on_referenced_packages
/// this script is used to upgrade all packages to the latest version
/// and should not be included in the app.
///
/// To run this script use `make upgrade-deps`
library;

import 'dart:convert';
import 'dart:io';

import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

Future<void> main() async {
  // Update the root pubspec.yaml
  await updatePubspec('pubspec.yaml');

  // Update all pubspec.yaml files in the packages folder
  final packagesDir = Directory('packages');
  if (packagesDir.existsSync()) {
    await for (final entity
        in packagesDir.list(recursive: true, followLinks: false)) {
      if (entity is File && entity.path.endsWith('pubspec.yaml')) {
        await updatePubspec(entity.path);
      }
    }
  }

  // Run flutter pub upgrade to apply the changes
  await runCommand('flutter', ['pub', 'upgrade']);

  print('All packages have been upgraded to the latest versions.');
}

Future<void> updatePubspec(final String pubspecPath) async {
  final pubspecFile = File(pubspecPath);

  // Check if pubspec.yaml exists
  if (!pubspecFile.existsSync()) {
    print('$pubspecPath not found!');
    exit(1);
  }

  // Run flutter pub outdated and save the output to a file
  final outdatedResult = await runCommand(
    'flutter',
    ['pub', 'outdated', '--json', '--directory=${pubspecFile.parent.path}'],
  );
  final outdatedJson = jsonDecode(outdatedResult.stdout);

  // Load the current pubspec.yaml
  final pubspecContent = await pubspecFile.readAsString();
  final editor = YamlEditor(pubspecContent);
  final pubspecYaml = loadYaml(pubspecContent) as YamlMap;

  // Update the pubspec.yaml file with the latest version
  for (final package in outdatedJson['packages']) {
    final packageName = package['package'];
    final latestVersion = package['latest']['version'];

    if (packageName != null && latestVersion != null) {
      final dependencyPath = ['dependencies', packageName];
      final devDependencyPath = ['dev_dependencies', packageName];

      if (pubspecYaml.containsKey('dependencies') &&
          pubspecYaml['dependencies'].containsKey(packageName)) {
        final currentDependency = pubspecYaml['dependencies'][packageName];
        if (currentDependency is String &&
            (currentDependency.startsWith('^') ||
                RegExp(r'^\d').hasMatch(currentDependency))) {
          editor.update(dependencyPath, '^$latestVersion');
        }
      } else if (pubspecYaml.containsKey('dev_dependencies') &&
          pubspecYaml['dev_dependencies'].containsKey(packageName)) {
        final currentDependency = pubspecYaml['dev_dependencies'][packageName];
        if (currentDependency is String &&
            (currentDependency.startsWith('^') ||
                RegExp(r'^\d').hasMatch(currentDependency))) {
          editor.update(devDependencyPath, '^$latestVersion');
        }
      }
    }
  }

  // Save the updated pubspec.yaml
  await pubspecFile.writeAsString(editor.toString());
}

Future<ProcessResult> runCommand(
  final String executable,
  final List<String> arguments,
) async {
  final result = await Process.run(executable, arguments);
  if (result.exitCode != 0) {
    print('Error running $executable ${arguments.join(' ')}: ${result.stderr}');
    exit(result.exitCode);
  }
  return result;
}
