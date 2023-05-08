using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using BuggyWebApp.App_Code;

namespace BuggyWebApp.Admin
{
    public partial class AllAccountDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        SqlCommand mySqlUpdate;
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            //// SQL Update Command

            mySqlUpdate = new SqlCommand("update CustomerDetails set Custname=@Custname, DOB=@DOB , Mothername=@Mothername, Annincome=@Annincome, Resstatus=@Resstatus, Yearsatres=@Yearsatres, Gender=@Gender, Maritalstatus=@Maritalstatus, Panno=@Panno, Addr=@Addr, State=@State, City=@City, Telnor=@Telnor, Telnom=@Telnom, Email=@Email, offadd=@offadd, offtelno=@offtelno, faxno=@faxno, edu=@edu, salutation=@salutation, nominename=@nominename, dobs=@dobs, relation=@relation, nomrestype=@nomrestype, addproof=@addproof, Acctype=@Acctype where Panno = @Panno", con);

            mySqlUpdate.CommandType = CommandType.Text;

            // FindControl function used to get the reference to textbox controls
            // placed inside the EditItemTemplate of GridView control
            TextBox txtcustname = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].FindControl("Textbox1");
            TextBox txtdob = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].FindControl("Textbox2");
            TextBox txtmomname = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].FindControl("Textbox3");
            TextBox txtincome = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].FindControl("Textbox4");
            TextBox txtresidence = (TextBox)GridView1.Rows[e.RowIndex].Cells[5].FindControl("Textbox5");
            TextBox txtresyr = (TextBox)GridView1.Rows[e.RowIndex].Cells[6].FindControl("Textbox6");
            TextBox txtgender = (TextBox)GridView1.Rows[e.RowIndex].Cells[7].FindControl("Textbox7");
            TextBox txtmarital = (TextBox)GridView1.Rows[e.RowIndex].Cells[8].FindControl("Textbox25");
            Label txtpanno = (Label)GridView1.Rows[e.RowIndex].Cells[9].FindControl("Label1");
            TextBox txtadd = (TextBox)GridView1.Rows[e.RowIndex].Cells[10].FindControl("Textbox8");
            TextBox txtstate = (TextBox)GridView1.Rows[e.RowIndex].Cells[11].FindControl("Textbox9");
            TextBox txtcity = (TextBox)GridView1.Rows[e.RowIndex].Cells[12].FindControl("Textbox10");
            TextBox txttelnor = (TextBox)GridView1.Rows[e.RowIndex].Cells[13].FindControl("Textbox11");
            TextBox txttelnom = (TextBox)GridView1.Rows[e.RowIndex].Cells[14].FindControl("Textbox12");
            TextBox txtemail = (TextBox)GridView1.Rows[e.RowIndex].Cells[15].FindControl("Textbox13");
            TextBox txtoffadd = (TextBox)GridView1.Rows[e.RowIndex].Cells[16].FindControl("Textbox14");
            TextBox txtofftelno = (TextBox)GridView1.Rows[e.RowIndex].Cells[17].FindControl("Textbox15");
            TextBox txtfax = (TextBox)GridView1.Rows[e.RowIndex].Cells[18].FindControl("Textbox16");
            TextBox txtedu = (TextBox)GridView1.Rows[e.RowIndex].Cells[19].FindControl("Textbox17");
            TextBox txtsal = (TextBox)GridView1.Rows[e.RowIndex].Cells[20].FindControl("Textbox18");
            TextBox txtnomname = (TextBox)GridView1.Rows[e.RowIndex].Cells[21].FindControl("Textbox19");
            TextBox txtdobs = (TextBox)GridView1.Rows[e.RowIndex].Cells[22].FindControl("Textbox20");
            TextBox txtrelation = (TextBox)GridView1.Rows[e.RowIndex].Cells[23].FindControl("Textbox21");
            TextBox txtnomrestype = (TextBox)GridView1.Rows[e.RowIndex].Cells[24].FindControl("Textbox22");
            TextBox txtaddproof = (TextBox)GridView1.Rows[e.RowIndex].Cells[25].FindControl("Textbox23");
            TextBox txtacctype = (TextBox)GridView1.Rows[e.RowIndex].Cells[26].FindControl("Textbox24");


            // parameters passed to the SQL Update Command
            mySqlUpdate.Parameters.Add("@Custname", SqlDbType.VarChar).Value = txtcustname.Text;
            mySqlUpdate.Parameters.Add("@DOB", SqlDbType.VarChar).Value = txtdob.Text;
            mySqlUpdate.Parameters.Add("@Mothername", SqlDbType.VarChar).Value = txtmomname.Text;
            mySqlUpdate.Parameters.Add("@Annincome", SqlDbType.Int).Value = Convert.ToInt32(txtincome.Text);
            mySqlUpdate.Parameters.Add("@Resstatus", SqlDbType.VarChar).Value = txtresidence.Text;
            mySqlUpdate.Parameters.Add("@Yearsatres", SqlDbType.VarChar).Value = txtresyr.Text;
            mySqlUpdate.Parameters.Add("@Gender", SqlDbType.VarChar).Value = txtgender.Text;
            mySqlUpdate.Parameters.Add("@Maritalstatus", SqlDbType.VarChar).Value = txtmarital.Text;
            mySqlUpdate.Parameters.Add("@Panno", SqlDbType.VarChar).Value = txtpanno.Text;
            mySqlUpdate.Parameters.Add("@Addr", SqlDbType.VarChar).Value = txtadd.Text;
            mySqlUpdate.Parameters.Add("@State", SqlDbType.VarChar).Value = txtstate.Text;
            mySqlUpdate.Parameters.Add("@City", SqlDbType.VarChar).Value = txtcity.Text;
            mySqlUpdate.Parameters.Add("@Telnor", SqlDbType.BigInt).Value = Convert.ToInt64(txttelnor.Text);
            mySqlUpdate.Parameters.Add("@Telnom", SqlDbType.BigInt).Value = Convert.ToInt64(txttelnom.Text);
            mySqlUpdate.Parameters.Add("@Email", SqlDbType.VarChar).Value = txtemail.Text;
            mySqlUpdate.Parameters.Add("@offadd", SqlDbType.VarChar).Value = txtoffadd.Text;
            mySqlUpdate.Parameters.Add("@offtelno", SqlDbType.BigInt).Value = Convert.ToInt64(txtofftelno.Text);
            mySqlUpdate.Parameters.Add("@faxno", SqlDbType.BigInt).Value = Convert.ToInt64(txtfax.Text);
            mySqlUpdate.Parameters.Add("@edu", SqlDbType.VarChar).Value = txtedu.Text;
            mySqlUpdate.Parameters.Add("@salutation", SqlDbType.VarChar).Value = txtsal.Text;
            mySqlUpdate.Parameters.Add("@nominename", SqlDbType.VarChar).Value = txtnomname.Text;
            mySqlUpdate.Parameters.Add("@dobs", SqlDbType.VarChar).Value = txtdobs.Text;
            mySqlUpdate.Parameters.Add("@relation", SqlDbType.VarChar).Value = txtrelation.Text;
            mySqlUpdate.Parameters.Add("@nomrestype", SqlDbType.VarChar).Value = txtnomrestype.Text;
            mySqlUpdate.Parameters.Add("@addproof", SqlDbType.VarChar).Value = txtaddproof.Text;
            mySqlUpdate.Parameters.Add("@Acctype", SqlDbType.VarChar).Value = txtacctype.Text;

            SqlDataSource1.UpdateCommand = mySqlUpdate.CommandText;

            con.Open();
            mySqlUpdate.ExecuteNonQuery();
            con.Close();

        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            Control ctrl = (Control)Session["ctrl"];
            PrintHelper.PrintWebControl(ctrl);
        }
    }
}