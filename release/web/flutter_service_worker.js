'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "7fcb0d6b8b8250ec8171160076af92bd",
"index.html": "53dcc1909df906761206a05c009eafe2",
"/": "53dcc1909df906761206a05c009eafe2",
"styles.css": "9728d755f4cecd7e7d60de876ae05505",
"key.pem": "d52839ac893be443dbe6c4c1a9c27df6",
"main.dart.js": "42e1e48e84ba6e7ddf880f794e09273d",
"cert.pem": "5501349c3eb7cc779fae3a3fb62afd80",
"flutter.js": "0b19a3d1d54c58174c41cd35acdd9388",
"favicon.png": "e58e79776834344d9be6f5b6cbe2d7af",
"icons/Icon-192.png": "e58e79776834344d9be6f5b6cbe2d7af",
"icons/Icon-512.png": "e58e79776834344d9be6f5b6cbe2d7af",
"manifest.json": "d85a3d2f5a1cec9fef77c5d31681371d",
"assets/AssetManifest.json": "a725a5ef78987deed4015318c5c8813d",
"assets/NOTICES": "1fa38d3cca1a1460a36496278a3e72ed",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/map_editor/assets/images/markers/green/X.png": "b044ab0ad1d19039ba1e7089ad70c318",
"assets/packages/map_editor/assets/images/markers/red/X.png": "acab1b916e28803c3d94ab520f397917",
"assets/packages/map_editor/assets/images/clouds/Small%2520Cloud%25203.png": "b11ed9f1eac3db1ecc3acccaf5d6b8b2",
"assets/packages/map_editor/assets/images/clouds/Small%2520Cloud%25202.png": "190a849d2d1552698393b85498c87ddf",
"assets/packages/map_editor/assets/images/clouds/Small%2520Cloud%25201.png": "a5984bc1c28019c1680d2f751edf9c08",
"assets/packages/map_editor/assets/images/menu/large_fg.png": "d2bbe7ede2e03f1a468a1b24ecb1cdc6",
"assets/packages/map_editor/assets/images/menu/right_bg.png": "880aaf2c2eac45efe2d9985ebf886ae9",
"assets/packages/map_editor/assets/images/menu/land.png": "2c36b77696431c21edf49c6bfe1df8bf",
"assets/packages/map_editor/assets/images/menu/small_fg.png": "c5a15707877f3ee4bd83f45e38198af6",
"assets/packages/map_editor/assets/images/menu/left_fg.png": "ca1b5ad14bbad46de73af959e53d76f3",
"assets/packages/map_editor/assets/images/menu/shell_right.png": "67ed32974227ed9c65e169ae125015dc",
"assets/packages/map_editor/assets/images/menu/right_fg.png": "5a9628b5d66ded40e6eb6deb5d7cc75e",
"assets/packages/map_editor/assets/images/menu/silver.png": "ac427e4c8e73259eaa44b56d556ace0b",
"assets/packages/map_editor/assets/images/menu/large_bg.png": "05bc0b83e449291461474e93a706adeb",
"assets/packages/map_editor/assets/images/menu/tooth.png": "5fe76d4bf5cee60aa445c1618a48816c",
"assets/packages/map_editor/assets/images/menu/left_bg.png": "73ff58af3cc0d4263c46e99a25d88a80",
"assets/packages/map_editor/assets/images/menu/water.png": "0ba58ff34b3542aa6b4ae7189ecc5560",
"assets/packages/map_editor/assets/images/menu/small_bg.png": "a399c18a8c8af98ab1cdf11d339b6f8a",
"assets/packages/map_editor/assets/images/menu/spikes.png": "fb4076933240832cdf207e6fdb124d81",
"assets/packages/map_editor/assets/images/menu/diamond.png": "4b6498d2357096827011e8dec3427e3b",
"assets/packages/map_editor/assets/images/menu/shell_left.png": "4d0d13eb37a8087a5d345ec2368fad59",
"assets/packages/map_editor/assets/images/menu/gold.png": "f9336ebf26cfabced9768be2f0e2bbfa",
"assets/packages/map_editor/assets/images/preview/large_fg.png": "75e909dec18befd4ba2d002f9d512b83",
"assets/packages/map_editor/assets/images/preview/right_bg.png": "809ddea2fa590a068dbe94b1af638674",
"assets/packages/map_editor/assets/images/preview/land.png": "2c36b77696431c21edf49c6bfe1df8bf",
"assets/packages/map_editor/assets/images/preview/marker_red.png": "acab1b916e28803c3d94ab520f397917",
"assets/packages/map_editor/assets/images/preview/small_fg.png": "1206f8df6da657039a7b3854f02229fb",
"assets/packages/map_editor/assets/images/preview/left_fg.png": "36eebe3ed9c650c821d6d2336edde8a7",
"assets/packages/map_editor/assets/images/preview/shell_right.png": "e6478ccd27f63441687441f9aed03ab1",
"assets/packages/map_editor/assets/images/preview/marker_green.png": "b044ab0ad1d19039ba1e7089ad70c318",
"assets/packages/map_editor/assets/images/preview/right_fg.png": "433074f986788a87752df59d0e1070c3",
"assets/packages/map_editor/assets/images/preview/silver.png": "ac427e4c8e73259eaa44b56d556ace0b",
"assets/packages/map_editor/assets/images/preview/large_bg.png": "33f313391b56bf167a9c3630e632e0e4",
"assets/packages/map_editor/assets/images/preview/tooth.png": "ff06b20baebfa0aef4f2c79897dfecfa",
"assets/packages/map_editor/assets/images/preview/left_bg.png": "870dc2b349617795358eca50dc337f66",
"assets/packages/map_editor/assets/images/preview/water.png": "0ba58ff34b3542aa6b4ae7189ecc5560",
"assets/packages/map_editor/assets/images/preview/small_bg.png": "95d5b5c880479b1985209e98119901e8",
"assets/packages/map_editor/assets/images/preview/spikes.png": "fb4076933240832cdf207e6fdb124d81",
"assets/packages/map_editor/assets/images/preview/diamond.png": "4b6498d2357096827011e8dec3427e3b",
"assets/packages/map_editor/assets/images/preview/shell_left.png": "1648ab3a46def7ddcf066d1a905b00d1",
"assets/packages/map_editor/assets/images/preview/gold.png": "f9336ebf26cfabced9768be2f0e2bbfa",
"assets/packages/map_editor/assets/images/items/diamond/diamond_2.png": "7586b5a2b58c50a3c542c2a071289366",
"assets/packages/map_editor/assets/images/items/diamond/diamond_3.png": "1a85a20e1c4460f904ebd9f92287c28e",
"assets/packages/map_editor/assets/images/items/diamond/diamond_1.png": "106a99a9ea5de0f7e173c2bdf86a148f",
"assets/packages/map_editor/assets/images/items/diamond/diamond_0.png": "ca439caef7f73e9608e0af4584b8abf0",
"assets/packages/map_editor/assets/images/items/silver/silver_0.png": "f554c838932879c300856afeac9113dc",
"assets/packages/map_editor/assets/images/items/silver/silver_1.png": "c2860232c0a56b72aa96bbdb3a30602e",
"assets/packages/map_editor/assets/images/items/silver/silver_3.png": "16ea276e770b5e21593082366c7cb6a2",
"assets/packages/map_editor/assets/images/items/silver/silver_2.png": "272e74429f8d1b469552cc6841a7f423",
"assets/packages/map_editor/assets/images/items/gold/gold_2.png": "69363db510c66080acf810b38ced6f5f",
"assets/packages/map_editor/assets/images/items/gold/gold_3.png": "5b8a4c80402e41d3a9a5f701223b1d47",
"assets/packages/map_editor/assets/images/items/gold/gold_1.png": "c67cb82a07e5c77c2c2d4891a6d0bcc3",
"assets/packages/map_editor/assets/images/items/gold/gold_0.png": "776acc944371c296cbc21cf94870a3f7",
"assets/packages/map_editor/assets/images/items/particle/particle_01.png": "1070485c8ef7c2cbcb3275186c49ff16",
"assets/packages/map_editor/assets/images/items/particle/particle_02.png": "48a2849622a1a6e17c942c3af111436b",
"assets/packages/map_editor/assets/images/items/particle/particle_03.png": "f103a2e2caa780820fc42d1df3a10245",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog.fa": "aa89066ccb42c091dba3285b650a8760",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog/top_left.png": "8d3c4b96523fda1290a72bceb0d62c49",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog/x.png": "d23754efe1822bac0dd23df1a8363796",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog/bottom_left.png": "4958ef71cb8cc14c49dda4ebaa8ca3fa",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog/middle_right.png": "41aa2006b8bb365a6bd2022240eaae25",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog/top_center.png": "dd17c1bfcb73ac8d74eed5ed8e5ab99d",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog/bottom_right.png": "6ab3101144b29a098a40056c74d63906",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog/bottom_center.png": "fb857b6438cfb669f6af65fb4e9f37ae",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog/middle_left.png": "af50dacf36f7623902a6ae351704e86c",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog/top_right.png": "9b007e169beb979fa392747cce197cfe",
"assets/packages/map_editor/assets/images/tilesets/pirate_tileset_pixel_frog.json": "1a9de19d2cb7f7be52e521ba85ea1493",
"assets/packages/map_editor/assets/images/cursors/handle/idle.png": "e512940fde36a0fed4dc55e67cc7e085",
"assets/packages/map_editor/assets/images/cursors/cursor/idle.png": "639242297d5a6939c0f04bcfd27bbc8a",
"assets/packages/map_editor/assets/images/enemies/tooth/idle/idle_4.png": "d64977ae89775f5c76024b28eafe5ed5",
"assets/packages/map_editor/assets/images/enemies/tooth/idle/idle_5.png": "db34d7c879a21dd9de95230f031b2b54",
"assets/packages/map_editor/assets/images/enemies/tooth/idle/idle_7.png": "433f067aeb3e3b095fb33749199b2339",
"assets/packages/map_editor/assets/images/enemies/tooth/idle/idle_6.png": "041d936fae6d9534dd19f3aa6a717d72",
"assets/packages/map_editor/assets/images/enemies/tooth/idle/idle_2.png": "e49b3d2db986f48722acd42a54c693a6",
"assets/packages/map_editor/assets/images/enemies/tooth/idle/idle_3.png": "7a83bc91e059dec7dda47568cf534094",
"assets/packages/map_editor/assets/images/enemies/tooth/idle/idle_1.png": "9219c9d35bacddc27bf1ec3cd5416c43",
"assets/packages/map_editor/assets/images/enemies/tooth/idle/idle_0.png": "caa64ec69bea165c8f4dc1c67c0d8b97",
"assets/packages/map_editor/assets/images/enemies/tooth/run_left/run_left_2.png": "e83029623f8d3113a015eb94f4b55314",
"assets/packages/map_editor/assets/images/enemies/tooth/run_left/run_left_3.png": "b0ed71e5fc5b141baf707880ed3c178a",
"assets/packages/map_editor/assets/images/enemies/tooth/run_left/run_left_1.png": "42cf921b018ea752f863fc97f8d8ff08",
"assets/packages/map_editor/assets/images/enemies/tooth/run_left/run_left_4.png": "c3b71056c2f4d707b72d773106267e01",
"assets/packages/map_editor/assets/images/enemies/tooth/run_left/run_left_5.png": "e3eac780bbcdf93232220a0b128aa17b",
"assets/packages/map_editor/assets/images/enemies/tooth/run_left/run_left_6.png": "b8b3556c6dfca8bad99d9a7ef4f3b951",
"assets/packages/map_editor/assets/images/enemies/tooth/run_right/run_right_5.png": "c5563d853dd52a237ce320f5a80e5c43",
"assets/packages/map_editor/assets/images/enemies/tooth/run_right/run_right_4.png": "9ea4f943935ebe03fd6c875335088d1e",
"assets/packages/map_editor/assets/images/enemies/tooth/run_right/run_right_6.png": "d950e48990e0af439b7bdd73056b0a19",
"assets/packages/map_editor/assets/images/enemies/tooth/run_right/run_right_3.png": "355778ff00f320c6f69d9ba337b6e0b5",
"assets/packages/map_editor/assets/images/enemies/tooth/run_right/run_right_2.png": "095455f2b7b5b04582f26cce2e279f6a",
"assets/packages/map_editor/assets/images/enemies/tooth/run_right/run_right_1.png": "dc5b3ab07e9c7631796f4c242ccf3e33",
"assets/packages/map_editor/assets/images/enemies/shell_left/idle/idle_1.png": "77f0b9f5c9429dd5300a247ebabdd538",
"assets/packages/map_editor/assets/images/enemies/shell_left/attack/attack_2.png": "18d11b785689623f36bf2b2dc2ee6cb9",
"assets/packages/map_editor/assets/images/enemies/shell_left/attack/attack_3.png": "4e9db98dbaf350e253d8c14fdf69e924",
"assets/packages/map_editor/assets/images/enemies/shell_left/attack/attack_1.png": "0d632f6fd0aa3124fc6485c8a3c09932",
"assets/packages/map_editor/assets/images/enemies/shell_left/attack/attack_4.png": "11cf7bae6d3a14d7933f46c8da63e281",
"assets/packages/map_editor/assets/images/enemies/shell_left/attack/attack_5.png": "77f0b9f5c9429dd5300a247ebabdd538",
"assets/packages/map_editor/assets/images/enemies/pearl/pearl.png": "6d3c19921ecdc1220f9499ba0b62d36f",
"assets/packages/map_editor/assets/images/enemies/spikes/spikes.png": "fb4076933240832cdf207e6fdb124d81",
"assets/packages/map_editor/assets/images/enemies/shell_right/idle/idle_1.png": "50e72bae44ebff9ba9ec4f7f53b0888f",
"assets/packages/map_editor/assets/images/enemies/shell_right/attack/attack_2.png": "a878830e11fc6b72933412bde661215e",
"assets/packages/map_editor/assets/images/enemies/shell_right/attack/attack_3.png": "b8de297f96a527e431c185ef8ab14250",
"assets/packages/map_editor/assets/images/enemies/shell_right/attack/attack_1.png": "056426052c587433e640ec74207ae901",
"assets/packages/map_editor/assets/images/enemies/shell_right/attack/attack_4.png": "cc4d10fc70d15bf3252f5419b204865c",
"assets/packages/map_editor/assets/images/enemies/shell_right/attack/attack_5.png": "cce5097045ad940e40366d94bf914780",
"assets/packages/map_editor/assets/images/player/fall_left/fall_left_1.png": "b136e1a407ada353104f9344f6b4ca4e",
"assets/packages/map_editor/assets/images/player/jump_left/jump_left_1.png": "ecba3bd1a18d211febca08da399b1509",
"assets/packages/map_editor/assets/images/player/fall_right/fall_right_1.png": "005db7728d94b7576b2c786d3e7e8fc2",
"assets/packages/map_editor/assets/images/player/idle_right/idle_right_0.png": "4e148347c6ddb56a391bd1fc2ea890fd",
"assets/packages/map_editor/assets/images/player/jump_right/jump_right_1.png": "0f2443986fa893e0db149010f6c3e3e2",
"assets/packages/map_editor/assets/images/player/fly_left/fly_left_3.png": "3fb085983e013db87726434e5df6b0d4",
"assets/packages/map_editor/assets/images/player/fly_left/fly_left_2.png": "76a35f1747a9465e556b4d730c48b1b7",
"assets/packages/map_editor/assets/images/player/fly_left/fly_left_0.png": "f1d25a56fd663789b1b6738ceeffa537",
"assets/packages/map_editor/assets/images/player/fly_left/fly_left_1.png": "7bdfacb12d6668dfbdbcf61e8f82162e",
"assets/packages/map_editor/assets/images/player/fly_left/fly_left_5.png": "505844eaf9cb67c4d45e88b3ec781714",
"assets/packages/map_editor/assets/images/player/fly_left/fly_left_4.png": "ae6e66ac63ddcf1b1184ecf481bbdb21",
"assets/packages/map_editor/assets/images/player/fly_right/fly_right_2.png": "13393aba209ad2e99fb131b7243ac8e4",
"assets/packages/map_editor/assets/images/player/fly_right/fly_right_3.png": "e8b4544de8d0721f2aae7bc4a9db4f24",
"assets/packages/map_editor/assets/images/player/fly_right/fly_right_1.png": "05e5a920f19b03ac4b9e7ec5f8ebfde7",
"assets/packages/map_editor/assets/images/player/fly_right/fly_right_0.png": "7e0043f25259b3761d05fc66b89e25a0",
"assets/packages/map_editor/assets/images/player/fly_right/fly_right_4.png": "f32edb2cd9461288d6aaa7807489af0c",
"assets/packages/map_editor/assets/images/player/fly_right/fly_right_5.png": "6d20b25b673b96c223051f23a549f925",
"assets/packages/map_editor/assets/images/player/idle_left/idle_left_4.png": "44f1dfedaeb15b04e5ab7e55c51c88c4",
"assets/packages/map_editor/assets/images/player/idle_left/idle_left_3.png": "7f96af0371e40d092103be6b72f4106a",
"assets/packages/map_editor/assets/images/player/idle_left/idle_left_2.png": "415c656d52739ebbc4d28e40337b61b6",
"assets/packages/map_editor/assets/images/player/idle_left/idle_left_0.png": "f5e3d72e818caf9b22b3da830cf631ff",
"assets/packages/map_editor/assets/images/player/idle_left/idle_left_1.png": "bf9a4706453aa19ddeb8fb2787cc5253",
"assets/packages/map_editor/assets/json/tiles_preset_data.json": "98a4f561f0bf6d55dbf4f31bb5282e8d",
"assets/packages/map_editor/assets/json/README.md": "4d5e23ccf5e9135e56ca44e222b79ea9",
"assets/packages/map_editor/assets/json/tiles_settings_data.json": "97259f1f8d96816fc3e477d94a571254",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "53ee62d691cfb7405a88dde8622529b6",
"assets/packages/wbw_core/assets/levels/lvl_0.json": "8e309b295ffd1f15b22c65f5425602b7",
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
"assets/AssetManifest.bin": "5a6fdb71f2ebf0ecf1f86aad027d9382",
"assets/fonts/MaterialIcons-Regular.otf": "6fdee8f27a4a0aaf3f3f570cbdbd275a",
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
"assets/assets/images/characters/char_hot_air_baloon_highres.png": "df4f5510a1f119a01e59b13b615df30e",
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
