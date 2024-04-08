{{flutter_js}}
{{flutter_build_config}}

// https://github.com/flutter/website/pull/10256/files
// https://github.com/flutter/flutter/issues/145559
var loading = document.querySelector("#loading");

_flutter.loader.load({
  onEntrypointLoaded: async function (engineInitializer) {
    loading.classList.add("main_done");
    const appRunner = await engineInitializer.initializeEngine();

    loading.classList.add("init_done");
    await appRunner.runApp();
    loading.remove();
  },
});
