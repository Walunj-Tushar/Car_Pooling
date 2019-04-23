<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CarPooling</title>
</head>
<body><!--header-bg-->
<!DOCTYPE html>
<html>
<style>
html{ 
       background:url(img/a5.jpg) no-repeat center fixed;
       -webkit-background-size:cover;
       -moz-background-size:cover;
	-o-background-size:cover;
         background-size:cover;

}
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #000080;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

/* Extra styles for the cancel button */
.cancelbtn
 {
    width:relative;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer
 {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}


.container 
{
    padding: 16px;
}

span.psw 
{
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 60%; /* Could be more or less, depending on screen size */
    background-color: rgba(255,255,255,0.1);
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
.container1 {
  background:#000;
  width:500px;
  margin: 0 auto;
  padding: 10px 10px 0 10px;
  
  
}

.slideshow_wrapper {
  width:500px;
  height:280px;
  overflow: hidden;
   
}

.slideshow {
  width:1500px;
  height:280px;
  margin: 0 0 0 -1000px;
 position: relative;
  -webkit-animation-name: slide_animation;
  -webkit-animation-duration:5s;
  -webkit-animation-iteration-count:infinite;
  -webkit-animation-direction:alternate;
   -webkit-animation-play-state: running;
}

.slide {
  
  width:500px;
  height: 270px;
  position:relative;
  float:left;
  
}

.slideshow img{
  width:500px; height:270px;
}

@-webkit-keyframes slide_animation {
  
  0% {left:0px;}
  10% {left:500px;}
  20% {left:500px;}
  30% {left:500px;}
  40% {left:500px;}
  50% {left:500px;}
  60% {left:500px;}
  70% {left:1000px;}
  80% {left:1000px;}
  90% {left:1000px;}
  100% {left:1000px;}
  
  
}




</style>

<body>

<h1><marquee><font color=blue>Car</font><font color=black> Pooling</font></marquee></h1>


<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">CarOwnerLogin</button>
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">CustomerLogin</button>
<button onclick="document.getElementById('id04').style.display='block'" style="width:auto;">ContactUs</button>
<button onclick="document.getElementById('id05').style.display='block'" style="width:auto;">AboutUs</button>
<button onclick="document.getElementById('id03').style.display='block'" style="width:auto;">Gallery</button>


<div id="id01" class="modal">
  
   <form action="CustomerLogin" method="post" name="UserLogin" id="UserLogin" class="modal-content animate" />
	 <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
          </div>

    <div class="container">
      <label><b></b></label><br>
	<input name="email" placeholder="Enter Your Email (Eg. abc@gmail.com)" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="text">
	<input name="password" placeholder="Enter Your Password (Eg.abc@123)" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]{1,63}$"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Your Password'" class="common-input mb-20 form-control" required="" type="password">
						
      <button type="submit">Login</button>
      
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      
    </div>
  </form>
</div>
<div id="id02" class="modal">
  
   <form  action="CarOwnerLogin" method="post" name="CarOwnerLogin" id="CarOwnerLogin"  class="modal-content animate"/>
							
	 <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
          </div>

    <div class="container">
      <label><b></b></label><br>
	<input name="email" placeholder="Enter Your Email (Eg. abc@gmail.com)" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="text">
	<input name="mno" placeholder="Enter Your Password (Eg.123456789)"   onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Your Password'" class="common-input mb-20 form-control" required="" type="password">					
      <button type="submit">Login</button>
	<button onclick="document.getElementById('id06').style.display='block'"  >Click Here For Car Registration</button>
      
  	<button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
      
    </div>
  </form>
</div>

<div id="id03" class="modal">
  
   <form   class="modal-content animate"/>
							
	 <div class="imgcontainer">
      <span onclick="document.getElementById('id03').style.display='none'" class="close" title="Close Modal">&times;</span>
          </div>
    <div class="container">
    <br>
    <div class="container1">
  <div class="slideshow_wrapper">
    <div class="slideshow">
      <div class="slide_one slide">
        <img src="img/a1.jpg" />
      </div>
      
      <div class="slide_two slide">
        <img src="img/a5.jpg" />
      </div>
      
      <div class="slide_three slide">
        <img class="slide_img" src="img/header-bg.jpg" />
      </div>
    </div></div></div>
    <div class="row">
			<button type="button" onclick="document.getElementById('id03').style.display='none'" class="cancelbtn">Cancel</button>
      
    </div>
  </form>
</div></div>
<div id="id04" class="modal">
  
   <form   class="modal-content animate"/>
							
	 <div class="imgcontainer">
      <span onclick="document.getElementById('id04').style.display='none'" class="close" title="Close Modal">&times;</span>
          </div>
    <div class="container">
    <br>
    <form class="form-area mt-60" id="Form" action="ContactUs" method="post" class="contact-form text-right">
								<div class="row">	
						<div class="col-lg-6 form-group">
							
							<input name="name" id="name" placeholder="Enter your name (Eg. Tushar Walunj)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
						    <input name="mno" id="mno" placeholder="Enter Mobile Number (Eg.1234567890)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Mobile Number'" class="common-input mb-20 form-control" required="" type="text">
							
							<input name="email" id="email" placeholder="Enter email address (Eg. abc@gmail.com)" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="text">
							
							<input name="subject" id="subject" placeholder="Enter your subject (Eg. abc)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your subject'" class="common-input mb-28 form-control" required="" type="text">
							<input name="message" id="message" placeholder="Enter your Message (Eg. abc)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your subject'" class="common-input mb-28 form-control" required="" type="text">
							<button class="primary-btn mt-20" type="submit">Send Message<span class="lnr lnr-arrow-right"></span></button>
							
						</div></div>
					</form>		
    <div class="row">
			<button type="button" onclick="document.getElementById('id04').style.display='none'" class="cancelbtn">Cancel</button>
      
    </div>
  </form>
</div>
</div>
<div id="id05" class="modal">
  
   <form   class="modal-content animate"/>
							
	 <div class="imgcontainer">
      <span onclick="document.getElementById('id05').style.display='none'" class="close" title="Close Modal">&times;</span>
          </div>
    <div class="container">
    	<div class="row">
						<div class="col-lg-4 col-md-6">
							<div class="single-service">
								<h4><span class="lnr lnr-user"></span>Expert Technicians</h4>
								<p><font color=yellow>
									Car pooling system reduces the misery of travelers and make them find cars in short period of time.
								</font></p>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-service">
								<h4><span class="lnr lnr-license"></span>Professional Service</h4>
								<p>
									<font color=yellow>
									Car pooling, is an application of finding car in which drivers who are traveling to work alone can ask for fellow passengers through our application. 
								</font></p>
												</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-service">
								<h4><span class="lnr lnr-phone"></span>Great Support</h4>
								<p>
									<font color=yellow>
									For those who use public-transport system to go to work daily can use this application to find drivers who are traveling to the same destination in a short path.
								</font></p>
							</div>
						</div>
						<div class="col-lg-4 col-md-6">
							<div class="single-service">
								<h4><span class="lnr lnr-rocket"></span>Technical Skills</h4>
								<p><font color=yellow>
					Car pooling system is an effort to reduce consumption of fuel, our most important non-renewable resource and traffic congestion on roads by encouraging people to use cars haring.
	 So it is an environment-friendly social application and also helps people to reduce their journey time.
	 		</font>	</p>				
							</div>
						</div></div>
    <div class="row">
			<button type="button" onclick="document.getElementById('id05').style.display='none'" class="cancelbtn">Cancel</button>
      
    </div>
  </form>
</div>
</div>
<div id="id06" class="modal">
  
   <form   class="modal-content animate">
							
	 <div class="imgcontainer">
      <span onclick="document.getElementById('id06').style.display='none'" class="close" title="Close Modal">&times;</span>
          </div>
    <div class="container">
    <div class="row d-flex justify-content-center">
						<div class="menu-content pb-30 col-lg-16">
							<div class="title text-center">
								<h1 class="mb-10"><i class="fa fa-edit">&nbsp;Enter Details For Car Registration</h1></i>
							</div>
    			<div class="col-lg-24 form-group">
    			<br>
							<form class="form-area mt-60" id="myForm" action="CarRegistration" method="post" class="contact-form text-right">
							<input name="fname" id="fname" placeholder="Enter Your First name (Eg.Tushar)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your First name'" class="common-input mb-20 form-control" required="" type="text">
							<input name="lname" id="lname" placeholder="Enter Your Last name (Eg.Walunj)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Last name'" class="common-input mb-20 form-control" required="" type="text">
							<input name="addr" id="addr" placeholder="Enter Your Address (Eg. A/p Pune)" onfocus="this.placeholder = ''"  onblur="this.placeholder = 'Enter your Address'" class="common-input mb-20 form-control" required="" type="text">
							<input name="adharno" id="adharno" placeholder="Enter Your Adhar Number (Eg.123456789012)" pattern="[0-9]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Adhar Number'" class="common-input mb-20 form-control" required="" type="text">
							<input name="mno" id="mno" placeholder="Enter Your Mobile Number (Eg.1234567890)" pattern="[0-9]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Mobile Number'" class="common-input mb-20 form-control" required="" type="text">
							<input name="email" id="email" placeholder="Enter Your Email Address (Eg.abc@gmail.com)" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="text">
							<input name="carno" id="carno" placeholder="Enter Your Car Number (Eg.MH-12 aj1234)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Car Number'" class="common-input mb-20 form-control" required="" type="text">
							<input name="licenceno" id="licenceno" placeholder="Enter Your Licence Number (Eg.123456)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your First name'" class="common-input mb-20 form-control" required="" type="text">
							<div class="title text-left">
								Add RC-Book :<input name="rcbookpdf" id="rcbookpdf" type="file" placeholder="Enter Your RC-Book"></div>
							<br><div class="title text-left">
								Add Your Photo :<input name="photo" id="rcbookpdf" type="file" placeholder="Enter Your Photo"></div>
							<br><div class="title text-left">
								Add Your Signature :<input name="sign" id="rcbookpdf" type="file" placeholder="Enter Your Sign"></div>
							<br><button class="primary-btn mt-20" type="submit">Submit<span class="lnr lnr-arrow-right"></span></button>
							<button type="button" onclick="document.getElementById('id06').style.display='none'" class="cancelbtn">Cancel</button>
      </form>
							
							</div>
	
  </form>
</div>
<div id="id07" class="modal">
  
   <form   class="modal-content animate">
							
	 <div class="imgcontainer">
      <span onclick="document.getElementById('id07').style.display='none'" class="close" title="Close Modal">&times;</span>
          </div>
    <div class="container">
    <div class="row d-flex justify-content-center">
						<div class="menu-content pb-30 col-lg-16">
							<div class="title text-center">
								<h1 class="mb-10"><i class="fa fa-edit">&nbsp;Enter Details For Registration</h1></i>
							</div>
				<div class="col-lg-12 form-group">
							<form class="form-area mt-60" id="myForm" action="CustomerRegistration" method="post" class="contact-form text-right">
							<input name="fname" id="fname" placeholder="Enter Your First name (Eg.Tushar)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your First name'" class="common-input mb-20 form-control" required="" type="text">
							<input name="lname" id="lname" placeholder="Enter Your Last name (Eg.Walunj)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Last name'" class="common-input mb-20 form-control" required="" type="text">
							<input name="addr" id="addr" placeholder="Enter Your Address (Eg. A/p Pune)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Address'" class="common-input mb-20 form-control" required="" type="text">
							<input name="mno" id="mno" placeholder="Enter Your Mobile Number (Eg.1234567890)" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Mobile Number'" class="common-input mb-20 form-control" required="" type="text">
							<input name="email" id="email" placeholder="Enter Your Email Address (Eg.abc@gmail.com)" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">
							<input name="password" id="password" placeholder="Enter Your password (Eg.abc@123)" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your password'" class="common-input mb-20 form-control" required="" type="text">
						 
					<button class="primary-btn mt-20" type="submit">Submit<span class="lnr lnr-arrow-right"></span></button>
					<button type="button" onclick="document.getElementById('id07').style.display='none'" class="cancelbtn">Cancel</button>
						</form>
							
							</div>
				</div>
					
								</div>
   
    
							
	</div>
	
  </form>
</div>
<script>
// Get the modal
var modal = document.getElementById('id01');
var modal = document.getElementById('id02');
var modal = document.getElementById('id03');
var modal = document.getElementById('id04');
var modal = document.getElementById('id05');
var modal = document.getElementById('id06');
var modal = document.getElementById('id07');
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>


</body>
</html>