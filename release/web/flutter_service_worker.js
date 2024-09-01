'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "6784412164ff1033cfd8ea6ab84185b4",
"version.json": "90a64c718fd51214549d38116f37ed17",
"index.html": "e1ce70c307533f13e9a8b83b989ea16c",
"/": "e1ce70c307533f13e9a8b83b989ea16c",
"styles.css": "9728d755f4cecd7e7d60de876ae05505",
"main.dart.js": "a16a7d8492d63884d0dedd7afa738fe7",
"flutter.js": "f31737fb005cd3a3c6bd9355efd33061",
"favicon.png": "e58e79776834344d9be6f5b6cbe2d7af",
"icons/Icon-192.png": "e58e79776834344d9be6f5b6cbe2d7af",
"icons/Icon-512.png": "e58e79776834344d9be6f5b6cbe2d7af",
"manifest.json": "8d7a5f7750dd16273fd7d9dd0a2cdb56",
"assets/AssetManifest.json": "01645b7626015b1f2d5f71a260ca4c1e",
"assets/NOTICES": "c30ff4372c5e3fa87dd531b1ea1c6a5e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "979f23fef72e51faf8fda3b2c2d77bd7",
"assets/packages/nes_ui/assets/checkered_pattern.png": "7f3e9d7ae73d37c7329ee95d1d54f531",
"assets/packages/nes_ui/google_fonts/OFL.txt": "5096248a0ad125929b038a264f57b570",
"assets/packages/nes_ui/google_fonts/PressStart2P-Regular.ttf": "f98cd910425bf727bd54ce767a9b6884",
"assets/packages/map_editor/assets/images/preview/colourful/marker_red.png": "acab1b916e28803c3d94ab520f397917",
"assets/packages/map_editor/assets/images/preview/colourful/tropical_land.png": "dd17c1bfcb73ac8d74eed5ed8e5ab99d",
"assets/packages/map_editor/assets/images/preview/colourful/marker_green.png": "b044ab0ad1d19039ba1e7089ad70c318",
"assets/packages/map_editor/assets/images/preview/colourful/tropical_water.png": "dd17c1bfcb73ac8d74eed5ed8e5ab99d",
"assets/packages/map_editor/assets/images/preview/white_black/land.png": "56884b69216fd642cc6d561433605f2d",
"assets/packages/map_editor/assets/images/preview/evening/land.png": "00eb51be84ab98a314703c03038ff9ef",
"assets/packages/map_editor/assets/images/tilesets/evening_credits.md": "545b68cf8cd21b340b74d57e5a2cd5dc",
"assets/packages/map_editor/assets/images/tilesets/colourful.fa": "22e1a2d0aacab120b13f308da3c1962a",
"assets/packages/map_editor/assets/images/tilesets/white_black_credits.md": "7b191801918cda3bc656d7967af9eaed",
"assets/packages/map_editor/assets/images/tilesets/colourful.json": "1d5d72a55dfc945d9c5a6d36b0c02de0",
"assets/packages/map_editor/assets/images/tilesets/evening.fa": "bb24f73ad02943cea05643f9883174ad",
"assets/packages/map_editor/assets/images/tilesets/white_black.json": "c1a46052926410c3f24f6ffaa67381e5",
"assets/packages/map_editor/assets/images/tilesets/white_black_preset_data.json": "d4b26fdcb7884f369888b595fb3bdfe3",
"assets/packages/map_editor/assets/images/tilesets/white_black.fa": "49bc3a6445d79a123b5b310c992828ed",
"assets/packages/map_editor/assets/images/tilesets/evening.json": "1501a7e410cc02b0f3eed5542287e4ec",
"assets/packages/map_editor/assets/images/tilesets/colourful/marker_red__x.png": "1ed2e3bc6b2d5ec89f98ac57ec57a163",
"assets/packages/map_editor/assets/images/tilesets/colourful/hot_air_balloon__idle_right_0.png": "4e148347c6ddb56a391bd1fc2ea890fd",
"assets/packages/map_editor/assets/images/tilesets/colourful/tropical_land__top_left.png": "8d3c4b96523fda1290a72bceb0d62c49",
"assets/packages/map_editor/assets/images/tilesets/colourful/tropical_land__middle_right.png": "41aa2006b8bb365a6bd2022240eaae25",
"assets/packages/map_editor/assets/images/tilesets/colourful/tropical_land__bottom_right.png": "6ab3101144b29a098a40056c74d63906",
"assets/packages/map_editor/assets/images/tilesets/colourful/tropical_land__top_center.png": "dd17c1bfcb73ac8d74eed5ed8e5ab99d",
"assets/packages/map_editor/assets/images/tilesets/colourful/tropical_land__bottom_left.png": "4958ef71cb8cc14c49dda4ebaa8ca3fa",
"assets/packages/map_editor/assets/images/tilesets/colourful/marker_green__x.png": "ed45954a1c5bdbb1f96ff6e8e752eb26",
"assets/packages/map_editor/assets/images/tilesets/colourful/tropical_land__bottom_center.png": "fb857b6438cfb669f6af65fb4e9f37ae",
"assets/packages/map_editor/assets/images/tilesets/colourful/tropical_land__x.png": "d23754efe1822bac0dd23df1a8363796",
"assets/packages/map_editor/assets/images/tilesets/colourful/object__cursor_handle__idle.png": "e512940fde36a0fed4dc55e67cc7e085",
"assets/packages/map_editor/assets/images/tilesets/colourful/tropical_land__top_right.png": "9b007e169beb979fa392747cce197cfe",
"assets/packages/map_editor/assets/images/tilesets/colourful/tropical_land__middle_left.png": "af50dacf36f7623902a6ae351704e86c",
"assets/packages/map_editor/assets/images/tilesets/README.md": "270803921e5858921eb38991fe53481b",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__top_right.png": "0b3d8443f6b9fe0c507bffc2862b4fdc",
"assets/packages/map_editor/assets/images/tilesets/white_black/marker_red__x.png": "eb2c9b67e6efa54e76d0132a5876cf76",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_3__idle.png": "1ca68984499fdc128cf86d6c5fa5255c",
"assets/packages/map_editor/assets/images/tilesets/white_black/hot_air_balloon__idle_right_0.png": "e5b55a2499eb14ef177c86a706ea951f",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_5__idle.png": "b0824f4e6f6f172da2da962ec748519c",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_2__idle.png": "4285b526b7539b1a51a28354f314d3b3",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__middle_right.png": "997a2f99bc70709add699f6be65ce3db",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_4__idle.png": "3ed3aec0b59c6b1b4eadd8d00bc5fc7e",
"assets/packages/map_editor/assets/images/tilesets/white_black/marker_green__x.png": "444b6c0f1e7217e2b200b8a5040d67dc",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__x.png": "0c19615ba1df56596e9842968a120fff",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_1__idle.png": "e0e7bd6206815c564e48e79b4d1ba3ac",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__cursor_handle__idle.png": "e512940fde36a0fed4dc55e67cc7e085",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__building_tent__idle.png": "61f73256bf7819ecb68ed946c1c5acaf",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__top_left.png": "83656df796896d9896e1dd99f91456be",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__building_wind_water_tower__idle.png": "d7bf3afd94c6a5d499be9fb292a329f8",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__top_center.png": "4cf5da15620d770b5aa7e941e1616a72",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_6__idle.png": "9cfcee7fdb648a9a7188dddc338e5f48",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__middle_left.png": "0631e0db33d4502d0c06b36465851a39",
"assets/packages/map_editor/assets/images/tilesets/colourful_preset_data.json": "2a01405ea2c644110a6db759da39bac6",
"assets/packages/map_editor/assets/images/tilesets/evening_preset_data.json": "a6c352dfefae380436025129eee2e513",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_left_smooth.png": "8ee2093ca9412d906c7d2044a8d6e81c",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_right.png": "b7acb3eccffb107b8c087733f7cd1efd",
"assets/packages/map_editor/assets/images/tilesets/evening/marker_red__x.png": "1ed2e3bc6b2d5ec89f98ac57ec57a163",
"assets/packages/map_editor/assets/images/tilesets/evening/hot_air_balloon__idle_right_0.png": "175954c95bf8c741daf70745e1c02b49",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_left_corner.png": "8e18a98a1d5a18180d3d9261373bc646",
"assets/packages/map_editor/assets/images/tilesets/evening/land__middle_right.png": "2aa67f820b91fb735fd7a9d6b93e5ed0",
"assets/packages/map_editor/assets/images/tilesets/evening/marker_green__x.png": "ed45954a1c5bdbb1f96ff6e8e752eb26",
"assets/packages/map_editor/assets/images/tilesets/evening/land__x.png": "48ed457e2a4602f9857117205e02b8ee",
"assets/packages/map_editor/assets/images/tilesets/evening/object__cursor_handle__idle.png": "e512940fde36a0fed4dc55e67cc7e085",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_right_corner.png": "feeb9d0170f29114b04398cf6de8422b",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_left.png": "b495cc94f868eead12694665383b0b2f",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_center.png": "5239b149f21668ae482bc5d81109d730",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_right_smooth.png": "97c3a9b70e1da749bf99c6071dbbfa13",
"assets/packages/map_editor/assets/images/tilesets/evening/land__middle_left.png": "79ef5ffb854e14f94bd3e333256ee8aa",
"assets/packages/map_editor/assets/images/tilesets/colourful_credits.md": "8d2ffa4081a7c868e33340b41bf7af5f",
"assets/packages/map_editor/assets/images/cursors/cursor/idle.png": "639242297d5a6939c0f04bcfd27bbc8a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "368959d95a72eebb84a60f2c370a0715",
"assets/packages/wbw_core/assets/dictionaries/wrong_words.json": "cb52ab95a4cf94a9c1d6bb9fa011662f",
"assets/packages/wbw_core/assets/levels/lvl_evening.json": "cf6fa8dc20683404bbffd82c408b1b3f",
"assets/packages/wbw_core/assets/levels/lvl_wb_adventure.json": "ac802f046dc6d15be300e7bc131fa75d",
"assets/packages/wbw_core/assets/levels/lvl_white_black.json": "93cd74dd0ac705aac69121c5250ae7ba",
"assets/packages/wbw_design_core/assets/wordbyword_v3.riv": "d89eb8092fcca3e9b3b7da28144378d1",
"assets/packages/wbw_design_core/google_fonts/OpenSans-SemiBold.ttf": "c35a5d833fe9bc6cc802a275fd612137",
"assets/packages/wbw_design_core/google_fonts/OpenSans-Light.ttf": "8ac55d3905f927b83e36d04a7342b839",
"assets/packages/wbw_design_core/google_fonts/OpenSans-Italic.ttf": "dda9a792f39932b64e514669ae19f907",
"assets/packages/wbw_design_core/google_fonts/OpenSans-MediumItalic.ttf": "2feb877146b4ac522c966c4710a5c6ad",
"assets/packages/wbw_design_core/google_fonts/README.md": "97e67a27753004e40992506b53e32fb6",
"assets/packages/wbw_design_core/google_fonts/OpenSans-ExtraBold.ttf": "233d78d06ba32f4700bf8de9846913f1",
"assets/packages/wbw_design_core/google_fonts/OpenSans-LightItalic.ttf": "57c3b3a3c6d31ac9e6ffb8ed77225047",
"assets/packages/wbw_design_core/google_fonts/OFL.txt": "e7c2c279ba11190cbb7a6876d800e821",
"assets/packages/wbw_design_core/google_fonts/OpenSans-Bold.ttf": "8ff9b5735ccb338267f0034d83fe8214",
"assets/packages/wbw_design_core/google_fonts/OpenSans-SemiBoldItalic.ttf": "157518814e76687d9d2dcf32451aa0dd",
"assets/packages/wbw_design_core/google_fonts/OpenSans-Medium.ttf": "ab21dae0926dcf5203881d4522ac2a55",
"assets/packages/wbw_design_core/google_fonts/README.txt": "7e8cd0c0df2ceb42e5881031329a7de5",
"assets/packages/wbw_design_core/google_fonts/OpenSans-ExtraBoldItalic.ttf": "c62aeef30c74135fb49ba79d6f27881d",
"assets/packages/wbw_design_core/google_fonts/OpenSans-Regular.ttf": "22ab03a6b890f2f142a137a38bf1d4ae",
"assets/packages/wbw_design_core/google_fonts/OpenSans-BoldItalic.ttf": "210de434db54de4a6a73d1cf8604e224",
"assets/packages/wbw_dictionaries/assets/archives/ru_dic.tar.gz": "a8e4be9ed398d17266839bb48b8ae9c4",
"assets/packages/wbw_dictionaries/assets/archives/eng_dic.tar.gz": "16b5b34eb71a622d9d7fd19dd3d46eb7",
"assets/packages/wbw_dictionaries/assets/src/eng_dic.csv": "5de8a731ccc4b64d9f7b15ffdd299bf4",
"assets/packages/wbw_dictionaries/assets/src/ru_dic.csv": "d920a7cc45b9f164a2b7d0d50aa8cef5",
"assets/packages/wbw_dictionaries/assets/src/README.md": "82bfa9526b8b51a67115ef56b879e65e",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "28e44f73b327d3a9d46d3d88419bf8c3",
"assets/fonts/MaterialIcons-Regular.otf": "690e515a3ba9fc5d4257e2c9c25d7be4",
"assets/assets/icon.png": "e58e79776834344d9be6f5b6cbe2d7af",
"assets/assets/images/buttons/icon_button_highres.png": "7ff7d52b18ecb2fd7b88a21a3ef8d7a8",
"assets/assets/images/buttons/icon_button_pressed_highres.png": "b582d19b98c209e9f9d91c47b4b2a030",
"assets/assets/images/buttons/long_button_pressed_highres.png": "46d0a42215d690e33e0bd7719dd79b86",
"assets/assets/images/buttons/long_button_highres.png": "94ceb223fc7129757f6cdf89be4804b7",
"assets/assets/images/icons/icon_action_minus_highres.png": "c01ed4204e6b3e2928eb6742b2c7b274",
"assets/assets/images/icons/icon_action_collect_highres.png": "2c22788bc6b1f3d7a447c2d50dcf4dc7",
"assets/assets/images/icons/icon_action_pause_highres.png": "654d51f24d8cc63889d49066c7b3c03e",
"assets/assets/images/icons/icon_action_fire_highres.png": "93cbcfb2983906eb334a9353b217db26",
"assets/assets/images/icons/icon_action_dictionary_add_highres.png": "7d6c2e9b49266148c999e1ad679ee9eb",
"assets/assets/images/icons/icon_action_idea_highres.png": "c7604fae4d06c7019f3c5fa830f62655",
"assets/assets/images/ui_frames/center_frame_highres.png": "f4b04becb0b8515d98bfca58c97b6a82",
"assets/assets/images/ui_frames/actions_frame_highres.png": "a9e3b1e039cc29fb69e6266de2c81c02",
"assets/assets/images/ui_frames/text_field_frame_highres.png": "c6246beb16e4188437748ce0b9f74d6b",
"assets/google_fonts/OpenSans-SemiBold.ttf": "c35a5d833fe9bc6cc802a275fd612137",
"assets/google_fonts/OpenSans-Light.ttf": "8ac55d3905f927b83e36d04a7342b839",
"assets/google_fonts/OpenSans-Italic.ttf": "dda9a792f39932b64e514669ae19f907",
"assets/google_fonts/OpenSans-MediumItalic.ttf": "2feb877146b4ac522c966c4710a5c6ad",
"assets/google_fonts/README.md": "97e67a27753004e40992506b53e32fb6",
"assets/google_fonts/OpenSans-ExtraBold.ttf": "233d78d06ba32f4700bf8de9846913f1",
"assets/google_fonts/OpenSans-LightItalic.ttf": "57c3b3a3c6d31ac9e6ffb8ed77225047",
"assets/google_fonts/OFL.txt": "e7c2c279ba11190cbb7a6876d800e821",
"assets/google_fonts/OpenSans-Bold.ttf": "8ff9b5735ccb338267f0034d83fe8214",
"assets/google_fonts/OpenSans-SemiBoldItalic.ttf": "157518814e76687d9d2dcf32451aa0dd",
"assets/google_fonts/OpenSans-Medium.ttf": "ab21dae0926dcf5203881d4522ac2a55",
"assets/google_fonts/README.txt": "7e8cd0c0df2ceb42e5881031329a7de5",
"assets/google_fonts/OpenSans-ExtraBoldItalic.ttf": "c62aeef30c74135fb49ba79d6f27881d",
"assets/google_fonts/OpenSans-Regular.ttf": "22ab03a6b890f2f142a137a38bf1d4ae",
"assets/google_fonts/OpenSans-BoldItalic.ttf": "210de434db54de4a6a73d1cf8604e224",
"canvaskit/skwasm.js": "9fa2ffe90a40d062dd2343c7b84caf01",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.js": "87325e67bf77a9b483250e1fb1b54677",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/canvaskit.js": "5fda3f1af7d6433d53b24083e2219fa0",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
