using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EmployeeInsertPage : System.Web.UI.Page
{
    projectDemoEntities db = new projectDemoEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = db.Departments.ToList();
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "dId";
            DropDownList1.DataBind(); 
        }

        var data = db.Employees.ToList();
        GridView1.DataSource = data;
        GridView1.DataBind();
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        try
        {
            Employee emp = new Employee();

            emp.Name = txtName.Text;
            emp.DOJ = DateTime.Parse(txtDOJ.Text);
            emp.Salary = decimal.Parse( txtSalary.Text);

            if (DropDownList1.SelectedIndex==0)
            {
                Literal1.Text = "<script>alert('Please select department !!!');</script>";
                return;
            }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         


            //second way
            if (FileUpload1.HasFile)
            {
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
             
                if (extension== ".jpg" || extension == ".gif")
                {
                    if (FileUpload1.PostedFile.ContentLength<(500*1024))
                    {
                        emp.Photo = FileUpload1.FileName;
                        FileUpload1.SaveAs(Server.MapPath("../Upload/") + FileUpload1.FileName);
                    }
                    else
                    {
                        Literal1.Text = "<script>alert('Please select below 50 Kb !!!');</script>";
                        return;
                    }
                }
                else
                {
                    Literal1.Text = "<script>alert('Please select jpg or gif file !!!');</script>";
                    return;
                }
                
            }

            //emp.dId = Int32.Parse(DropDownList1.Text);
            emp.dId = Int32.Parse(DropDownList1.SelectedValue);

            db.Employees.Add(emp);
            db.SaveChanges();

            Literal1.Text = "Data Save Successfully";
            lblId.Text = emp.eId.ToString();

            var data = db.Employees.ToList();
            GridView1.DataSource = data;
            GridView1.DataBind();

        }
        catch (Exception ex1)
        {

            Literal1.Text = ex1.Message;
        }
        //Literal1.Text = DropDownList1.SelectedValue;
    }
}