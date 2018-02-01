using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditEmp : System.Web.UI.Page
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

            try
            {
                int idn = Int32.Parse(Request.QueryString["id"]);

                //int x = Int32.Parse(txtEId.Text);
                var data = db.Employees.Where(d => d.eId == idn).FirstOrDefault();

                if (data != null)
                {
                    txtEId.Text = idn.ToString();
                    txtName.Text = data.Name;
                    txtDOJ.Text = ((DateTime)data.DOJ).ToString("yyyy/MM/dd");
                    txtSalary.Text = ((decimal)data.Salary).ToString(".00");

                    Image1.ImageUrl = "../Upload/" + data.Photo;
                    DropDownList1.SelectedValue = data.dId.ToString();

                    Literal1.Text = "";
                }
            }
            catch (Exception)
            {

            }

        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        try
        {
            int idn = Int32.Parse( txtEId.Text);

            //int x = Int32.Parse(txtEId.Text);
            var data = db.Employees.Where(d => d.eId == idn).FirstOrDefault();

            if (data != null)
            {

                data.Name= txtName.Text;
                data.DOJ = DateTime.Parse( txtDOJ.Text);
                data.Salary= decimal.Parse( txtSalary.Text);

                //Image1.ImageUrl = "../Upload/" + data.Photo;
                data.dId = Int32.Parse( DropDownList1.SelectedValue);

                db.SaveChanges();
                Literal1.Text = "Save Hoia geachee";
            }

        }
        catch (Exception ex1)
        {

            Literal1.Text = ex1.Message;

        }
    }


    
}