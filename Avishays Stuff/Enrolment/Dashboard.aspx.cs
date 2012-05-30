using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessTier;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String username = Context.User.Identity.Name;
        this.ObjectDataSource1.SelectParameters["userName"].DefaultValue = User.Identity.Name;
        this.ObjectDataSource2.SelectParameters["userID"].DefaultValue = BusinessTier.User.getUserIDByLoginName(User.Identity.Name.ToString()).ToString();
        DataBind();
    }

  
}