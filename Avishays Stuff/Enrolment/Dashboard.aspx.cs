﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String username = Context.User.Identity.Name;
        this.Students.SelectParameters["number"].DefaultValue = User.Identity.Name;
        DataBind();
    }

  
}