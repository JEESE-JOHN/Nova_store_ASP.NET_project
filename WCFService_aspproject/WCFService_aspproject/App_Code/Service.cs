using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
	SqlConnection con = new SqlConnection(@"server=LAPTOP-1HM6SRVO\SQLEXPRESS;database=project;integrated security=true");
	public decimal checkbalance(int account_number)
	{
		string str = "select balance_amount from account where account_number=" + account_number;

		SqlCommand cmd = new SqlCommand(str, con);

		con.Open();

		decimal balance = 0;

		SqlDataReader dr = cmd.ExecuteReader();

		if (dr.Read())
		{
			balance = Convert.ToDecimal(dr["balance_amount"]);
		}

		dr.Close();
		con.Close();

		return balance;
	}
	public int returnbalance(int account_number, decimal remaining_balance)
	{
		string str = "UPDATE account SET balance_amount = " + remaining_balance +
					 " WHERE account_number = " + account_number;

		SqlCommand cmd = new SqlCommand(str, con);

		con.Open();
		int i=cmd.ExecuteNonQuery();
		con.Close();
		return i;
	}



	public string GetData(int value)
	{
		return string.Format("You entered: {0}", value);
	}

	public CompositeType GetDataUsingDataContract(CompositeType composite)
	{
		if (composite == null)
		{
			throw new ArgumentNullException("composite");
		}
		if (composite.BoolValue)
		{
			composite.StringValue += "Suffix";
		}
		return composite;
	}
}
