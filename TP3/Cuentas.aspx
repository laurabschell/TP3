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
            <h3>&nbsp;<asp:TextBox placeholder="Descripcion" ID="TextBox1" runat="server" Width="334px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" Width="244px" />
                &nbsp;</h3>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSourceABMcuentas" DataTextField="descripcion" DataValueField="id" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" AutoPostBack="True" Height="133px" Width="193px"></asp:ListBox>
            </p>
            <p>
                <asp:TextBox ID="TextBox2" runat="server" Width="324px" ></asp:TextBox>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Baja" Width="146px" />
            &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Modificar" Width="176px" />
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceABMcuentas" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" DeleteCommand="DELETE FROM [Cuentas] WHERE [id] = @id" InsertCommand="INSERT INTO [Cuentas] ([descripcion]) VALUES (@descripcion)" SelectCommand="SELECT * FROM [Cuentas]" UpdateCommand="UPDATE [Cuentas] SET [descripcion] = @descripcion WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="ListBox1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="descripcion" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="descripcion" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="ListBox1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSourceListBoxSelectWhere" runat="server" ConnectionString="<%$ ConnectionStrings:TP3ConnectionString %>" SelectCommand="SELECT * FROM [Cuentas] WHERE ([id] = @id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ListBox1" Name="id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>

        </div>
    </form>
</body>
</html>
