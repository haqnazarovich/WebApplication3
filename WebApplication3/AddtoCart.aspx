<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddtoCart.aspx.cs" Inherits="WebApplication3.AddtoCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin: 0 auto;>
    <h2 style="text-decoration: underline overline blink; color:#5f98f3">  Выбранные вами продукты</h2>
    <br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            Font-Names="Colonna MT" Font-Size="X-Large" NavigateUrl="~/Default.aspx">Продожить Покупки</asp:HyperLink>
            <br /><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#FF6699" BorderColor="#333333" BorderWidth="5px" 
            EmptyDataText="Вы не добавили продукта в корзину" Font-Bold="True" 
            Height="257px" ShowFooter="True" Width="1100px" 
            onrowdeleting="GridView1_RowDeleting" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="№">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pid" HeaderText="ID Продукта">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="pimage" HeaderText="Фотография Продукта">
                    <ControlStyle Height="300px" Width="340px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="pname" HeaderText="Название Продукта">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pprice" HeaderText="Цена">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pquantity" HeaderText="Количество">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ptotalprice" HeaderText="Стоимость">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#6666FF" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="DarkOrchid" ForeColor="White" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Купить" BackColor="#FF6699" 
            BorderColor="#0A2C2A" BorderStyle="Ridge" Font-Bold="True" Font-Size="Large" 
            Height="46px" onclick="Button1_Click" Width="135px" />
    </div>
    </form>
</body>
</html>
