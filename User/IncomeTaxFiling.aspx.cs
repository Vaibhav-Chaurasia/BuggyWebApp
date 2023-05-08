using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuggyWebApp.User
{
    public partial class IncomeTaxFiling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            radBtnOthers.Checked = true;
            chkBoxTuitionFee.Checked = true;
            chkBoxPPF.Enabled = false;
            chkBoxPPF.Checked = true;

            for (int a = 1; a <= 31; a++)
            {
                DropDownList1.Items.Add(a.ToString("00"));
                DropDownList3.Items.Add((DateTime.Now.Year).ToString());
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string message = "Errrorr!!!";
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }
    }
}