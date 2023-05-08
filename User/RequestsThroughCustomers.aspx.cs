using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuggyWebApp.App_Code;

namespace BuggyWebApp.User
{
    public partial class RequestsThroughCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int a = 1; a <= 31; a++)
            {
                DropDownList1.Items.Add(a.ToString("00"));
                DropDownList3.Items.Add((DateTime.Now.Year - a - 15).ToString());
            }
        }

        LossedATM obj = new LossedATM();
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                obj.Accno = Convert.ToInt32(txtaccno.Text);
                obj.Atmno = Convert.ToInt32(txtatmno.Text);
                obj.Passwrd = txtpass.Text;
                obj.Date_of_loss = DropDownList1.SelectedValue + "-" + DropDownList2.SelectedValue + "-" + DropDownList3.SelectedValue;
                obj.Place_of_loss = txtplace.Text;
                obj.Custname = txtcustname.Text;
                int a = obj.lostatm();

                if (a > 0)
                {
                    lblsuccess.Text = "Your ATM will be received at your home within 15 days ";
                }
            }
            catch (Exception ex)
            {

                lblfailure.Text = "Your request is not send till now...Please try again.";
            }
            finally
            {

            }
        }
    }
}