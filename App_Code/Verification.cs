using System.Data.SqlClient;

namespace BuggyWebApp.Admin
{
    internal class Verification
    {
        private long accno;
        private long minamtdep;
        private int userid;
        private string password;
        private int enteruseidlength;
        private int enterpasslength;
        private int enteracclength;
        private string panno;

        public string Panno
        {
            get
            {
                return panno;
            }
            set
            {
                panno = value;
            }
        }
        public int Enteracclength
        {
            get
            {
                return enteracclength;
            }
            set
            {
                enteracclength = value;
            }
        }

        public int Enteruseridlength
        {
            get
            {
                return enteruseidlength;
            }
            set
            {
                enteruseidlength = value;
            }
        }

        public int Enterpasslength
        {
            get
            {
                return Enterpasslength;
            }
            set
            {
                enterpasslength = value;
            }
        }

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

        public long Minamtdep
        {
            get
            {
                return minamtdep;
            }
            set
            {
                minamtdep = value;
            }
        }

        public int Userid
        {
            get
            {
                return userid;
            }
            set
            {
                userid = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
            }
        }

        public int verification()
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            con.Open();
            string sqlcmd = "Insert into VerificationOfAccount(Accno,Minamtdeposit,Userid,Password,Enteruserlength,Enterpasslength,Enteracclength,Panno)"
                                                  + "values(@Accno,@Minamtdeposit,@Userid,@Password,@Enteruserlength,@Enterpasslength,@Enteracclength,@Panno)";
            SqlCommand cmd = new SqlCommand(sqlcmd, con);
            cmd.Parameters.AddWithValue("@Accno", accno);
            cmd.Parameters.AddWithValue("@Minamtdeposit", minamtdep);
            cmd.Parameters.AddWithValue("@Userid", userid);
            cmd.Parameters.AddWithValue("@Password", password);
            cmd.Parameters.AddWithValue("@Enteruserlength", enteruseidlength);
            cmd.Parameters.AddWithValue("@Enterpasslength", enterpasslength);
            cmd.Parameters.AddWithValue("@Enteracclength", enteracclength);
            cmd.Parameters.AddWithValue("@Panno", panno);

            int a = cmd.ExecuteNonQuery();
            con.Close();

            return a;

        }
    }
}