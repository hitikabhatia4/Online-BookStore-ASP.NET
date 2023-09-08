<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminform.aspx.cs" Inherits="Main_project.adminform" %>

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
            background-color:#E7FFC8;
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
        .btn{
            background-color:white;
            color:black;
            
        }
        .navbar{
            height:90px;
        }
        label,.panel-heading{
            color:white;
        }
        .panel{
            margin-top:30px;
            background-color:black;
            border-radius:50px;
        }
        .panel-heading{
            text-align:center;
            font-size:20px;
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
            <img id="icon" src="Bookstore.png"/>
        </div>
        
        
        <%-- navigation --%>
             <nav class="navbar navbar-inverse" style="background-color:black">
              <div class="container-fluid">
                <div class="navbar-header">
      
                </div>
               
              </div>
            </nav>


         <%-- loginform --%>

           <div class="container">
               <div class="col-sm-3">

               </div>
               <div class="col-sm-6">
                   <div class="panel ">
                       <div class="panel-heading">
                           Admin login
                       </div>
                       <div class="panel-body">
                           <div class="row">
                               <div class="col-sm-12">
                                   <div class="form-group">
                                       <label>Admin Id</label>
                                       <asp:TextBox ID="txtusernm" CssClass="form-control" runat="server"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtusernm" errormessage="Please enter your name!" ForeColor="#CC3300" />
                                   </div>
                                   <div class="form-group">
                                       <label>Password</label>
                                       <asp:TextBox ID="txtpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                       <asp:RequiredFieldValidator runat="server" id="reqpass" controltovalidate="txtpass" errormessage="Please enter password" ForeColor="#CC3300" />

                                   </div>
                                   <div class="form-group1">
                                      
                                      
                                       <asp:Button runat="server" ID="btnloginform" CssClass="btn btn-success"  Text="Login"  OnClick="btnloginform_Click" />
                                       
                                       
                                   </div>

                               </div>

                           </div>

                       </div>
                   </div>
               </div>
           </div>

                

        



        </form>
</body>
</html>
