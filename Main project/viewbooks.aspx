<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="Main_project.viewbooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Books</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./dashboard.css" />
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
        #ImageButton2,#ImageButton3{
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
        .sol-md-2{
            margin-left:45px;
            
        }
        .thumbnail{
            background-color:black;
            border:3px solid black;
            border-radius:20px;
            color:white;
        }
        .caption {
         text-align:center;
        }
        .bookName{
            font-size:15px;
            font-weight:600;
            line-height:15px;
            text-transform:uppercase;
            font-family:sans-serif;
            text-align:center;
            color:white;
        }
        .authorName{
             font-size:13px;
             line-height:17px;
             font-family:sans-serif;
             text-align:center;
             color:white;

        }
        .bookPrice{
             font-size:14px;
             font-weight:600;
             line-height:17px;
             font-family:sans-serif;
             text-align:center;
             color:white;
        }
        .quantity{
            padding:10px;
            margin-left:-20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- logo --%>
        <div class="top_bar">
            <img id="icon" src="images/Bookstore.png"/>
            <asp:ImageButton ID="ImageButton2" runat="server" src="images/cart.png" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            
            
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


        <%-- view books --%>

        <div class="row" style="padding-top:50px" >
            <asp:Repeater ID="rptrbook" runat="server" OnItemCommand="rptrbook_ItemCommand"  >
                <ItemTemplate>
            <div class="col-sm-2 sol-md-2">
                <div class="thumbnail">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' Height="200"  AlternateText='<%# Eval("book_name") %>'/>
                    <div class="caption" >
                        <div class="bookName"><%# Eval("book_name") %></div>
                        <div class="authorName">by  <%# Eval("book_author") %></div>
                        <div class="bookPrice">Rs.<%# Eval("price") %></div>
                        <div class="quantity"><%# Eval("quantity") %>
                            <asp:DropDownList  ID="DropDownList1" runat="server" Font-Size="Large" >
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                            
                            
                        </div>
                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("book_name") %>' CommandName="AddtoCart" src="images/addtocart.png" OnClick="ImageButton1_Click"/>
                    </div>
                </div>
            </div>
                    </ItemTemplate>
                </asp:Repeater>
        </div>
    </form>
</body>
</html>
