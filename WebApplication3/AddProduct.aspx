<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WebApplication3.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="height:510px">
<table style="width:700px; height:390px; background-color:#5f98f3;" align="center">
<tr>
<td align="center" width="50%" colspan="2">
<h1 style="width: 417px">
    Добавление Продукта</h1>
</td>
</tr>
<tr>
<td align="center" width="50%" colspan="2">
<h3> 
    ID Продукта:</h3>
</td>
<td width="50%">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center" width="50%" colspan="2">
<h3>
    Название Продукта:</h3>
</td>
<td width="50%">
  <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center" width="50%" colspan="2">
<h3>
    Доска продукта:</h3>

</td>
<td width="50%">
  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center" width="50%" colspan="2">
<h3> Фотография:</h3>
</td>
<td  width="50%" >
    <asp:FileUpload ID="FileUpload1" runat="server" />
</td>
</tr>
<tr>
<td align="center" width="50%" colspan="2">
<h3> 
    Цена Продукта:</h3>
    <hr style="height: -8px; width: 354px; margin-bottom: 0px; margin-top: 0px;" />
</td>
<td  width="50%">
  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td align="center" width="50%" colspan="2">
    <asp:Button ID="Button1" runat="server" Text="Добавить" Font-Bold="True" 
        ForeColor="Black" Height="36px" onclick="Button1_Click" Width="88px" />
</td>
</tr>
<tr>
<td align="center" width="50%" colspan="2">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</td>
</tr>
</table>
</div>

</asp:Content>
