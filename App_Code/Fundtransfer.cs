using System.Data.SqlClient;

namespace BuggyWebApp.User
{
    internal class Fundtransfer
    {
        private long accno;
        private string acctype;
        private string bankname;
        private long transferamt;
        private string date;

        public string Acctype
        {
            get
            {
                return acctype;
            }
            set
            {
                acctype = value;
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

        public long Transferamt
        {
            get
            {
                return transferamt;
            }
            set
            {
                transferamt = value;
            }
        }

        public string Bankname
        {
            get
            {
                return bankname;
            }
            set
            {
                bankname = value;
            }
        }

        public string Date
        {
            get
            {
                return date;
            }
            set
            {
                date = value;
            }
        }

        public int fundtransfer()
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            con.Open();
            string sqlcmd = "Insert into MoneyTransfer(Acctype,Accno,Amt_to_transfer,Bankname,Date)"
                                                  + "values(@acctype,@accno,@transferamt,@bankname,@date)";
            SqlCommand cmd = new SqlCommand(sqlcmd, con);
            cmd.Parameters.AddWithValue("@acctype", acctype);
            cmd.Parameters.AddWithValue("@accno", accno);
            cmd.Parameters.AddWithValue("@transferamt", transferamt);
            cmd.Parameters.AddWithValue("@bankname", bankname);
            cmd.Parameters.AddWithValue("@date", date);
            int a = cmd.ExecuteNonQuery();
            con.Close();

            return a;
        }
    }
}