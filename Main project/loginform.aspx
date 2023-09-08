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
    <style >
        body{
            
            background-color:#ECD4D4;
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
        .col-md-8 img{
            height: 400px;
            margin-left: -70px;
            margin-top:10px;
            
        }
        h3{
            margin-top:70px;
            text-align:center;
            margin-bottom:30px;

        }
        .mb-4{
            margin-bottom:20px;
        }
        .btn{
            background-color:black;
            color:white;
            
            text-align:center;
        }
        label,.panel-heading,p{
            color:white;
        }
        p{
            margin-top:10px;
            margin-bottom:5px;
            text-align:center;
        }
         .panel{
            margin-top:30px;
            background-color:black;
            border-radius:50px;
        }
        .panel-heading{
            text-align:center;
            font-size:30px;
        }
        .form-group1{       
            text-align:center;
        }


        </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- logo --%>
        <div class="top_bar">
            <img id="icon" src="images/Bookstore.png"/>
            <a href="AddtoCart.aspx"><img id="img1" src="images/cart.png"/></a
            
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
                  <li><a href="loginform.aspx" style="color:white"><span class="glyphicon glyphicon-log-in" style="color:white"></span> Login</a></li>


                   
                </ul>
              </div>
            </nav>


         <%-- loginform --%>


        <div class="container">
               <div class="col-sm-3">

               </div>
               <div class="col-sm-6">
                   <div class="panel ">
                       <div class="panel-heading">
                           Please login to your account
                       </div>
                       <div class="panel-body">
                           <div class="row">
                               <div class="col-sm-12">
                                   <div class="form-group">
                                       <label >User Name</label>
                                       <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtemail" errormessage="Enter your name!" ForeColor="Red" />
                                   &nbsp;</div>
                                   <div class="form-group">
                                       <label>Password</label>
                                       <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" id="reqpass" controltovalidate="txtpass" errormessage="Enter password" ForeColor="Red" />

                                   </div>
                                   <div class="form-group1">
                                      
                                      
                                       <asp:Button runat="server" ID="btnloginform" CssClass="btn btn-success"  Text="Login"  OnClick="submit_Click" />
                                       
                                       
                                   </div>
                                   
                                    <p>Don’t have an account</p>
                                    <a href="signup.aspx"><p>Register here</p></a>
                                   <a href="forgotpass.aspx"><p>Forget Password</p></a>

                               </div>

                           </div>

                       </div>
                   </div>
               </div>
           </div>

                

        



        </form>
</body>
</html>
