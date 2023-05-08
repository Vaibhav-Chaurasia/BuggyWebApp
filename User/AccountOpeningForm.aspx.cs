using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuggyWebApp.App_Code;

namespace BuggyWebApp.User
{
    public partial class AccountOpeningForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
                con.Open();
                string cmdstr = "Select count(*) from CustomerDetails where Panno='" + txtpanno + "'";
                SqlCommand userexist = new SqlCommand(cmdstr, con);
                int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    lblpanno.Text = "User Name Already Exist...!!<br/>Please Choose Another User Name";
                }

                //
                for (int a = 1; a <= 31; a++)
                {
                    DropDownList1.Items.Add(a.ToString("00"));
                    DropDownList3.Items.Add((DateTime.Now.Year - a).ToString());
                    DropDownList4.Items.Add(a.ToString("00"));
                    DropDownList6.Items.Add((DateTime.Now.Year).ToString());
                }
            }
        }

        AccOpeningForm obj = new AccOpeningForm();
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                obj.Salutation = ddlsal.SelectedItem.ToString();
                obj.Custname = txtcustname.Text;
                obj.Dob = DropDownList1.SelectedValue + "-" + DropDownList2.SelectedValue + "-" + DropDownList3.SelectedValue;
                obj.Mothername = txtmomname.Text;
                obj.Annincome = Convert.ToInt32(ddlincome.SelectedValue);
                obj.Resstatus = ddlresidence.SelectedValue.ToString();
                obj.Yrsatres = ddlresyr.SelectedItem.ToString();
                obj.Gender = ddlgender.SelectedItem.ToString();
                obj.Marstatus = ddlmarital.SelectedItem.ToString();
                obj.Panno = txtpanno.Text;
                obj.Addr = txtadd.Text;
                obj.State = ddlstate.SelectedItem.ToString();
                obj.City = txtcity.Text;
                obj.Telnor = Convert.ToInt64(txttelnor.Text);
                obj.Telnom = Convert.ToInt64(txttelnom.Text);
                obj.Email = txtemail.Text;
                obj.Offadd = txtoffadd.Text;
                obj.Offtelno = Convert.ToInt64(txtofftelno.Text);
                obj.Faxno = Convert.ToInt64(txtfax.Text);
                obj.Edu = ddledu.SelectedItem.ToString();
                obj.Nomname = txtnomname.Text;
                obj.Nomdob = DropDownList4.SelectedValue + "-" + DropDownList5.SelectedValue + "-" + DropDownList6.SelectedValue;
                obj.Relation = txtrelation.Text;
                obj.Nomrestype = txtnomadd.Text;
                obj.Addproof = ddladdproof.SelectedItem.ToString();
                obj.Acctype = ddlacctype.SelectedItem.ToString();


                int a = obj.custdetails();

                if (a > 0)
                {
                    Response.Redirect("~/User/Accopen.aspx");

                }
            }
            catch (Exception ex)
            {

                lblfailure.Text = "Your account has not been opened yet..Please check the Details filled by you again..";
            }
            finally
            {

            }
        }
    }
}
