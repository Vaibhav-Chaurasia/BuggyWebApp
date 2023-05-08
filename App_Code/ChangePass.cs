using System.Data.SqlClient;

namespace BuggyWebApp.User
{
    internal class ChangePass
    {
        private string username;
        private string passwrd;
        private string newpassword;


        public string Username
        {
            get
            {
                return username;
            }
            set
            {
                username = value;
            }
        }

        public string Passwrd
        {
            get
            {
                return passwrd;
            }
            set
            {
                passwrd = value;
            }
        }

        public string Newpassword
        {
            get
            {
                return newpassword;
            }
            set
            {
                newpassword = value;
            }
        }


        public int passchange()
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Update VerificationOfAccount set Password=@newpassword where Userid=@userid and Password=@oldpassword", con);
            cmd.Parameters.AddWithValue("@userid", username);
            cmd.Parameters.AddWithValue("@oldpassword", passwrd);
            cmd.Parameters.AddWithValue("@newpassword", newpassword);
            con.Open();
            int a = cmd.ExecuteNonQuery();

            con.Close();
            return a;

        }
    }
}