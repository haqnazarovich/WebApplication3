<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="WebApplication3.PlaceOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 735px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" style="margin-top:50px; width:531px; hight:563px" bgcolor="DarkCyan">
    <tr>
    <td colspan="2" align="center" style="vertical-align:top">
        <asp:Label ID="Label1" runat="server" Text="Детали Карты" Font-Bold="True" 
            Font-Size="XX-Large" ForeColor="White"></asp:Label>
    </td>
    </tr>
    <tr>
    <td align="center" style="vertical-align:top" class="style1">
        <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" BorderWidth="2px" 
            Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" placeholder="Имя"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Введите Имя" ControlToValidate="TextBox1" 
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Имя должен состоять из букв без символов" ControlToValidate="TextBox1" 
            ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
    </td>
    <td align="center" style="vertical-align:top">
    <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" BorderWidth="2px" 
            Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" placeholder="Фамилия"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ErrorMessage="Введите Фамилию" ControlToValidate="TextBox2" 
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Имя должен состоять из букв без символов" ControlToValidate="TextBox2" 
            ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Image ID="Image1" runat="server" BorderColor="Black" BorderWidth="2px" 
            ImageUrl="~/images/logo_1.png" Width="438px" />
    </td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Label ID="Label2" runat="server" Text="Номер Карты" Font-Bold="True" 
            Font-Size="Large" ForeColor="White"></asp:Label>
    </td>
    </tr>
    <tr>
    <td colspan="2" align="center" style="vertical-align:top">
    <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" BorderWidth="2px" 
            Font-Bold="True" Font-Size="Medium" Height="44px" Width="442px" placeholder="16 Digits"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ErrorMessage="Вы неправильно ввели номер каты" ControlToValidate="TextBox3" 
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="Номер карты должен состоять из 16 цифр" ControlToValidate="TextBox3" 
            ForeColor="Red" ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr>
         <td align="center" class="style1">
         <asp:Label ID="Label3" runat="server" Text="Срок действия карты" Font-Bold="True" 
            Font-Size="Large" ForeColor="White"></asp:Label>
         </td>
         <td align"center">
         <asp:Label ID="Label4" runat="server" Text="CVV" Font-Bold="True" 
            Font-Size="Large" ForeColor="White"></asp:Label>
         </td>
    </tr>
     <tr>
         <td align"center" style="vertical-align:top" class="style1">
         <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" BorderWidth="2px" 
            Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" placeholder="MM/YY(например:061996)"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ErrorMessage="Ошибка срока действия карты" ControlToValidate="TextBox4" 
            ForeColor="Red">*</asp:RequiredFieldValidator>
         </td>
         <td align"center" style="vertical-align:top">
           <asp:TextBox ID="TextBox5" runat="server" BorderColor="Black" BorderWidth="2px" 
            Font-Bold="True" Font-Size="Medium" Height="44px" Width="188px" placeholder="3 Цифры"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ErrorMessage="CVV is empty" ControlToValidate="TextBox5" 
            ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ErrorMessage="CVV код должен состоять из 3 цифр" ControlToValidate="TextBox5" 
            ForeColor="Red" ValidationExpression="[0-9]{3}">*</asp:RegularExpressionValidator>
         </td>
    </tr>
     <tr>
    <td colspan="2" align"center" style="vertical-align:top">
      <asp:TextBox ID="TextBox6" runat="server" BorderColor="Black" BorderWidth="2px" 
            Font-Bold="True" Font-Size="X-Large" Height="50px" Width="442px" placeholder="Billing Address" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Ошибка Адреса" ControlToValidate="TextBox6" 
            ForeColor="Red">*</asp:RequiredFieldValidator>
       
    </td>
    </tr>
     <tr>
    <td olspan="2" align"center" class="style1">
   
        <asp:Button ID="Button1" runat="server" Text="Купить" BackColor="Black" 
            BorderColor="White" BorderWidth="2px" Font-Bold="True" Font-Size="Large" 
            ForeColor="White" Height="44px" Width="188px" onclick="Button1_Click" />
            
    </td>
    </tr>
    <tr>
    <td colspan="2">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
            ForeColor="Red" HeaderText="Следите за ошибками" />
    </td>
    </tr>
    <tr>
    <td olspan="2" class="style1" style="margin-left: 240px">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddtoCart.aspx">Предыдушая страница</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
            NavigateUrl="~/Default.aspx">Домой</asp:HyperLink>
    </td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
