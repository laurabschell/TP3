using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3
{
    public partial class Cuentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // ALTA
            SqlDataSourceABMcuentas.InsertParameters["descripcion"].DefaultValue = TextBox1.Text;
            int result = SqlDataSourceABMcuentas.Insert();
            if (result > 0)
            {
                Label1.Text = "Se agrego la cuenta.";
                TextBox1.Text = string.Empty; TextBox1.Text = string.Empty;
            }
            else
            {
                Label1.Text = "No se agregaron cuentas.";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // BAJA
            int result = SqlDataSourceABMcuentas.Delete();
            if (result > 0)
            {
                Label1.Text = "Se borro la cuenta.";
            }
            else
            {
                Label1.Text = "No se borraron cuentas.";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Modificacion
            SqlDataSourceABMcuentas.UpdateParameters["idCuenta"].DefaultValue = DropDownList1.SelectedValue;
            int result = SqlDataSourceABMcuentas.Update();

            if (result > 0)
            {
                Label1.Text = "Se actualizo la cuenta.";
            }
            else
            {
                Label1.Text = "No se actualizaron cuentas.";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataView dv = (DataView)SqlDataSourceSelectWhere.Select(DataSourceSelectArguments.Empty);
            if (dv != null && dv.Count > 0)
            {
                DataRowView row = dv[0];
                TextBox1.Text = row["descripcion"].ToString();
                DropDownList1.SelectedValue = row["idCuenta"].ToString();
            }
        }
    }
}