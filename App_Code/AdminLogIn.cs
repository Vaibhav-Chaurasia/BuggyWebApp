using System;
using System.Data.SqlClient;

namespace BuggyWebApp.Admin
{
    internal class AdminLogIn
    {
        private string Password;
        private int Userid;
        private string Username;

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
            SqlCommand cmd = new SqlCommand("Select Userid from AdminLogin where Username=@username and Password=@password", con);
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@password", password);
            con.Open();
            Userid = Convert.ToInt16(cmd.ExecuteScalar());
            con.Close();
        }
    }
}