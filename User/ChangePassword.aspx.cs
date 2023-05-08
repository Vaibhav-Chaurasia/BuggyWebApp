using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuggyWebApp.App_Code;

namespace BuggyWebApp.User
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        ChangePass obj = new ChangePass();
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                obj.Username = txtusername.Text;
                obj.Passwrd = txtpass.Text;
                obj.Newpassword = txtnewpass.Text;
                int a = obj.passchange();

                if (a > 0)
                {
                    lblsuccess.Text = "Congrats.... Your Password has been changed successfully ";
                }
            }
            catch (Exception ex)
            {

                lblfailure.Text = "Your password doesn't changed yet...Please try again";
            }
            finally
            {

            }
        }
    }
}