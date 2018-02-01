using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LisyOfCat : System.Web.UI.Page
{
    projectDemoEntities db = new projectDemoEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = db.CategoriesGetAll();
        GridView1.DataBind();

        GridView2.DataSource = db.Stocks.ToList();
        GridView2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        db.CategoriesInsert("Tree");
    }
}