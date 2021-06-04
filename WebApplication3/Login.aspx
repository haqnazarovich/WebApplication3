<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .style1
        {
            height: 104px;
        }
        .style2
        {
            width: 50%;
            height: 109px;
        }
        .style3
        {
            height: 109px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <table align="center" 
        style="height: 448px; width: 691px; background-color: #5f98f3;" >
        <tr>
            <td colspan="2"align="center">
                <h2>Страница Входа</h2></td>
           
        </tr>
        <tr>
            <td align="center" style="width:50%">
               <b>Логин:</b></td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" Height="55px" Width="279px" 
                    BackColor="#5F98F3" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                   <b>Пароль:</b></td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" Height="55px" Width="279px" 
                    BackColor="#5F98F3" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" class="style1">
                <asp:Button ID="Button1" runat="server" Height="51px" Text="Вход" 
                    Width="173px" BackColor="#5F98F3" Font-Bold="True" Font-Size="Large" 
                    onclick="Button1_Click" />
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/register.aspx">Не зарегистрирован?</asp:LinkButton>
              </td>
          
        </tr>
        <tr>
            <td >
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx"> Не зарегистрирован?</asp:HyperLink>
              </td>
          
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
