using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Subject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strID = Request.QueryString["id"];
        if (strID == null)
        {
            Response.Redirect("Courses.aspx");
        }
        else
        {
            //Label1.Text = strID;
        }
    }
}