<html>
<head>
    <title>Phone Number Authentication with Firebase Web</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 


  <style>html {
    background-image:linear-gradient(#eee, #aaa);
    height:100%;
  }
  
  img {
    border:solid 2px;
    border-bottom-color:#ffe;
    border-left-color:#eed;
    border-right-color:#eed;
    border-top-color:#ccb;
    max-height:100%;
    max-width:100%;
  }
  
  .frame {
    background-color:#ddc;
    border:solid 5vmin #eee;
    border-bottom-color:#fff;
    border-left-color:#eee;
    border-radius:2px;
    border-right-color:#eee;
    border-top-color:#ddd;
    box-shadow:0 0 5px 0 rgba(0,0,0,.25) inset, 0 5px 10px 5px rgba(0,0,0,.25);
    box-sizing:border-box;
    display:inline-block;
    margin:10vh 10vw;
    height:80vh;
    padding:8vmin;
    position:relative;
    text-align:center;

    &:before {
      border-radius:2px;
      bottom:-2vmin;
      box-shadow:0 2px 5px 0 rgba(0,0,0,.25) inset;
      content:"";
      left:-2vmin;
      position:absolute;
      right:-2vmin;
      top:-2vmin;
    }
    &:after {
      border-radius:2px;
      bottom:-2.5vmin;
      box-shadow: 0 2px 5px 0 rgba(0,0,0,.25);
      content:"";
      left:-2.5vmin;
      position:absolute;
      right:-2.5vmin;
      top:-2.5vmin;
    }
   .div  {text-align: center;}
  </style>

<center><h1>login & registration Frorm </h1></center>
<div class="frame"  >
  
  
<form>
  <center><h2>Enter number to create account</h2></center>
    <input type="text" id="number" placeholder="**********">
    <br>
    
      
   
    
     
    <div id="recaptcha-container"></div>
    <button type="button" onclick="phoneAuth();">SendCode</button>
</form><br>
<h1>Enter Verification code</h1>
<form>
    <input type="text" id="verificationCode" placeholder="Enter verification code">
    <button type="button" onclick="codeverify();">Verify code</button>

</form>

<hr>
<a href="#demo" data-toggle="collapse">
  <img src="download-removebg-preview.png" class="img-circle person" alt="course" width="200" height="200">
</a>
</div>


<!-- The core Firebase JS SDK is always required and must be listed first -->
s<script src="https://www.gstatic.com/firebasejs/6.0.2/firebase.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#config-web-app -->

<!---<script type="module">
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.1.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.1.0/firebase-analytics.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  const firebaseConfig = {
    apiKey: "AIzaSyCiUm6kkw9iiNLcsgzQXcEUUyS2ctNpVDk",
    authDomain: "login-c0596.firebaseapp.com",
    databaseURL: "https://login-c0596.firebaseio.com",
    projectId: "login-c0596",
    storageBucket: "login-c0596.appspot.com",
    messagingSenderId: "580747015916",
    appId: "1:580747015916:web:b82640733fdf9fe23517c9",
    measurementId: "G-QXLR6Q0P6K"
  };

  // Initialize Firebase
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);

    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);
</script>-->
<script src="NumberAuthentication.js" type="text/javascript"></script>
</body>
</html>