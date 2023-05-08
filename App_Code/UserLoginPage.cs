using System;
using System.Data.SqlClient;

namespace BuggyWebApp.User
{
    internal class UserLoginPage
    {
        private string Password;
        private int Userid;
        private string Username;
        private string pan;
        private long accno;


        public long Accno
        {
            get
            {
                return accno;
            }
            set
            {
                accno = value;
            }


        }

        public string Pan
        {
            get
            {
                return pan;
            }
            set
            {
                pan = value;
            }
        }

        public string password
        {
            get
            {
                return Password;
            }
            set
            {
                Password = value;
            }
        }

        public int userid
        {
            get
            {
                return Userid;
            }
            set
            {
                Userid = value;
            }
        }

        public string username
        {
            get
            {
                return Username;
            }
            set
            {
                Username = value;
            }
        }

        public void verifylogin()
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select Accno,panno from VerificationOfAccount where Userid=@userid and Password=@password", con);
            cmd.Parameters.AddWithValue("@userid", Username);
            cmd.Parameters.AddWithValue("@password", password);

            SqlDataReader dr;

            con.Open();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                accno = Convert.ToInt64(dr[0]);
                pan = dr[1].ToString();
            }
            con.Close();
        }
    }
}