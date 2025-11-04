import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../providers/pixel_provider.dart';

class DimensionField extends HookWidget {
  final String label;
  final int initialValue;
  final Function(int) onChanged;

  const DimensionField({
    Key? key,
    required this.label,
    required this.initialValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: initialValue.toString());
    final pixelProvider = Provider.of<PixelProvider>(context, listen: false);

    useEffect(() {
      controller.text = initialValue.toString();
      return null;
    }, [initialValue]);

    return SizedBox(
      width: 120,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          suffixText: 'pixels',
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        controller: controller,
        onChanged: (value) {
          final newValue = int.tryParse(value);
          if (newValue != null) {
            onChanged(newValue);
          }
        },
      ),
    );
  }
}
