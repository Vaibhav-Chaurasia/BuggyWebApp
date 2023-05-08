using System.Data.SqlClient;

namespace BuggyWebApp.User
{
    internal class AccOpeningForm
    {
        private string acctype;
        private string addr;
        private string addproof;
        private int annincome;
        private string city;
        private string custname;
        private string dob;
        private string edu;
        private string email;
        private long faxno;
        private string gender;
        private string marstatus;
        private string mothername;
        private string nomdob;
        private string nomname;
        private string nomrestype;
        private string offadd;
        private long offtel;
        private string panno;
        private string relation;
        private string resstatus;
        private string salutation;
        private string state;
        private long telnom;
        private long telnor;
        private string yrsatres;

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

        public string Dob
        {
            get
            {
                return dob;
            }
            set
            {
                dob = value;
            }
        }

        public string Mothername
        {
            get
            {
                return mothername;
            }
            set
            {
                mothername = value;
            }
        }

        public int Annincome
        {
            get
            {
                return annincome;
            }
            set
            {
                annincome = value;
            }
        }

        public string Resstatus
        {
            get
            {
                return resstatus;
            }
            set
            {
                resstatus = value;
            }
        }

        public string Gender
        {
            get
            {
                return gender;
            }
            set
            {
                gender = value;
            }
        }

        public string Marstatus
        {
            get
            {
                return marstatus;
            }
            set
            {
                marstatus = value;
            }
        }

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

        public string Addr
        {
            get
            {
                return addr;
            }
            set
            {
                addr = value;
            }
        }

        public string State
        {
            get
            {
                return state;
            }
            set
            {
                state = value;
            }
        }

        public string City
        {
            get
            {
                return city;
            }
            set
            {
                city = value;
            }
        }

        public long Telnor
        {
            get
            {
                return telnor;
            }
            set
            {
                telnor = value;
            }
        }

        public long Telnom
        {
            get
            {
                return telnom;
            }
            set
            {
                telnom = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }

        public string Offadd
        {
            get
            {
                return offadd;
            }
            set
            {
                offadd = value;
            }
        }

        public long Offtelno
        {
            get
            {
                return offtel;
            }
            set
            {
                offtel = value;
            }
        }

        public long Faxno
        {
            get
            {
                return faxno;
            }
            set
            {
                faxno = value;
            }
        }

        public string Edu
        {
            get
            {
                return edu;
            }
            set
            {
                edu = value;
            }
        }

        public string Salutation
        {
            get
            {
                return salutation;
            }
            set
            {
                salutation = value;
            }
        }

        public string Nomname
        {
            get
            {
                return nomname;
            }
            set
            {
                nomname = value;
            }
        }

        public string Nomdob
        {
            get
            {
                return nomdob;
            }
            set
            {
                nomdob = value;
            }
        }

        public string Relation
        {
            get
            {
                return relation;
            }
            set
            {
                relation = value;
            }
        }

        public string Nomrestype
        {
            get
            {
                return nomrestype;
            }
            set
            {
                nomrestype = value;
            }
        }

        public string Addproof
        {
            get
            {
                return addproof;
            }
            set
            {
                addproof = value;
            }
        }

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

        public string Yrsatres
        {
            get
            {
                return yrsatres;
            }
            set
            {
                yrsatres = value;
            }
        }

        public int custdetails()
        {
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["abc"].ConnectionString);

            string sqlcmd = "Insert into CustomerDetails(Custname,"
                                                        + "DOB,"
                                                        + "Mothername,"
                                                        + "Annincome,"
                                                        + "Resstatus,"
                                                        + "Yearsatres,"
                                                        + "Gender,"
                                                        + "Maritalstatus,"
                                                        + "Panno,"
                                                        + "Addr,"
                                                        + "State,"
                                                        + "City,"
                                                        + "Telnor,"
                                                        + "Telnom,"
                                                        + "Email,"
                                                        + "offadd,"
                                                        + "offtelno,"
                                                        + "faxno,"
                                                        + "edu,"
                                                        + "salutation,"
                                                        + "nominename,"
                                                        + "dobs,"
                                                        + "relation,"
                                                        + "nomrestype,"
                                                        + "addproof,Acctype,verified)"

                                                + "values(@Custname,"
                                                        + "@DOB,"
                                                        + "@Mothername,"
                                                        + "@Annincome,"
                                                        + "@Resstatus,"
                                                        + "@Yearsatres,"
                                                        + "@Gender,"
                                                        + "@Maritalstatus,"
                                                        + "@Panno,"
                                                        + "@Addr,"
                                                        + "@State,"
                                                        + "@City,"
                                                        + "@Telnor,"
                                                        + "@Telnom,"
                                                        + "@Email,"
                                                        + "@offadd,"
                                                        + "@offtelno,"
                                                        + "@faxno,"
                                                        + "@edu,"
                                                        + "@salutation,"
                                                        + "@nominename,"
                                                        + "@dobs,"
                                                        + "@relation,"
                                                        + "@nomrestype,"
                                                        + "@addproof,@Acctype,@verified)";


            SqlCommand cmd = new SqlCommand(sqlcmd, con);

            cmd.Parameters.AddWithValue("@Custname", custname);
            cmd.Parameters.AddWithValue("@DOB", dob);
            cmd.Parameters.AddWithValue("@Mothername", mothername);
            cmd.Parameters.AddWithValue("@Annincome", annincome);
            cmd.Parameters.AddWithValue("@Resstatus", resstatus);
            cmd.Parameters.AddWithValue("@Yearsatres", yrsatres);
            cmd.Parameters.AddWithValue("@Gender", gender);
            cmd.Parameters.AddWithValue("@Maritalstatus", marstatus);
            cmd.Parameters.AddWithValue("@Panno", panno);
            cmd.Parameters.AddWithValue("@Addr", addr);
            cmd.Parameters.AddWithValue("@State", state);
            cmd.Parameters.AddWithValue("@City", city);
            cmd.Parameters.AddWithValue("@Telnor", telnor);
            cmd.Parameters.AddWithValue("@Telnom", telnom);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@offadd", offadd);
            cmd.Parameters.AddWithValue("@offtelno", offtel);
            cmd.Parameters.AddWithValue("@faxno", faxno);
            cmd.Parameters.AddWithValue("@edu", edu);
            cmd.Parameters.AddWithValue("@salutation", salutation);
            cmd.Parameters.AddWithValue("@nominename", nomname);
            cmd.Parameters.AddWithValue("@relation", relation);
            cmd.Parameters.AddWithValue("@dobs", nomdob);
            cmd.Parameters.AddWithValue("@nomrestype", nomrestype);
            cmd.Parameters.AddWithValue("@addproof", addproof);
            cmd.Parameters.AddWithValue("@Acctype", acctype);
            cmd.Parameters.AddWithValue("@verified", "false");



            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();

            return a;
        }
    }
}