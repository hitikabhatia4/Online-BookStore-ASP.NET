<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="Main_project.AddtoCart" %>

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
        #ImageButton1{
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
         p{
            font-family: "Fjalla One", sans-serif !important;
            font-size: 20px;
            margin-top:40px;
            padding:10px;
            color:brown;
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
                  <li><a href="loginform.aspx" style="color:white"><span class="glyphicon glyphicon-log-in" style="color:white"></span> Login</a></li>


                   
                </ul>
              </div>
            </nav>

        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Cart"></asp:Label>
            <br />
            <br />
            Yo have Product
            <asp:Label ID="Label2" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/viewbooks.aspx">Continue shopping</asp:HyperLink>
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="342px" OnSelectedIndexChanged="Page_Load" ShowFooter="True" Width="696px">
            <Columns>
                <asp:BoundField HeaderText="S.No" />
                <asp:BoundField DataField="book_name" HeaderText="Book Name" />
                <asp:BoundField DataField="book_author" HeaderText="Author Name" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Book Image">
                </asp:ImageField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="Total price" />
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <br />
    </form>
</body>
</html>
