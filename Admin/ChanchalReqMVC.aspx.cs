using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ChanchalReqMVC : System.Web.UI.Page
{

    projectDemoEntities db = new projectDemoEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            var data = db.Employees.ToList();
            GridView1.DataSource = data;
            GridView1.DataBind(); 
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;

        var data = db.Employees.ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;

        var data = db.Employees.ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int eidn = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());

        var data = db.Employees.Where(d => d.eId == eidn).FirstOrDefault();
        db.Employees.Remove(data);
        db.SaveChanges();

        GridView1.EditIndex = -1;

        var data1 = db.Employees.ToList();
        GridView1.DataSource = data1;
        GridView1.DataBind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;

        var data = db.Employees.ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int eidn = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lblID = (Label)row.FindControl("Label1");
            TextBox txtName = (TextBox)row.FindControl("txtName");
            TextBox txtDate = (TextBox)row.FindControl("txtDOJ");
            TextBox txtSal = (TextBox)row.FindControl("txtSalary");
            FileUpload  fup = (FileUpload)row.FindControl("FileUpload1");

            var data = db.Employees.Where(d => d.eId == eidn).FirstOrDefault();

            data.Name = txtName.Text;


            data.DOJ = DateTime.Parse(txtDate.Text);

            data.Salary = decimal.Parse(txtSal.Text);

            if (fup.HasFile)
            {
                data.Photo = fup.FileName;
            }

            db.SaveChanges();

            GridView1.EditIndex = -1;

            var data1 = db.Employees.ToList();
            GridView1.DataSource = data1;
            GridView1.DataBind();

            Literal1.Text = "Anis er asha puron";
        }
        catch (Exception ex1)
        {
            Literal1.Text = ex1.Message;
        }
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        
    }
}