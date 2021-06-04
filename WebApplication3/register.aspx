<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication3.rgistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .style1
        {
            height: 56px;
        }
        .style2
        {
            height: 68px;
        }
        .style3
        {
            height: 67px;
        }
        .style5
        {
            height: 55px;
        }
        .style6
        {
            height: 62px;
        }
        .style7
        {
            height: 109px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" 
            style="width: 750px; height: 744px; background-color: #5f98f3" >
            <tr>
                <td colspan="2"align=center class="style2">
                   <h2>Регистрация</h2> &nbsp;</td>
               
            </tr>
            <tr>
                <td class="style5">
                    <b>Имя:</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="48px" Width="228px" 
                        style="margin-right: 7px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Введите Имя" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Только буквы" ForeColor="Red" 
                        ValidationExpression="^[A-zА-я]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="font-weight: 700" class="style6">
                    <b>Фамилия:</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox2" runat="server" Height="48px" Width="228px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Введите Фамилию" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Только буквы" ForeColor="Red" 
                        ValidationExpression="^[A-zА-я]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                   <b>Email_ID:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="42px" Width="228px" 
                        TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Email_ID Ошибка" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-weight: 700" class="style3">
                    Пол:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="226px">
                        <asp:ListItem>Выберите Пол</asp:ListItem>
                        <asp:ListItem>Муж</asp:ListItem>
                        <asp:ListItem>Жен</asp:ListItem>
                        <asp:ListItem>Другое</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Выберите Пол" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                   <b>Aдрес:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox4" runat="server" Height="48px" Width="228px" 
                        TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Введите Адресс" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <b>Номер Телефона:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="48px" Width="228px" 
                        TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="ошибка номер телефона" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Введите Номер телефона" ForeColor="Red" 
                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <b>Пароль:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Height="48px" Width="228px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Ошибка пароля" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <b>Подтверждения Пароля:</b></td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Height="48px" Width="228px" 
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Ошибка подтверждение пароля" 
                        ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                        ErrorMessage="Password not matched" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td  align="center" colspan"2" class="style7">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Зарегистрирован?</asp:HyperLink>
                </td>
                <td class="style7">
                    <asp:Button ID="Button1" runat="server" Text="Register" Height="57px" 
                        Width="257px" Font-Bold="True" Font-Size="Larger" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
            <td colspan"2">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"></asp:ValidationSummary>
            </td>
            </tr>
            
                <td colspan"2" class="style3">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
              
        </table>
    
    </div>
    </form>
</body>
</html>
