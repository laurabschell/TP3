<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registros.aspx.cs" Inherits="TP3.Registros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Menu</asp:HyperLink>
            </h3>
            <h3>Gestion de Registros</h3>
            <p>Cuenta
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceDropDownListCuentas" DataTextField="descripcion" DataValueField="idCuenta" Width="396px">
                </asp:DropDownList>
            </p>
            <p>Monto <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
            </p>
            <p>Tipo
                <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" Width="206px" />
&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" Width="244px" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceABMregistros" DataTextField="monto" DataValueField="id" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="316px">
                </asp:DropDownList>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Baja" Width="137px" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceABMregistros" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" SelectCommand="SELECT * FROM [RegistrosContables]">
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceDropDownListCuentas" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" SelectCommand="SELECT * FROM [Cuentas]"></asp:SqlDataSource>
            </p>
            <p>&nbsp;</p>
        </div>
    </form>
</body>
</html>
