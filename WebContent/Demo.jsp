<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CarPoolingSystem</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
</style>
</head>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">					
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/main.css">
		
</head>
<body>
		<%
			  String email;
			
			  if(request.getParameter("na")!=null){
			
			  	email=(String)request.getParameter("na");
			
			  }
			  else{
			  email=(String)request.getAttribute("email");
			  }
		 %>

<!DOCTYPE html>
<html lang="en" ng-app>
  <head>
  				<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
 
<script>
              function CountryCntrl($scope) {
                $scope.countries = {
                		'Pune': {
                            'Shivajinagar': ['Haveli', 'Lonikand', 'lonawla', 'shivaji nagar'],
                            'Swargate': ['kalyan', 'dobwali', 'new mumbai'],
                    		'ABC': ['Gondia', 'chadrpur', 'Bardi'],
                            'Mandai': ['Bhum', 'Bhingoli', 'barahali'],
                            'Nigadi': ['Mukhed', 'Naygao', 'Kandhar','Degloor','Mudkhed','Kinvat'],
                            'Hadapsar': ['Sangamner', 'Rahata', 'Shrirampur'],
                    		'Katraj': ['buldhana', 'Wadzire', 'chandan nagar'],
                            'Pune Station': ['viman nagar', 'hadpsar', 'baramti'],
                    'Viman Nagar': ['Swarget', 'katraj', 'nashik'],
                            'Kothrud': ['jamner', 'jalgao', 'kokan'],
                    'Karve Nagar': ['bihar', 'sihgad', 'rampur'],
                            
                    'Hinjavadi': ['hijewdi', 'naraynpur', 'khargpur']
                            
                        },
                        'Mumbai': {
                        	'Mira Road': ['Abadasa', 'Bhuj', 'Mandavi', 'Rapar' ,'Gandhidham'],
                            'Badalapur': ['Bhabhar', 'Dantiwada',' Palanpur'],
                            'Kopar Khairner': ['Himmatnagar', 'Dhansura']
                          },
                          'Delhi': {
                          	'Mira Road': ['Abadasa', 'Bhuj', 'Mandavi', 'Rapar' ,'Gandhidham'],
                              'Badalapur': ['Bhabhar', 'Dantiwada',' Palanpur'],
                              'Kopar Khairner': ['Himmatnagar', 'Dhansura']
                            },
                            'Nashik': {
                                'Shivajinagar': ['Haveli', 'Lonikand', 'lonawla', 'shivaji nagar'],
                                'Swargate': ['kalyan', 'dobwali', 'new mumbai'],
                        		'ABC': ['Gondia', 'chadrpur', 'Bardi'],
                                'Mandai': ['Bhum', 'Bhingoli', 'barahali'],
                                'Nigadi': ['Mukhed', 'Naygao', 'Kandhar','Degloor','Mudkhed','Kinvat'],
                                'Hadapsar': ['Sangamner', 'Rahata', 'Shrirampur'],
                        		'Katraj': ['buldhana', 'Wadzire', 'chandan nagar'],
                                'Pune Station': ['viman nagar', 'hadpsar', 'baramti'],
                        'Viman Nagar': ['Swarget', 'katraj', 'nashik'],
                                'Kothrud': ['jamner', 'jalgao', 'kokan'],
                        'Karve Nagar': ['bihar', 'sihgad', 'rampur'],
                                
                        'Hinjavadi': ['hijewdi', 'naraynpur', 'khargpur']
                                
                            }
                };
            }
              
              function CarType($scope) {
                  $scope.cartype = {
                  		'Mini':{},
                          'Sharing': {},
                            'Mini Micro': {},
                              'Micro': {}
                  };
              }
    </script>
    <meta charset="UTF-8">
    <title>AdminLTE 2 | Advanced form elements</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- daterange picker -->
    <link href="plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- iCheck for checkboxes and radio inputs -->
    <link href="plugins/iCheck/all.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap Color Picker -->
    <link href="plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet"/>
    <!-- Bootstrap time Picker -->
    <link href="plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet"/>
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="plugins/iCheck/all.css" rel="stylesheet" type="text/css" />

  </head>
  
  <body class="skin-blue">
    <div class="wrapper">
      
      <header class="main-header">
        <a href="index2.html" class="logo"><b>Car</b>Pooling</a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
  <li class="dropdown user user-menu">
                <a href="" class="dropdown-toggle" data-toggle="dropdown">
                <form action="" method="post">
    		<%@  page  import="java.sql.*"  %>
			<%
     			Connection con=null;
      		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabshearingsystem", "root", "root");           
            		String query="select * from registercar  WHERE email='"+ email +"'";
            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
			%>
			
                  <img src="img/header-bg.jpg" class="user-image" alt="User Image"/>
                  <span class="hidden-xs"> 	
			<%
         			int id=0;
            		while(rs.next()) 
             			{
              %>
								 <%=rs.getString("fname") %>&nbsp; <%=rs.getString("lname") %>
							
							
			<%
             			}
			%> 
			<%
           			rs.close(); 
           			stmt.close(); 
           			con.close(); 
        		}
     		catch(Exception e)
        		{
          			System.out.println(e);
        		}
			%>
		</form></span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="img/header-bg.jpg" class="img-circle" alt="User Image" />
                    <p>
        	<%@  page  import="java.sql.*"  %>
			<% 		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabshearingsystem", "root", "root");           
            		String query="select * from registercar  WHERE email='"+ email +"'";
            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
			%>
				
			<%
         			int id=0;
            		while(rs.next()) 
             			{
              %>
								
								<small>Welcome,</small><br> <%=rs.getString("email") %>
			<%
             			}
			%> 
		
			<%
           			rs.close(); 
           			stmt.close(); 
           			con.close(); 
        		}
     		catch(Exception e)
        		{
          			System.out.println(e);
        		}
			%>
		</form>								
			
                    </p>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="CarOwnerProfile.jsp?na=<%=email%>" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="index.jsp" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
</script>

                </a>
                
                </li>
                
              
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="img/header-bg.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>CarPooling</p>
            </div>
          </div>
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="treeview">
              <a href="CarOwnerHome.jsp?na=<%=email%>">
                <i class="fa fa-home"></i> <span>Home</span>
              </a>
                          </li>
            <li class="treeview">
              <a href="HolidaysPlans.jsp?na=<%=email%>">
                <i class="fa fa-edit"></i> <span>Add Holidays Plans</span>
              </a>
            </li>
             <li class="treeview">
              <a href="CarOwnerContactUs.jsp?na=<%=email%>">
                <i class="fa fa-phone"></i> <span>Contact Us</span>
                
              </a>
            </li>
            
            <li class="treeview">
              <a href="CarOwnerAboutUs.jsp?na=<%=email%>">
               <i class="fa fa-edit"></i><span>About Us</span>
                
              </a>
            </li>
           
             </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Right side column. Contains the navbar and content of the page -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
           <i class="fa fa-car"></i> Car Rides 
          </h1>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><p><i class="fa fa-car"></i> View Booking Car</p></h3>
                  </div>
                <div class="icon">
                  <i class="ion ion-android-car"></i>
                </div>
                <a href="BookCarDetails.jsp?na=<%=email %>" class="small-box-footer">Click Here <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3> <p><i class="fa fa-edit"></i> View Feedback</p></h3>
                 
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="CarOwnerViewFeedback.jsp?na=<%=email %>" class="small-box-footer"> Click Here <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3><p><i class="fa fa-car"></i>  Offers Ride</p></h3>
                  
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="CarOwnerOffersRide.jsp?na=<%=email %>" class="small-box-footer">Click Here <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3><p><i class="fa fa-map"></i> GoogleMap</p></h3>
                </div>
                <div class="icon">
                  <i class="ion ion-location"></i>
                </div>
                <a href="https://www.google.com/maps/@18.8154266,74.5339326,7z" target="blank" class="small-box-footer">Click Here <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->   <section class="content">
          <div class="row">
		<div class="col-md-14">
              <div class="box box-primary">
                <div class="box-body">
                <div class="row d-flex justify-content-center">
						<div class="col-md-4 pb-20 header-text">
							<h1> <i class="fa fa-car"></i>Offers Your Ride</h1>
						</div>
					</div>
                  <form class="form-area mt-20" id="myForm" action="CarOwnerOfferRide" method="post" class="contact-form text-right">
				<section class="sidebar">
          <ul class="sidebar-menu">
            <li class="treeview">
              <a href="MicroCar.jsp?na=<%=email%>" align="center">
                <i class="fa fa-car"></i>&nbsp;&nbsp; Micro Car
              </a>
             </li>
             <br>
                <li class="treeview">
              <a href="CarOwnerHome.jsp?na=<%=email%>" align="center">
                <i class="fa fa-car"></i>&nbsp;&nbsp; Mini Car
              </a>
             </li>
             <br>
                <li class="treeview">
              <a href="CarOwnerHome.jsp?na=<%=email%>" align="center">
                <i class="fa fa-car"></i>&nbsp;&nbsp; Sharing
              </a>
             </li>
             <br>
             </ul>
        </section>		
			
				Car Type :<br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="cartype" id="cartype" value="sharecar" class="" placeholder="" required/>	Shearing
							<input type="radio" name="cartype" id="cartype" value="micro" class="" placeholder="" required/>	Micro
					        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					        <input type="radio" name="cartype" id="cartype" value="minimicro" class="" placeholder="" required/>	Mini Micro
					        <br><br>
					        							  
    		<%@  page  import="java.sql.*"  %>
			<% 		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabshearingsystem", "root", "root");           
            		String query="select * from registercar  WHERE email='"+ email +"'";
            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
			%>
				
			<%
         			int id=0;
            		while(rs.next()) 
             			{
              %>
							<input name="name" id="name" value="<%=rs.getString("fname") %>  <%=rs.getString("lname") %>" placeholder="Enter your name (Eg. Tushar )" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
						    <input name="mno" id="mno" value="<%=rs.getString("mno") %>" placeholder="Enter Mobile Number (Eg. 1234567890)" pattern="[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]+[0-9]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="text">
							<input name="email" id="email" value="<%=rs.getString("email") %>" placeholder="Enter email address (Eg. abc@gmail.com)" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,63}$" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" class="common-input mb-20 form-control" required="" type="email">
								
								
			<%
             			}
			%> 
		
			<%
           			rs.close(); 
           			stmt.close(); 
           			con.close(); 
        		}
     		catch(Exception e)
        		{
          			System.out.println(e);
        		}
			%>
				 
			<div ng-controller="CarType" >
    		    <div>
    				<select name="cartype" id="cartype"  ng-model="states" ng-options="country for (country, states) in cartype" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your First name'" class="common-input mb-20 form-control" required="" type="text">
					<option value=''>Select Car</option>
                	</select>
					      
					</div>
        		</div>
				<br><br>
				 <button class="form-control pull-right mt-10" type="submit">Sharing</button>
				<br><br>
			
			<div ng-controller="CountryCntrl" >
    		    <div>
    				<select name="startpoint" id="startpoint" placeholder="Enter Start Destination (Eg.Swargate,pune)" ng-model="states" ng-options="country for (country, states) in countries" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your First name'" class="common-input mb-20 form-control" required="" type="text">
					<option value=''>Select Your City</option>
                	</select>
					<select name="endpoint" id="endpoint" placeholder="Enter End Destination (Eg.Swargate,pune)" ng-disabled="!states" ng-model="cities" ng-options="state for (state,city) in states" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your First name'" class="common-input mb-20 form-control" required="" type="text">
					<option value=''>Select Your Start Point</option>
                	</select>
					<select name="enddestination" id="enddestination" placeholder="Enter End Destination (Eg.Airport,Mumbai)" onfocus="this.placeholder = ''" ng-disabled="!cities || !states" ng-model="city" ng-options="state for (state,city) in states" onblur="this.placeholder = 'Enter your Last name'" class="common-input mb-20 form-control" required="" type="text">
					<option value=''>Select Your Drop Point</option></select>
					      
					</div>
        		</div>
							<!-- Date range -->
                  
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input type="date" class="form-control pull-right" id="date" name="date" placeholder="Select Date" required=""/>
                    </div><!-- /.input group -->
                    <br>
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-clock-o"></i>
                      </div>
                      <input type="time" class="form-control pull-right" id="time" name="time" placeholder="Select Your Reach Time " required=""/>
                    </div><!-- /.input group -->
                  </div><!-- /.form group -->

                  <button class="primary-btn mt-10" type="submit">Submit<span class="lnr lnr-arrow-right"></span></button>
						
							
							</div>
				</div>
					</form>	
						
                
                
                </div><!-- /.box-body -->
              </div><!-- /.box -->

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
    </div><!-- ./wrapper -->


    <!-- jQuery 2.1.3 -->
    <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- InputMask -->
    <script src="plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date-range-picker -->
    <script src="plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- bootstrap color picker -->
    <script src="plugins/colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
    <!-- bootstrap time picker -->
    <script src="plugins/timepicker/bootstrap-timepicker.min.js" type="text/javascript"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- iCheck 1.0.1 -->
    <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>
    <!-- Page script -->
    <script type="text/javascript">
      $(function () {
        //Datemask dd/mm/yyyy
        $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
        //Datemask2 mm/dd/yyyy
        $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
        //Money Euro
        $("[data-mask]").inputmask();

        //Date range picker
        $('#reservation').daterangepicker();
        //Date range picker with time picker
        $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
        //Date range as a button
        $('#daterange-btn').daterangepicker(
                {
                  ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                    'Last 7 Days': [moment().subtract('days', 6), moment()],
                    'Last 30 Days': [moment().subtract('days', 29), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                  },
                  startDate: moment().subtract('days', 29),
                  endDate: moment()
                },
        function (start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
        );

        //iCheck for checkbox and radio inputs
        $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
          checkboxClass: 'icheckbox_minimal-blue',
          radioClass: 'iradio_minimal-blue'
        });
        //Red color scheme for iCheck
        $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
          checkboxClass: 'icheckbox_minimal-red',
          radioClass: 'iradio_minimal-red'
        });
        //Flat red color scheme for iCheck
        $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
          checkboxClass: 'icheckbox_flat-green',
          radioClass: 'iradio_flat-green'
        });

        //Colorpicker
        $(".my-colorpicker1").colorpicker();
        //color picker with addon
        $(".my-colorpicker2").colorpicker();

        //Timepicker
        $(".timepicker").timepicker({
          showInputs: false
        });
      });
    
  </body>
</html>

</body>
</html>