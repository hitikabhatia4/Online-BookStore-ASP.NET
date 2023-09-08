<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="Main_project.Admin.feedback" %>

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
       
        #GridView1{
            margin-left:170px;
            margin-right: 0px;
            
        }
        #additems{
            margin-left:300px;
            font-size:20px;
            
           
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
        <%-- logo --%>
        <div class="top_bar">
            <img id="icon" src="Bookstore.png"/>
            
        </div>
        
        
        <%-- navigation --%>
            <nav class="navbar navbar-inverse" style="background-color:black">
              <div class="container-fluid">
                <div class="navbar-header">
      
                </div>
                <ul class="nav navbar-nav">
                  <li><a href="AdminHome.aspx" style="color:white">Home</a></li>
                  <li ><a href="Add_book.aspx" style="color:white">Books</a></li>
                  <li><a href="feedback.aspx" style="color:white">Feedback</a></li>
                </ul>
                
              </div>
            </nav>
    
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="White" Height="90px" Width="380px" BackColor="Black" BorderWidth="0px" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="feedback" HeaderText="feedback" SortExpression="feedback" />
                </Columns>
            </asp:GridView>

            <br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userregistcon %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
        </div>
            </div>
    </form>
</body>
</html>
