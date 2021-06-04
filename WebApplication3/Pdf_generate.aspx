<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pdf_generate.aspx.cs" Inherits="WebApplication3.Pdf_generate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 65px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Скачать Чек" 
            BackColor="Silver" Font-Bold="True" Font-Size="X-Large" Height="49px" 
            onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            Font-Size="X-Large" NavigateUrl="~/Default.aspx">Домой</asp:HyperLink>
        <asp:Panel ID="Panel1" runat="server">
        <table border="1">
        <tr>
        <td style="text-align:center">
        <h2 style="text-align:center"> Retail invoice</h2> 
         </td>
        </tr>
                <tr>
        <td>
            Order №:
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br /><br />
            Order Date:
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
                <tr>
        <td>
        <table>
        <tr>
        <td class="auto-style1">
            Buyer&#39;s Address <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style1">
            Seller&#39;s Address<br /> Ekaterinburg,Mira 28,INMiT,kafedra TIM
        </td>
        </tr>
        </table>
        </td>
        </tr>
                <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                Width="1000px">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sno">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="productid" HeaderText="ID Product">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="productname" HeaderText="Product name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
        </td>
        </tr>
                <tr>
        <td>
            Total Amount:
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
        </tr>
        <tr>
       
         <td align="center">This invoice is computer generated</td>
        </tr>
        </table>
        
        </asp:Panel>
    </div>
    </form>
</body>
</html>
