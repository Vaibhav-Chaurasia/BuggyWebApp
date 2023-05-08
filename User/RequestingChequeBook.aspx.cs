using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuggyWebApp.App_Code;

namespace BuggyWebApp.User
{
    public partial class RequestingChequeBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        checkbook obj = new checkbook();
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                obj.Accountno = Convert.ToInt64(txtaccno.Text);
                obj.Customername = txtcustname.Text;
                obj.Noofcheckbook = Convert.ToInt32(txtnoofchequebook.Text);
                obj.Noofpages = Convert.ToInt32(txtnoofpages.Text);
                int a = obj.ckkbookrequest();

                if (a > 0)
                {
                    lblsuccess.Text = "Your check book request successfully done.. It has been send to you by post.";
                }
            }
            catch (Exception ex)
            {

                lblfailure.Text = ("Your request not has been accepted...Please try again");
            }
            finally
            {

            }
        }
    }
}