using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : Page
{

    //AttachDBFileName=C:\USERS\XINPC\DESKTOP\BOOK.MDF;        User Instance=True
    public SqlConnection cn = new SqlConnection
        (@"Data Source=XIN;
        Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        string text = TextBox1.Text;
        string range = DropDownList1.SelectedValue;
        SqlDataAdapter ad = null;

         if (range.ToString() == "Keywords")
            {
                ad = new SqlDataAdapter("select Title,Author,PublicationDate,ISBN from Book where Title LIKE '%" + text + "%' UNION "+
                                        "select Title,Author,PublicationDate,ISBN from Book where Author LIKE '%" + text + "%' UNION "+
                                        "select Title,Author,PublicationDate,ISBN from Book where PublicationDate LIKE '%" + text + "%' UNION "+             
                                        "select Title,Author,PublicationDate,ISBN from Book where ISBN LIKE '%" + text + "%'", cn);
            }
         else
         {

                ad = new SqlDataAdapter("select Title,Author,PublicationDate,ISBN from Book where " + range + " LIKE '%" + text + "%'", cn);
         }
         DataTable dt = new DataTable();
         ad.Fill(dt);

        if (text == "")
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
            Label1.Text = "Please enter your search criteria";

        }
        else
        {
            Label1.Text = "";
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (GridView1.Rows.Count == 0)
            {
                Label1.Text = "No data found.";
            }
        }
        ViewState["dt"] = dt;

    }


    protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
    {
//       if (dt != null)
//     {
//          dt = GridView1.DataSource as DataTable;
        DataTable dt1 = (DataTable)ViewState["dt"];
        dt1.DefaultView.Sort = e.SortExpression + " Asc";
        GridView1.DataSource = dt1;

        GridView1.DataBind();


//GridView1.Sort(e.SortExpression,SortDirection.Ascending);
//DataView dv = new DataView(dt);
//dv.Sort = e.SortExpression.ToString() + " ASC";
//GridView1.DataSource = dv;
//GridView1.DataBind();
//   }
    }
}