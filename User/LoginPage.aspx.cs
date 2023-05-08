using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuggyWebApp.App_Code;

namespace BuggyWebApp.User
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        UserLoginPage obj = new UserLoginPage();
        protected void Button1_Click(object sender, EventArgs e)
        {
            obj.username = txtusername.Text;
            obj.password = txtpass.Text;
            obj.verifylogin();
            if (obj.Pan != "")
            {
                Session["userid"] = obj.userid;
                Session["pan"] = obj.Pan;
                Session["acc"] = obj.Accno;
                Response.Redirect("~/User/UserAccessingPage.aspx");
            }
            else
            {
                lblsuccess.Text = "Invalid User";
            }

        }
    }
}