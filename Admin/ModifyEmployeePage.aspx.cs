using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ModifyEmployeePage : System.Web.UI.Page
{
    projectDemoEntities db = new projectDemoEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            int x = Int32.Parse(Request.QueryString["x"]);

            //int x = Int32.Parse(txtEId.Text);
            var data = db.Employees.Where(d => d.eId == x).FirstOrDefault();

            if (data != null)
            {
                txtEId.Text = x.ToString();
                txtName.Text = data.Name;
                txtDOJ.Text =  ((DateTime)data.DOJ).ToString("yyyy/MM/dd");
                txtSalary.Text = ((decimal)data.Salary).ToString(".00");

                Image1.ImageUrl = "../Upload/" + data.Photo;
                DropDownList1.SelectedValue = data.dId.ToString();

                Literal1.Text = "";
            }
            else
            {
                Literal1.Text = "Not Found !!!";
            }
        }
        catch (Exception)
        {


            
        }


        if (!IsPostBack)
        {
            DropDownList1.DataSource = db.Departments.ToList();
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "dId";
            DropDownList1.DataBind();
        }
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
      
        int x = Int32.Parse(txtEId.Text);
        var data = db.Employees.Where(d => d.eId == x).FirstOrDefault();

        if (data != null)
        {
            txtName.Text = data.Name;
            txtDOJ.Text = data.DOJ.ToString();
            txtSalary.Text = data.Salary.ToString();

            Image1.ImageUrl = "../Upload/"+ data.Photo;
            DropDownList1.SelectedValue = data.dId.ToString();

            Literal1.Text = data.Department.Name;
        }
        else
        {
            Literal1.Text = "Not Found !!!";
        }
        
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int x = Int32.Parse(txtEId.Text);
        var data = db.Employees.Where(d => d.eId == x).FirstOrDefault();
        db.SaveChanges();
        Literal1.Text = "Update";
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int x = Int32.Parse(txtEId.Text);
        var data = db.Employees.Where(d => d.eId == x).FirstOrDefault();

        db.Employees.Remove(data);
        db.SaveChanges();
        Literal1.Text = "Delete";
    }
}