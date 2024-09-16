   // Import the functions you need from the SDKs you need
   import { initializeApp } from "firebase/app";
   import { getAnalytics } from "firebase/analytics";
   // TODO: Add SDKs for Firebase products that you want to use
   // https://firebase.google.com/docs/web/setup#available-libraries
   
   // Your web app's Firebase configuration
   // For Firebase JS SDK v7.20.0 and later, measurementId is optional
   const firebaseConfig = {
   apiKey: "AIzaSyCt8J3IbNvPkQOemJFttcDG1jZShVCmTtI",
   authDomain: "[pruesimul.firebaseapp.com](http://pruesimul.firebaseapp.com/)",
   projectId: "pruesimul",
   storageBucket: "[pruesimul.appspot.com](http://pruesimul.appspot.com/)",
   messagingSenderId: "737332937319",
   appId: "1:737332937319:web:38b26f69881e3b071a0ac2",
   measurementId: "G-GCJ486VNNN"
   };
   
   // Initialize Firebase
   const app = initializeApp(firebaseConfig);
   const analytics = getAnalytics(app);