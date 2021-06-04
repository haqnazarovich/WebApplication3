using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.Visible = true;
            HyperLink1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.; Initial Catalog=Anil; Integrated Security=True;");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Register where Email='"+TextBox1.Text+"'and Password='"+TextBox2.Text+"'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (TextBox1.Text=="Admin"& TextBox2.Text=="123")
            {
                
                Label1.Text = "Успешно!";
                Label1.ForeColor = System.Drawing.Color.Green;
                LinkButton1.Visible = false;
                HyperLink1.Visible = true;
            }
            else if (dt.Rows.Count == 1)
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect("Default.aspx");
                // Label1.Text = "Login Unsuccesfull!";
                //Label1.ForeColor = System.Drawing.Color.Red;
                LinkButton1.Visible = true;
                HyperLink1.Visible = false;
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Ошибка Входа...";
            }
        }
    }
}