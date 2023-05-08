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
    public partial class SalaryAccountOpen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["def"].ConnectionString);
                con.Open();
                string cmdstr = "Select count(*) from CustomerDetails where Panno='";
                SqlCommand userexist = new SqlCommand(cmdstr, con);
                int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());
                con.Close();

            }
        }

        AccOpeningForm obj = new AccOpeningForm();

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int a = obj.custdetails();

                if (a > 0)
                {
                    Response.Redirect("~/User/Accopen.aspx");

                }
            }
            catch (Exception ex)
            {


            }
            finally
            {

            }
        }
    }
}