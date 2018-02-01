using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_PurchaseDesign : System.Web.UI.Page
{
    projectDemoEntities db = new projectDemoEntities();   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.DataSource = db.Categories.ToList();
            DropDownList1.DataTextField = "CategoryName";
            DropDownList1.DataValueField = "CategoryID";
            DropDownList1.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Purchase pc = new Purchase();

            pc.PID = txtPID.Text;
            pc.PName = txtPname.Text;
            pc.UPrice = decimal.Parse(txtUprice.Text);
            pc.Qty = Int32.Parse(txtQty.Text);
            pc.PDate = DateTime.Parse(txtPDate.Text);
            pc.CategoryID = Int32.Parse(DropDownList1.SelectedValue);

            db.Purchases.Add(pc);
            db.SaveChanges();

            Literal1.Text = "Data Save Successfully ...";
         
        }
        catch (Exception ex1)
        {
            Literal1.Text = ex1.Message;
        }
    }
}