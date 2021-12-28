var firebaseConfig = {
    apiKey: "AIzaSyDXYLXRVqf9QM6Bg9BwsSAifSAh01-cpXE",
    authDomain: "contactform-f6785.firebaseapp.com",
    projectId: "contactform-f6785",
    storageBucket: "contactform-f6785.appspot.com",
    messagingSenderId: "852640140610",
    appId: "1:852640140610:web:7c000cb953a4459972ccdb",
    measurementId: "G-M3QV6L42K2"
  };
 

// Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();

// Reference messages collection
var messagesRef = firebase.database().ref('messages');

// Listen for form submit
document.getElementById('contactForm').addEventListener('send', submitForm);

// Submit form
function submitForm(e){
  e.preventDefault();

  // Get values
  var name = getInputVal('name');
  var name = getInputVal('email');
 
  var message = getInputVal('comments');

  // Save message
  saveMessage(name,email,comments );

  // Show alert
  document.querySelector('.alert').style.display = 'block';

  // Hide alert after 3 seconds
  setTimeout(function(){
    document.querySelector('.alert').style.display = 'none';
  },3000);

  // Clear form
  document.getElementById('contactForm').reset();
}

// Function to get get form values
function getInputVal(id){
  return document.getElementById(id).value;
}

// Save message to firebase
function saveMessage(name,email,comments){
  var newMessageRef = messagesRef.push();
  newMessageRef.set({
    name: name,
    email: email,
    comments:comments
  });
}


var checkbox = document.querySelector('input[name=theme]');

checkbox.addEventListener('change', function() {
    if(this.checked) {
        trans()
        document.documentElement.setAttribute('data-theme', 'dark')
    } else {
        trans()
        document.documentElement.setAttribute('data-theme', 'light')
    }
})

let trans = () => {
    document.documentElement.classList.add('transition');
    window.setTimeout(() => {
        document.documentElement.classList.remove('transition')
    }, 1000)
}


        var checkbox = document.querySelector('input[name=theme]');

        checkbox.addEventListener('change', function() {
            if(this.checked) {
                trans()
                document.documentElement.setAttribute('data-theme', 'dark')
            } else {
                trans()
                document.documentElement.setAttribute('data-theme', 'light')
            }
        })

        let trans = () => {
            document.documentElement.classList.add('transition');
            window.setTimeout(() => {
                document.documentElement.classList.remove('transition')
            }, 1000)
        }