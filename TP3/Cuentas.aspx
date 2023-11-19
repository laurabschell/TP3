<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cuentas.aspx.cs" Inherits="TP3.Cuentas" %>

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
            <h3>Gestion de Cuentas</h3>
            <p>Descripcion
                <asp:TextBox ID="TextBox1" runat="server" Width="450px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" Width="110px" />
                &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Modificar" Width="176px" />
            </p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceDropDown" DataTextField="descripcion" DataValueField="idCuenta" Width="559px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Baja" Width="113px" />
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idCuenta" DataSourceID="SqlDataSourceABMcuentas">
                    <Columns>
                        <asp:BoundField DataField="idCuenta" HeaderText="idCuenta" InsertVisible="False" ReadOnly="True" SortExpression="idCuenta" />
                        <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    </Columns>
                </asp:GridView>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceABMcuentas" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" DeleteCommand="DELETE FROM [Cuentas] WHERE [idCuenta] = @idCuenta" InsertCommand="INSERT INTO [Cuentas] ([descripcion]) VALUES (@descripcion)" SelectCommand="SELECT * FROM [Cuentas]" UpdateCommand="UPDATE [Cuentas] SET [descripcion] = @descripcion WHERE [idCuenta] = @idCuenta">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="idCuenta" PropertyName="SelectedValue" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="descripcion" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="descripcion" PropertyName="Text" Type="String" />
                        <asp:Parameter Name="idCuenta" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" SelectCommand="SELECT * FROM [Cuentas]"></asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceSelectWhere" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" SelectCommand="SELECT * FROM [Cuentas] WHERE ([idCuenta] = @idCuenta)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="idCuenta" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>

        </div>
    </form>
</body>
</html>
