<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpass.aspx.cs" Inherits="Main_project.forgotpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <fieldset>
             <legend>Forgot Password</legend> 
            <asp:Label ID="lblEmail" runat="server" Text="Email Address: "/>
             <asp:TextBox ID="txtEmail" runat="server"/>
      
           <asp:RequiredFieldValidator ID="RV1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter EmailID" SetFocusOnError="True">*
           </asp:RequiredFieldValidator>
    
           <asp:Button ID="btnPass" runat="server" Text="Submit" OnClick="btnPass_Click" />
     
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error"/>
                           
            <asp:Label ID="lblMessage" runat="server" Text=""/>
               <br />
               <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Black" NavigateUrl="~/loginform.aspx">Login page</asp:HyperLink>
          </fieldset>
        </div>
    </form>
</body>
</html>
