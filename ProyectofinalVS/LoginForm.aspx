<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ProyectofinalVS.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
  
</head>
<body  >
  <b style="background-color #FFFF">Login webpage</b>
    <form id="form1" runat="server">
        <div>
            Username&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="usernametxt" runat="server" Height="22px"></asp:TextBox>
            <br />
            <br />
            Password&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="passwordtxt" runat="server" Width="123px"></asp:TextBox>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Loginbutton" runat="server" Text="Login" OnClick="Loginbutton_Click" style="height: 26px" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="Datasource_login">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Datasource_login" runat="server" ConnectionString="<%$ ConnectionStrings:ProyectofinalDBConnectionString %>" SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
    </form>
</body>
</html>
