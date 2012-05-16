using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;




public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalTestConnectionString"].ConnectionString);
        con.Open();
        string cmdStr = "select count(*)from User where number= @username AND password = @password";
        SqlCommand Checkuser = new SqlCommand(cmdStr, con);
        Checkuser.Parameters.AddWithValue("@username", TextBox1.Text);
        Checkuser.Parameters.AddWithValue("@password", TextBox2.Text);
        if ((int)Checkuser.ExecuteScalar() > 0)
        {
            Session["New"] = TextBox1.Text;
            Response.Redirect("Default.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "invalid credentials..";

        }

    }
}
