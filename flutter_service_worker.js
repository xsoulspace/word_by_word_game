'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "9fd9adae54d6fa3a3ff662ae7c94a3ff",
"index.html": "d92ff3fda1a7ca3af0c071186438cc03",
"/": "d92ff3fda1a7ca3af0c071186438cc03",
"styles.css": "9728d755f4cecd7e7d60de876ae05505",
"key.pem": "d52839ac893be443dbe6c4c1a9c27df6",
"main.dart.js": "985a0b3e76138c92db9c9979ebcade98",
"cert.pem": "5501349c3eb7cc779fae3a3fb62afd80",
"flutter.js": "0b19a3d1d54c58174c41cd35acdd9388",
"favicon.png": "e58e79776834344d9be6f5b6cbe2d7af",
"icons/Icon-192.png": "e58e79776834344d9be6f5b6cbe2d7af",
"icons/Icon-512.png": "e58e79776834344d9be6f5b6cbe2d7af",
"manifest.json": "d85a3d2f5a1cec9fef77c5d31681371d",
"assets/AssetManifest.json": "1256625a0304ed18358a0bfd51f37790",
"assets/NOTICES": "1fa38d3cca1a1460a36496278a3e72ed",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
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
"assets/packages/map_editor/assets/images/tilesets/evening.fa": "cfc719b5b70b501bfe2a38418960cd3a",
"assets/packages/map_editor/assets/images/tilesets/white_black.json": "82d0757721c24e511db05e20c91e3c48",
"assets/packages/map_editor/assets/images/tilesets/white_black_preset_data.json": "03debfb9b324191428e50b34b68b8edc",
"assets/packages/map_editor/assets/images/tilesets/white_black.fa": "8d626e3c659638070f6f05683cace60b",
"assets/packages/map_editor/assets/images/tilesets/evening.json": "3bac9a6783ef89a2640848e56e412e31",
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
"assets/packages/map_editor/assets/images/tilesets/README.md": "5b10217b8028100ec08dcf3ac1f8a486",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__top_right.png": "9822c9bb7fdad1ad0228b3573582d368",
"assets/packages/map_editor/assets/images/tilesets/white_black/marker_red__x.png": "1ed2e3bc6b2d5ec89f98ac57ec57a163",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_3__idle.png": "1ca68984499fdc128cf86d6c5fa5255c",
"assets/packages/map_editor/assets/images/tilesets/white_black/hot_air_balloon__idle_right_0.png": "e5b55a2499eb14ef177c86a706ea951f",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_5__idle.png": "68849c4fef2732c34738586911aab707",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_2__idle.png": "8e7472a829cc0f41fe921c79a11510e9",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__middle_right.png": "bbaf59a48d32e6a719c737abb69df2cf",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_4__idle.png": "3ed3aec0b59c6b1b4eadd8d00bc5fc7e",
"assets/packages/map_editor/assets/images/tilesets/white_black/marker_green__x.png": "ed45954a1c5bdbb1f96ff6e8e752eb26",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__x.png": "0c19615ba1df56596e9842968a120fff",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_1__idle.png": "6e5504d455dff18fd9124a93f8c90742",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__cursor_handle__idle.png": "e512940fde36a0fed4dc55e67cc7e085",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__top_left.png": "78ca0d335a6cf57b3b42560c12812e8f",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__top_center.png": "3d6b243373ace497e8d910f8b7d732e8",
"assets/packages/map_editor/assets/images/tilesets/white_black/object__plant_6__idle.png": "80054a1ca47aed11af99a8582b862789",
"assets/packages/map_editor/assets/images/tilesets/white_black/land__middle_left.png": "0631e0db33d4502d0c06b36465851a39",
"assets/packages/map_editor/assets/images/tilesets/colourful_preset_data.json": "2a01405ea2c644110a6db759da39bac6",
"assets/packages/map_editor/assets/images/tilesets/evening_preset_data.json": "a6c352dfefae380436025129eee2e513",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_left_smooth.png": "b2446e1d4ec300aca12360e4dcfbd85f",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_right.png": "987cd2acc72c501e732507b80a7cedfd",
"assets/packages/map_editor/assets/images/tilesets/evening/marker_red__x.png": "1ed2e3bc6b2d5ec89f98ac57ec57a163",
"assets/packages/map_editor/assets/images/tilesets/evening/hot_air_balloon__idle_right_0.png": "175954c95bf8c741daf70745e1c02b49",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_left_corner.png": "7a89a730cb11db67c50673ad70e095bb",
"assets/packages/map_editor/assets/images/tilesets/evening/land__middle_right.png": "8ed60dafbf6582445f956ac5713ac6c7",
"assets/packages/map_editor/assets/images/tilesets/evening/marker_green__x.png": "ed45954a1c5bdbb1f96ff6e8e752eb26",
"assets/packages/map_editor/assets/images/tilesets/evening/land__x.png": "48ed457e2a4602f9857117205e02b8ee",
"assets/packages/map_editor/assets/images/tilesets/evening/object__cursor_handle__idle.png": "e512940fde36a0fed4dc55e67cc7e085",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_right_corner.png": "f38ffe2d3b411d7b2579c62cf5919478",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_left.png": "cc5ccf3ce46e65a29ba2e605ac8d88cf",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_center.png": "989632bc1388a842d4b91d264d6661c4",
"assets/packages/map_editor/assets/images/tilesets/evening/land__top_right_smooth.png": "33423ddd221688019ca03149fb1c282b",
"assets/packages/map_editor/assets/images/tilesets/evening/land__middle_left.png": "a901cda5147c2b7765831c0a1491d63a",
"assets/packages/map_editor/assets/images/tilesets/colourful_credits.md": "8d2ffa4081a7c868e33340b41bf7af5f",
"assets/packages/map_editor/assets/images/cursors/cursor/idle.png": "639242297d5a6939c0f04bcfd27bbc8a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "53ee62d691cfb7405a88dde8622529b6",
"assets/packages/wbw_core/assets/levels/lvl_evening.json": "b143cbc8eeb296fc261f48bd0179eb79",
"assets/packages/wbw_core/assets/levels/lvl_colourful.json": "8e309b295ffd1f15b22c65f5425602b7",
"assets/packages/wbw_core/assets/levels/lvl_white_black.json": "b58c25e0651bc2e3aa946ee4f1ad760f",
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
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "8e6c77a742d46aae8a75404720c6a404",
"assets/fonts/MaterialIcons-Regular.otf": "c9f0fb49d8f0ea2e43dcef25521c9e45",
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
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "260cc3d5524bc8822bdb06c9e0bfbc6b",
"canvaskit/chromium/canvaskit.js": "2236901a15edcdf16e2eaf18ea7a7415",
"canvaskit/chromium/canvaskit.wasm": "495f95d726b8eeaa40939c483f01c9a3",
"canvaskit/canvaskit.js": "7c4a2df28f03b428a63fb10250463cf5",
"canvaskit/canvaskit.wasm": "a7c0cda5e4bc04d6ea82f99e674e78f0",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
