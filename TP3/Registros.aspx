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
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceDropDownListCuentas" DataTextField="descripcion" DataValueField="id" Width="396px">
                </asp:DropDownList>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" placeholder="Monto" TextMode="Number"></asp:TextBox>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Tipo" />
            &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" Width="186px" />
&nbsp;</p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSourceABMregistros" ForeColor="#333333" GridLines="None" style="margin-right: 3px" Width="789px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="monto" HeaderText="Monto" SortExpression="monto" />
                        <asp:CheckBoxField DataField="tipo" HeaderText="Tipo" SortExpression="tipo" />
                        <asp:BoundField DataField="idCuenta" SortExpression="idCuenta" />
                        <asp:BoundField DataField="descripcion" HeaderText="Cuenta" SortExpression="descripcion" />
                        <asp:CommandField ButtonType="Button" CancelText="Cancelar" DeleteText="Eliminar" EditText="Editar" ShowDeleteButton="True" ShowEditButton="True" UpdateText="Actualizar" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceABMregistros" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" DeleteCommand="DELETE FROM [RegistrosContables] WHERE [id] = @id" InsertCommand="INSERT INTO [RegistrosContables] ([idCuenta], [monto], [tipo]) VALUES (@idCuenta, @monto, @tipo)" SelectCommand="SELECT RegistrosContables.id, RegistrosContables.idCuenta, RegistrosContables.monto, RegistrosContables.tipo, Cuentas.descripcion FROM RegistrosContables INNER JOIN Cuentas ON RegistrosContables.idCuenta = Cuentas.id" UpdateCommand="UPDATE [RegistrosContables] SET [idCuenta] = @idCuenta, [monto] = @monto, [tipo] = @tipo WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:Parameter Name="id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="idCuenta" Type="Int32" />
                        <asp:Parameter Name="monto" Type="Int32" />
                        <asp:Parameter Name="tipo" Type="Boolean" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="idCuenta" Type="Int32" />
                        <asp:Parameter Name="monto" Type="Int32" />
                        <asp:Parameter Name="tipo" Type="Boolean" />
                        <asp:Parameter Name="id" Type="Int32" />
                    </UpdateParameters>
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
