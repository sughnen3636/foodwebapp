importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.10.1/firebase-messaging.js");

firebase.initializeApp({
  apiKey: "AIzaSyB_P7jRZQstsszOMaNGQYmLo6Bu7E3FlEw",
  authDomain: "thebuildershubb.firebaseapp.com",
    databaseURL: "...",
  projectId: "thebuildershubb",
  storageBucket: "thebuildershubb.firebasestorage.app",
  messagingSenderId: "268839700175",
  appId: "1:268839700175:web:45f167022746963dc7d9ba",
  measurementId: "G-Z30S5RVQE0"
});

const messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function (payload) {
    const promiseChain = clients
        .matchAll({
            type: "window",
            includeUncontrolled: true
        })
        .then(windowClients => {
            for (let i = 0; i < windowClients.length; i++) {
                const windowClient = windowClients[i];
                windowClient.postMessage(payload);
            }
        })
        .then(() => {
            const title = payload.notification.title;
            const options = {
                body: payload.notification.score
              };
            return registration.showNotification(title, options);
        });
    return promiseChain;
});
self.addEventListener('notificationclick', function (event) {
    console.log('notification received: ', event)
});