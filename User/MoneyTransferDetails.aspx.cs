using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BuggyWebApp.App_Code;

namespace BuggyWebApp.User
{
    public partial class MoneyTransferDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("select * from MoneyTransferDetails where Accno = ( select Accno from VerificationOfAccount where panno = '" + Session["pan"].ToString() + "')", con);
            DataSet dt = new DataSet();

            da.Fill(dt);

            GridView1.DataSource = dt.Tables[0];
            GridView1.DataBind();
        }
    }
}