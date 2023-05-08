using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuggyWebApp.App_Code;


namespace BuggyWebApp.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        AdminLogIn obj = new AdminLogIn();
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.username = txtusername.Text;
            obj.password = txtpass.Text;
            obj.verifylogin();
            if (obj.userid > 0)
            {

                Session["userid"] = obj.userid;
                Response.Redirect("~/Admin/Form.aspx");
            }
            else
            {
                Label3.Text = "Invalid User!!!!.Enter the correct username and password.";

            }
        }
    }
}