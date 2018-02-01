using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ListOfEmp : System.Web.UI.Page
{
    projectDemoEntities db = new projectDemoEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        var data = db.Employees.ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }
}