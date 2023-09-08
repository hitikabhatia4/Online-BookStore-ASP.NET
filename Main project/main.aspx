<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Main_project.main" %>

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
        #acname{
            float:right;
            margin-top:35px;
             margin-right:-27px;
        }
        #logout{
             float:right;
            margin-top:37px;
             margin-right:-32px;
        }
        #adminnm{
              float:right;
            margin-top:37px;
             margin-right:-32px;
        }
        #ImageButton1,#admin{
            height:22px;
            width:25px;
            float:right;
           margin-top:20px;
           margin-right:30px;
        }
        .navbar-nav{
            margin-left:30px;
            padding:20px;
            font-size:20px;
        }
        .col-md-6 p{
            font-family: "Fjalla One", sans-serif !important;
            font-size: 70px;
            margin-top:110px;
        }
        .text-right img{
            right:10px;
            height: 550px;
            position: absolute;
            top: -22px;

        }
   
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <%-- logo --%>
        <div class="top_bar">
            <img id="icon" src="images/Bookstore.png"/>
            <a href="Admin/adminform.aspx"><img id="admin" src="images/adminacc.png"/></a>
            <asp:Label ID="adminnm" runat="server" Text="Admin"></asp:Label>
            <asp:ImageButton ID="ImageButton1" runat="server" src="images/logout.png" OnClick="ImageButton1_Click"/>
            <asp:Label ID="logout" runat="server" Text="Logout"></asp:Label>
            <a href="AddtoCart.aspx"><img id="img1" src="images/cart.png"/></a>
            <a href="#"><img id="img1" src="images/iconacc.png"/></a>
            <asp:Label ID="acname" runat="server" Text=""></asp:Label>
            
            

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

        <%-- image and text --%>
            <div class="container">

                <div class="col-md-6 col-xs-6">
                  <p>ONLINE BOOK STORE</p>
                    <a href="viewbooks.aspx"><img src="images/shopnow (1).png"/></a>
                </div>
                
                <div class="row">        
                <div class="col-md-6 col-xs-6 text-right">
                    <img src="images/asdfes.png"/>
                </div>
   </div>
</div>
        </form>
</body>
</html>
