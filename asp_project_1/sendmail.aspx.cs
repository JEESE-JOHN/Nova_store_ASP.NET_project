using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace asp_project_1
{
    public partial class sendmail : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "jeesejohn@gmail.com";
            string sel = "SELECT email FROM [user] WHERE user_id = " + Session["userid"];

            SqlDataReader dr = obj.fn_exereader(sel);
           

            if (dr.Read())
            {
                
                Label2.Text = dr["email"].ToString();
            }
        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(Session["userid"]);
            int pid = Convert.ToInt32(Session["productid"]);

            string up = "update feedback set reply_msg='" + TextBox2.Text + "', feedback_status='Inactive' where user_id=" + uid + " and product_id=" + pid + " and feedback_status='active'";
            int i = obj.fun_nonquery(up);
            if (i == 1)
            {
                Label3.Visible = true;
                Label3.Text = "Message send";
            }

            string sel = "SELECT user_name,email FROM [user] WHERE user_id = " + Session["userid"];
            SqlDataReader dr = obj.fn_exereader(sel);
            string toname = "";
            string email = "";
            while (dr.Read())
            {
                toname = dr["user_name"].ToString();
                email= dr["email"].ToString();
            }
            SendEmail2("Jeese John", "Jeesejohn4@gmail.com", "anem ywjw lgwo jlen", toname, email, TextBox1.Text, TextBox2.Text);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedbackreply.aspx");
        }
    }
}