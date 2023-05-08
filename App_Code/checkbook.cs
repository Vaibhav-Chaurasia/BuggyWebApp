using System.Data.SqlClient;

namespace BuggyWebApp.User
{
    internal class checkbook
    {
        private string customername;
        private long accountno;
        private int noofcheckbook;
        private int noofpages;

        public string Customername
        {
            get
            {
                return customername;
            }
            set
            {
                customername = value;
            }
        }

        public long Accountno
        {
            get
            {
                return accountno;
            }
            set
            {
                accountno = value;
            }
        }

        public int Noofcheckbook
        {
            get
            {
                return noofcheckbook;
            }
            set
            {
                noofcheckbook = value;
            }
        }

        public int Noofpages
        {
            get
            {
                return noofpages;
            }
            set
            {
                noofpages = value;
            }
        }

        public int ckkbookrequest()
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            con.Open();
            string sqlcmd = "Insert into ChequeBookRequest(Custname,Accno,Noofchkbooks,Noofpages )"
                                                  + "values(@Custname,@Accno,@Noofchequebookreqd,@noofpages)";
            SqlCommand cmd = new SqlCommand(sqlcmd, con);
            cmd.Parameters.AddWithValue("@Custname", customername);
            cmd.Parameters.AddWithValue("@Accno", accountno);
            cmd.Parameters.AddWithValue("@Noofchequebookreqd", noofcheckbook);
            cmd.Parameters.AddWithValue("@noofpages", noofpages);

            int a = cmd.ExecuteNonQuery();
            con.Close();

            return a;

        }
    }
}