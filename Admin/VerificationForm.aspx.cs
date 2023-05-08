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
using System.Net.Mail;
using BuggyWebApp.App_Code;

namespace BuggyWebApp.Admin
{
    public partial class VerificationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Verification obj = new Verification();

        string to;
        string body = "";

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                //s1 
                obj.Accno = Convert.ToInt64(txtaccno.Text);
                obj.Minamtdep = Convert.ToInt64(txtminamt.Text);
                obj.Userid = Convert.ToInt32(txtuserid.Text);
                obj.Password = txtpass.Text;
                obj.Enteruseridlength = Convert.ToInt32(txtuseridlength.Text);
                obj.Enterpasslength = Convert.ToInt32(txtpasslength.Text);
                obj.Enteracclength = Convert.ToInt32(txtacclength.Text);
                obj.Panno = Session["pan"].ToString();
                int a = obj.verification();

                if (a > 0)
                {
                    lblsuccess.Text = "Account has been verified........";
                }
                else
                {
                    lblfailure.Text = "Account has not been verified correctly.....";
                }

                //s2 

                SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
                SqlCommand cmd = new SqlCommand("Select Email from CustomerDetails where Panno = '" + Session["pan"] + "'", con);
                con.Open();
                to = cmd.ExecuteScalar().ToString(); ;
                con.Close();

                ///

                SqlCommand cmd1 = new SqlCommand("Insert into MoneyTransferDetails(Accno,[Dr/cr],Details,Balance,AmtTransfer,tdatetime)"
                                                                         + "values(@Ac,@Dr,@Details,@Balance,@AmtTransfer,@tdatetime)");

                cmd1.CommandType = CommandType.Text;
                cmd1.Connection = con;
                cmd1.Parameters.AddWithValue("@Ac", txtaccno.Text);
                cmd1.Parameters.AddWithValue("@Dr", 1);
                cmd1.Parameters.AddWithValue("@Details", "Account Opening Amount");
                cmd1.Parameters.AddWithValue("@Balance", txtminamt.Text);
                cmd1.Parameters.AddWithValue("@AmtTransfer", txtminamt.Text);
                cmd1.Parameters.AddWithValue("@tdatetime", DateTime.Now);


                con.Open();
                string go = cmd1.ExecuteNonQuery().ToString();
                con.Close();



                //s2.5 

                SqlCommand cmd2 = new SqlCommand(" update CustomerDetails  set verified = 1  where Panno='" + Session["pan"].ToString() + "'", con);
                con.Open();
                cmd2.ExecuteNonQuery().ToString();
                con.Close();


                //s3
                body = " your account information is this ------ \n";
                body += "account number is==" + obj.Accno;
                body += " userid is == " + obj.Userid;
                body += " password is == " + obj.Password;

                sendmail();
            }
            catch (Exception ex)
            {
                lblemail.Text = "Unable to send email";
            }
        }

        public void sendmail()
        {

            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            mail.To.Add(to);
            mail.From = new MailAddress("vaicha.oracle@gmail.com", "Vaibhav", System.Text.Encoding.UTF8);
            mail.Subject = "Your Account Details";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = body;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("vaicha.oracle@gmail.com", "22095798");
            client.Port = 587;
            client.Host = "Smtp.gmail.com";
            client.EnableSsl = true;
            try
            {
                client.Send(mail);
                lblemail.Text = "Email has been sended Successfully...";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnGenerate1_Click(object sender, EventArgs e)
        {
            try
            {
                string allowedChars = "";

                allowedChars += "1,2,3,4,5,6,7,8,9,0";

                char[] sep = { ',' };
                string[] arr = allowedChars.Split(sep);

                string passwordString = "";

                string temp = "";

                Random rand = new Random();
                for (int i = 0; i < Convert.ToInt32(txtuseridlength.Text); i++)
                {
                    temp = arr[rand.Next(0, arr.Length)];
                    passwordString += temp;
                }

                txtuserid.Text = passwordString;
            }
            catch (Exception ex)
            {

            }
        }
        protected void btnGenerate2_Click(object sender, EventArgs e)
        {
            string allowedChars = "";
            allowedChars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";
            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "1,2,3,4,5,6,7,8,9,0";

            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);

            string passwordString = "";

            string temp = "";

            Random rand = new Random();
            for (int i = 0; i < Convert.ToInt32(txtpasslength.Text); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                passwordString += temp;
            }

            txtpass.Text = passwordString;
        }
        protected void btnaccGenerate_Click(object sender, EventArgs e)
        {
            string allowedChars = "";

            allowedChars += "1,2,3,4,5,6,7,8,9,0";

            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);

            string passwordString = "";

            string temp = "";

            Random rand = new Random();
            for (int i = 0; i < Convert.ToInt32(txtacclength.Text); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                passwordString += temp;
            }

            txtaccno.Text = passwordString;
        }
    }
}
