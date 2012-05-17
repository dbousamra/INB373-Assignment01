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


    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        //if (Login1.UserName.Equals("dombou") && Login1.Password.Equals("helloworld"))
        //{
        //    e.Authenticated = true;
        //}

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalTestConnectionString"].ConnectionString);
        con.Open();

        string cmdStr = "SELECT COUNT(*) FROM [User] WHERE number = @username AND password = @password";
        SqlCommand Checkuser = new SqlCommand(cmdStr, con);
        Checkuser.Parameters.AddWithValue("@username", Login1.UserName);
        Checkuser.Parameters.AddWithValue("@password", Login1.Password);
        if ((int) Checkuser.ExecuteScalar() > 0)
        {
            //Session["New"] = TextBox1.Text;
            Response.Redirect("Default.aspx");
        }
        else
        {
            

        }

    }
}
