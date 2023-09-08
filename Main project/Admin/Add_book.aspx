<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_book.aspx.cs" Inherits="Main_project.Admin.AddItem" %>

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
        #Label5{
            font-size:30px;
            text-align:center;
            margin-left:570px;
            
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
    
    
   

          <div id="additems">
              <asp:Label ID="Label1" runat="server" Text="Book Name"></asp:Label>
              <br />
              <asp:TextBox ID="book_name" runat="server" BorderStyle="Solid" Width="380px"></asp:TextBox>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="book_name" ErrorMessage="Enter Book name" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
              <br />
              
               <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
              <br />
              <asp:TextBox ID="book_desc" runat="server" BorderStyle="Solid" Width="380px"></asp:TextBox>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="book_desc" ErrorMessage="Enter Book Description" ForeColor="#FF3300"></asp:RequiredFieldValidator>
              <br />
              
               <asp:Label ID="Label3" runat="server" Text="Author"></asp:Label>
              <br />
              <asp:TextBox ID="book_author" runat="server" BorderStyle="Double" Width="380px"></asp:TextBox>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="book_author" ErrorMessage="Enter Book Author" ForeColor="#FF3300"></asp:RequiredFieldValidator>
              <br />

               <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
              <br />
              <asp:TextBox ID="price" runat="server" BorderStyle="Double" Width="380px"></asp:TextBox>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="price" ErrorMessage="Enter Book Price" ForeColor="#FF3300"></asp:RequiredFieldValidator>
              <br />
              
               <asp:Label ID="Label4" runat="server" Text="Image"></asp:Label> 
              <asp:FileUpload ID="image" runat="server" />
             
              
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="image" ErrorMessage="Add Image" ForeColor="#FF3300"></asp:RequiredFieldValidator>
             
              
              <br />

              <asp:Label ID="Label8" runat="server" Text="Quantity"></asp:Label>
              <br />
              <asp:TextBox ID="quantity" runat="server" BorderStyle="Double" Width="380px"></asp:TextBox>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="quantity" ErrorMessage="Enter Book Quantity" ForeColor="#FF3300"></asp:RequiredFieldValidator>
              <br />
              


              <asp:Button ID="btnAddItem" CssClass="btn btn-success" runat="server" Text="ADD ITEM" OnClick="btnAddItem_Click" />
          </div>


            <div class="row">
                <div class="col-sm-12">
                    <div class="table">
                        <asp:Label ID="Label5" runat="server" Text="Books Data" Font-Underline="True"></asp:Label>
                        <asp:GridView ID="GridView1" CssClass="table" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="0" DataKeyNames="Book_id" DataSourceID="SqlDataSource1" Width="301px" Height="16px">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                              
                                <asp:BoundField DataField="Book_id" HeaderText="Book_id"  />
                                <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                <asp:BoundField DataField="book_desc" HeaderText="book_desc" SortExpression="book_desc" />
                                <asp:BoundField DataField="book_author" HeaderText="book_author" SortExpression="book_author" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                            </Columns>

                            <EditRowStyle BackColor="#0033CC" />

                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userregistcon %>" DeleteCommand="DELETE FROM [addnew_books] WHERE [Book_id] = @Book_id" InsertCommand="INSERT INTO [addnew_books] ([book_name], [book_desc], [book_author], [price], [image], [quantity]) VALUES (@book_name, @book_desc, @book_author, @price, @image, @quantity)" SelectCommand="SELECT * FROM [addnew_books]" UpdateCommand="UPDATE [addnew_books] SET [book_name] = @book_name, [book_desc] = @book_desc, [book_author] = @book_author, [price] = @price, [image] = @image, [quantity] = @quantity WHERE [Book_id] = @Book_id">
                            <DeleteParameters>
                                <asp:Parameter Name="Book_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="book_name" Type="String" />
                                <asp:Parameter Name="book_desc" Type="String" />
                                <asp:Parameter Name="book_author" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="quantity" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="book_name" Type="String" />
                                <asp:Parameter Name="book_desc" Type="String" />
                                <asp:Parameter Name="book_author" Type="String" />
                                <asp:Parameter Name="price" Type="Int32" />
                                <asp:Parameter Name="image" Type="String" />
                                <asp:Parameter Name="quantity" Type="Int32" />
                                <asp:Parameter Name="Book_id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                    </div>

                </div>
            </div>

            

            
                
            </div>
      
    </form>
</body>
</html>
