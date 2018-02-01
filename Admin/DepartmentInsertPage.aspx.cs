using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DepartmentInsertPage : System.Web.UI.Page
{

    projectDemoEntities db = new projectDemoEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Department dept = new Department { Name = txtName.Text };

        db.Departments.Add(dept);
        db.SaveChanges();

        lblId.Text = dept.dId.ToString();

        Literal1.Text = "<script>alert('Data Save Successfully ...');</script>";

        var data = db.Departments.ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }
}