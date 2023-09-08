<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Main_project.signup" %>

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
        top_bar{
            margin-top:10px;
            margin-bottom:10px;
        }
        #icon{
            margin-top:10px;
            margin-bottom:10px;
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
       
        h3{
            text-align:center;
            margin-bottom:30px;

        }
        .mb-4{
            margin-bottom:20px;
        }
        label,.panel-heading,p{
            color:white;
        }
        .btn{
            background-color:black;
            color:white;
        }
        p{
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
                           Welcome!!
                       </div>
                       <div class="panel-body">
                           <div class="row">
                               <div class="col-sm-12">
                                   <div class="form-group">
                                       <label >Name</label>
                                       <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtname" errormessage="Enter your name" ForeColor="Red" />
                                   </div>
                                   <div class="form-group">
                                       <label> Surname</label>
                                       <asp:TextBox ID="txtsurname" CssClass="form-control" runat="server"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="txtsurname" errormessage="Enter your Surname" ForeColor="Red" />
                                   </div>
                                   <div class="form-group">
                                       <label>Email address</label>
                                       <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" ></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" id="reqpass" controltovalidate="txtemail" errormessage="Enter Email" ForeColor="Red" />

                                   &nbsp;&nbsp;&nbsp;
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>

                                   </div>
                                   <div class="form-group">
                                       <label>Phone no</label>
                                       <asp:TextBox ID="txtphone" CssClass="form-control" runat="server" ></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="txtphone" errormessage="Enter Phone no" ForeColor="Red" />

                                   &nbsp;
                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="Invalid Phone no. " ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>

                                   </div>
                                   <div class="form-group">
                                       <label>Password</label>
                                       <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="txtpass" errormessage="Enter Password" ForeColor="Red" />

                                   &nbsp;

                                   </div>
                                   <div class="form-group">
                                       <label>Address</label>
                                       <br />
                                       <asp:TextBox ID="address" runat="server" Textmode="MultiLine" columns="50" rows="4"></asp:TextBox>
                                       <br />
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
                                       <br />
                                       

                                   </div>
                                   <div class="form-group1">
                                      
                                      
                                       <asp:Button runat="server" ID="btnloginform" CssClass="btn btn-success"  Text="SignUp"  OnClick="btncreate_Click" />
                                       
                                       
                                   </div>
                                   
                                    <p>Already have an account</p>
                                    <a href="loginform.aspx"><p>Login here</p></a>

                               </div>

                           </div>

                       </div>
                   </div>
               </div>
           </div>

                

        



        </form>
</body>
</html>
