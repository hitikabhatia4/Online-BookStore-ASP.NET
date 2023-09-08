<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginform.aspx.cs" Inherits="Main_project.loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online shopping </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body{
            background-color:#ECD4D4
        }
        .top_bar{
            margin-top:10px;
            margin-bottom:10px;
        }
        #icon{
            margin-left:20px;
        }
        #img1{
            float:right;
           margin-top:20px;
           margin-right:30px;
        }
        .navbar-nav{
            margin-left:30px;
            padding:20px;
            font-size:20px;
        }
        .divider:after,
        .divider:before {
          content: "";
          flex: 1;
          height: 1px;
          background: #eee;
        }
        #img2{
            margin-top:20px;
            height:515px;
        }
        h3{
            text-align:center;
            margin-bottom:30px;

        }
        .mb-4{
            margin-bottom:20px;
        }
        .btn{
            background-color:black;
            color:white;
        }
        p{
            font-size:20px;
             margin-top:50px;
            text-align:center;
        }
        .glyphicon-envelope{
            margin-left:80px;
            margin-top:150px;
          
        }
        .glyphicon-earphone{
            margin-top:80px;
            margin-left:80px;
          
        }


        </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- logo --%>
        <div class="top_bar">
            <img id="icon" src="images/Bookstore.png"/>
            <a href="#"><img id="img1" src="images/cart.png"/></a>
         
        </div>
        
        
        <%-- navigation --%>
            <nav class="navbar navbar-inverse" style="background-color:black">
              <div class="container-fluid">
                <div class="navbar-header">
      
                </div>
                <ul class="nav navbar-nav">
                  <li><a href="main.aspx" style="color:white">Home</a></li>
                  <li ><a href="viewbooks.aspx" style="color:white">Books</a></li>
                  <li><a href="aboutus.aspx" style="color:white">About</a></li>
                  <li><a href="Contactus.aspx" style="color:white">Contact Us</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                  <li><a href="signup.aspx" style="color:white"><span class="glyphicon glyphicon-user" style="color:white"></span> Sign Up</a></li>
                  <li><a href="#" style="color:white"><span class="glyphicon glyphicon-log-in" style="color:white"></span> Login</a></li>
                </ul>
              </div>
            </nav>


        <section class="vh-100">
          <div class="container py-5 h-100">
            <div class="row d-flex align-items-center justify-content-center h-100">
              <div class="col-md-8 col-lg-7 col-xl-6">

                  <img src="images/handbook.png" id="img2" />
              </div>
              <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
               
                <p>The proposed system is to design such an online bookstore website using which one can say ‘goodbye’ to the days when we have to stand in line waiting for a store clerk to check out our books. Where customers can visit website anytime of the day and from anywhere to view which books are available, choose any book of their choice</p>
                
                  <label><span class="glyphicon glyphicon-envelope" style="color:black"></span>  abc@gmail.com  </label>
                  <label><span class="glyphicon glyphicon-earphone" style="color:black"></span>  90221444444  </label>
              </div>
            </div>
          </div>
        </section>


        
                

        



        </form>
</body>
</html>
