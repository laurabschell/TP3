using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3
{
    public partial class Registros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int result = SqlDataSourceABMregistros.Insert();
            if (result > 0) 
            {
                if (result > 0)
                {
                    Label1.Text = "Se agrego el registro contable.";
                    TextBox1.Text = string.Empty;
                    CheckBox1.Checked = false;
                }
                else
                {
                    Label1.Text = "No se agregaron registros.";
                }
            }
        }

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    int result = SqlDataSourceABMregistros.Delete();
        //    if (result > 0)
        //    {
        //        if (result > 0)
        //        {
        //            Label2.Text = "Se elimino el registro contable.";
        //            TextBox1.Text = string.Empty;
        //            CheckBox1.Checked = false;
        //        }
        //        else
        //        {
        //            Label2.Text = "No se eliminaron registros.";
        //        }
        //    }
        //}

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    int result = SqlDataSourceABMregistros.Update();
        //    if (result > 0)
        //    {
        //        if (result > 0)
        //        {
        //            Label2.Text = "Se actualizo el registro contable.";
        //        }
        //        else
        //        {
        //            Label2.Text = "No se actualizo registros.";
        //        }
        //    }
        //}

    }
}