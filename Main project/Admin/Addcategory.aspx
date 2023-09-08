<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addcategory.aspx.cs" Inherits="Main_project.Admin.Addcategory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin add_category</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./dashboard.css" >
    <style>
        .navbar-wrapper{
            width:83.7%;
            background-color:#FF9179;
            float:right;
            height:130px;
            border-radius:30px;
        }

        .wrapper {
            display: flex;
            width: 75%;
            align-items: stretch;
        }
        h2{
            color:black;
            font-size:40px;
           
        }
        #sidebar {
            min-width: 250px;
            max-width: 250px;
            min-height: 100vh;
        }

         #sidebar.active {
                margin-left: -250px;
         }

         a[data-toggle="collapse"] {
            position: relative;
          }

         .dropdown-toggle::after {
            display: block;
            position: absolute;
            top: 50%;
            right: 20px;
            transform: translateY(-50%);
          }
         @import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";


        body {
            
            font-family: 'Poppins', sans-serif;
            background: #fafafa;
            font-size: 11px;
        }

        p {
            font-family: 'Poppins', sans-serif;
            font-size: 2em;
            font-weight: 300;
            line-height: 1.7em;
            color: #999;
        }

        a, a:hover, a:focus {
            color: inherit;
            text-decoration: none;
            transition: all 0.3s;
        }

        #sidebar {
            /* don't forget to add all the previously mentioned styles here too */
            background: #0e1b51;
            color: #fff;
            transition: all 0.3s;
        }

        #sidebar .sidebar-header {
            padding: 20px;
            background: #0e1b51;
        }

        #sidebar ul.components {
            padding: 20px 0;
            border-bottom: 1px solid #47748b;
        }

        #sidebar ul p {
            color: #fff;
            padding: 10px;
        }

        #sidebar ul li a {
            padding: 10px;
            font-size: 2.1em;
            display: block;
        }
        #sidebar ul li a:hover {
            color: #7386D5;
            background: #fff;
        }

        #sidebar ul li.active > a, a[aria-expanded="true"] {
            color: #fff;
            background: #6d7fcc;
        }
        ul ul a {
            font-size: 0.9em !important;
            padding-left: 30px !important;
            background: #6d7fcc;
        }
        #category{
            text-align:center;
            font-size:30px;
            margin-top:-520px;

        }
        #GridView1{
            margin-left:250px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
<div>
             <%-- logo --%>
            <div class="navbar-wrapper">
                <!-- Page Content -->
    <div id="content">
           <nav class="navbar navbar-wrapper" >
               <div class="container-fluid">

                  <h2 >Welcome admin</h2>

        </div>
    </nav>
    </div>

</div>

    <!-- Sidebar -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <img src="Bookstore.png" />
            
        </div>

        <ul class="list-unstyled components">
            <li>
                <a href="AdminHome.aspx">Home</a>
            </li>
            <li>
                <a href="Addcategory.aspx">Category</a>
            </li>
            <li>
                <a href="Add_book.aspx">Books</a>
            </li>
            
            <li>
                <a href="#">Quantity</a>
            </li>
            <li>
                <a href="#">Orders</a>
            </li>
            <li>
                <a href="#">Logout</a>
            </li>
        </ul>
    </nav>

            <div id="category">
                <asp:Label ID="Label1" runat="server" Text="Add Category"></asp:Label>
                <br />

                <asp:TextBox ID="txtCategory"  runat="server"></asp:TextBox>
                <br />

                <asp:Button ID="btnAdd" CssClass="btn btn-success" runat="server" Text="Button" OnClick="btnAdd_Click" />
            </div>
           <br />
            <br />

            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <div class="form-group">
                        <asp:GridView ID="GridView1" runat="server" Width="760px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CID" DataSourceID="SqlDataSource1" >
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
                                <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
                            </Columns>
                        </asp:GridView>

                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userregistcon %>" DeleteCommand="DELETE FROM [Category] WHERE [CID] = @CID" InsertCommand="INSERT INTO [Category] ([CName]) VALUES (@CName)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CName] = @CName WHERE [CID] = @CID">
                        <DeleteParameters>
                            <asp:Parameter Name="CID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CName" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CName" Type="String" />
                            <asp:Parameter Name="CID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>

                <br />
                <br />
            </div>

            
                

        </div>
    </form>
</body>
</html>
