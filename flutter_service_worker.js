'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "3236a980c968030b8bd60473872a1c83",
"assets/assets/images/1.jpg": "124cf0ffb1f74c90eb4b6422d2eaa77b",
"assets/assets/images/2.png": "54754bac10594d3d981a181d5652f4c6",
"assets/assets/images/3.jpg": "c2a89349d07ef7d57f4e2bdead68e8c3",
"assets/assets/images/4.jpg": "63fce91f39a130d7f5d6604e30854eba",
"assets/assets/images/5.jpg": "7effecaf72235d03cfe7e1ef33024842",
"assets/assets/images/6.png": "6c2a41f0f34dd32b561938fe28023ac7",
"assets/assets/images/flag.jpg": "50ed05077917b92d5b450a15fcd75b52",
"assets/assets/images/india.jpg": "196f8a611522ef54476035618a93a1e4",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/LICENSE": "bdeb1e0bc6356196fd065032a0c0bf51",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "deca9cdf9ef9e9e94069a04b86ae0637",
"/": "deca9cdf9ef9e9e94069a04b86ae0637",
"main.dart.js": "e42011b7386e4e4620db9390a6006bdd",
"manifest.json": "a54683775448183cf4edd3eacdbab208"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
