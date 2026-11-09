using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace asp_project_1
{
    public class connectionclass
    {
        SqlConnection con;
        SqlCommand cmd;

        public connectionclass()
        {
            con = new SqlConnection(@"server=LAPTOP-1HM6SRVO\SQLEXPRESS;database=project;integrated security=true");
        }
        public int fun_nonquery(string sql)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string fun_exescalar(string sql)//select with scalar functions
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sql, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }
        public DataSet fn_adapter_dataset(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
        public SqlDataReader fn_exereader(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            SqlDataReader s = cmd.ExecuteReader();
            return s;
        }
    }

}


