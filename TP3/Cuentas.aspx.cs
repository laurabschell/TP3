using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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
                TextBox2.Text = "";
            }
            else
            {
                Label1.Text = "No se borraron cuentas.";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            // Modificacion
            int result = SqlDataSourceABMcuentas.Update();

            if (result > 0)
            {
                Label1.Text = "Se actualizo la cuenta.";
                TextBox2.Text = "";
            }
            else
            {
                Label1.Text = "No se actualizaron cuentas.";
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataSourceListBoxSelectWhere.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader reader = (SqlDataReader)SqlDataSourceListBoxSelectWhere.Select(DataSourceSelectArguments.Empty);
            if (reader.Read())
            {
                TextBox2.Text = reader["descripcion"].ToString();
            }
        }

    }
}