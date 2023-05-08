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
    public partial class MoneyTransfer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Fundtransfer obj = new Fundtransfer();
        SqlConnection con;
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
                //con.Open();


                //s1
                string sqlcmd = "Select balance from MoneyTransferDetails where Accno= " + Session["acc"] + " and tdatetime = ( select  max(tdatetime) from MoneyTransferDetails where Accno= " + Session["acc"] + ")";
                SqlCommand cmd = new SqlCommand(sqlcmd, con);
                con.Open();
                Int64 cbalance = Convert.ToInt64(cmd.ExecuteScalar());
                con.Close();


                if (Convert.ToInt64(txtamt.Text) < cbalance)
                {

                    ////s2
                    sqlcmd = " Select balance from MoneyTransferDetails where Accno= " + txtaccno.Text + " and tdatetime = ( select  max(tdatetime) from MoneyTransferDetails where Accno= " + txtaccno.Text + ")";
                    cmd = new SqlCommand(sqlcmd, con);
                    con.Open();
                    Int64 recaccbalence = Convert.ToInt64(cmd.ExecuteScalar());
                    con.Close();


                    ////s3
                    sqlcmd = "Insert into MoneyTransferDetails(Accno,[Dr/cr],tdatetime,AmtTransfer,Balance,Details)"
                                                           + " values(@Accno,@Dr,@tdatetime,@AmtTransfer,@Balance,@Details)";

                    SqlCommand cmd1 = new SqlCommand(sqlcmd, con);
                    cmd1.Parameters.AddWithValue("@Accno", txtaccno.Text);
                    cmd1.Parameters.AddWithValue("@Dr", "true");
                    cmd1.Parameters.AddWithValue("@tdatetime", DateTime.Now);
                    cmd1.Parameters.AddWithValue("@AmtTransfer", txtamt.Text);
                    cmd1.Parameters.AddWithValue("@Balance", (Convert.ToInt64(txtamt.Text) + recaccbalence));
                    cmd1.Parameters.AddWithValue("@Details", "Account transfer from " + Session["acc"]);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();

                    //s4
                    sqlcmd = "Insert into MoneyTransferDetails(Accno,[Dr/cr],tdatetime,AmtTransfer,Balance,Details)"
                                                           + " values(@Accno,@Dr,@tdatetime,@AmtTransfer,@Balance,@Details)";

                    SqlCommand cmd2 = new SqlCommand(sqlcmd, con);
                    cmd2.Parameters.AddWithValue("@Accno", Session["acc"].ToString());
                    cmd2.Parameters.AddWithValue("@Dr", "false");
                    cmd2.Parameters.AddWithValue("@tdatetime", DateTime.Now);
                    cmd2.Parameters.AddWithValue("@AmtTransfer", txtamt.Text);
                    cmd2.Parameters.AddWithValue("@Balance", (cbalance - Convert.ToInt64(txtamt.Text)));
                    cmd2.Parameters.AddWithValue("@Details", "Account transfer to " + txtaccno.Text);
                    con.Open();
                    cmd2.ExecuteNonQuery();
                    con.Close();

                    lblsuccess.Text = "The Money has been transferred successfully............";

                }
                else
                {
                    lblfailure.Text = " You Dont have sufficient amount to transfer";
                }
            }
            catch (Exception ex)
            {

                lblfailure.Text = "Your amount is still not been sended...Please try again.";
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
            }
        }
    }
}