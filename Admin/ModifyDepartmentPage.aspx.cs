using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ModifyDepartmentPage : System.Web.UI.Page
{
    projectDemoEntities db = new projectDemoEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Department dept = new Department();

        int x = Int32.Parse(txtId.Text);
        var data = db.Departments.Where(d => d.dId == x).ToList();
        

        //GridView1.DataSource = dept;
        //GridView1.DataBind();
    }
}