using System.Data.SqlClient;

namespace BuggyWebApp.User
{
    internal class LossedATM
    {
        private int accno;
        private int atmno;
        private string date_of_loss;
        private string passwrd;
        private string place_of_loss;
        private string custname;

        public int Accno
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

        public int Atmno
        {
            get
            {
                return atmno;
            }
            set
            {
                atmno = value;
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

        public string Date_of_loss
        {
            get
            {
                return date_of_loss;
            }
            set
            {
                date_of_loss = value;
            }
        }

        public string Place_of_loss
        {
            get
            {
                return place_of_loss;
            }
            set
            {
                place_of_loss = value;
            }
        }

        public string Custname
        {
            get
            {
                return custname;
            }
            set
            {
                custname = value;
            }
        }

        public int lostatm()
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
            con.Open();
            string sqlcmd = "Insert into LossOfATM(Accno,ATMno,Password,Date_of_loss,Place_of_loss,Custname)"
                                   + "values(@accno,@atmno,@pass,@lostdate,@lostplace,@custname)";
            SqlCommand cmd = new SqlCommand(sqlcmd, con);
            cmd.Parameters.AddWithValue("@accno", accno);
            cmd.Parameters.AddWithValue("@atmno", atmno);
            cmd.Parameters.AddWithValue("@pass", passwrd);
            cmd.Parameters.AddWithValue("@lostdate", date_of_loss);
            cmd.Parameters.AddWithValue("@lostplace", place_of_loss);
            cmd.Parameters.AddWithValue("@custname", custname);
            int a = cmd.ExecuteNonQuery();
            con.Close();

            return a;

        }
    }
}