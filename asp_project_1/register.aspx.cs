using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp_project_1
{
    public partial class register : System.Web.UI.Page
    {
        connectionclass obj = new connectionclass();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCreateAdmin_Click(object sender, EventArgs e)
        {
            string sel = "select max(reg_Id) from login";
            string regid = obj.fun_exescalar(sel);
            int reg_id = 0;
            if (regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reg_id = newregid + 1;
            }

            string ins = "insert into [user] values(" + reg_id + ",'" + txtFullName.Text + "','" + txtEmail.Text + "',"+ txtPhone.Text + ",'"+ txtAddress.Text+ "'," + txtAge.Text + "," + txtPinCode.Text+",'active')";
            int i = obj.fun_nonquery(ins);
            if (i == 1)
            {
                string inslog = "insert into login values(" + reg_id + ",'" + txtUsername.Text + "','" + txtPassword.Text + "','user')";
                int j = obj.fun_nonquery(inslog);
                if (i == 1 && j == 1)
                {
                    lblMessage.Text = "Successfully Registered";
                }
            }
            else
            {
                lblMessage.Text = "Invalid Entry";
            }
        }
    }
}