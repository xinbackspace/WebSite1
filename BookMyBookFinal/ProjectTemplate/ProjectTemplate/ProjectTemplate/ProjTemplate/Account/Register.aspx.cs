using System;
using System.Linq;
using System.Web.UI;
using System.Data.SqlClient;
public partial class Account_Register : Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LENOVO-PC\SQLEXPRESS;Initial Catalog=BalloonShop;Integrated Security=True");
    //protected void CreateUser_Click(object sender, EventArgs e)
    //{
    //    var manager = new UserManager();
    //    var user = new ApplicationUser() { FirstName = FirstName.Text };
    //    IdentityResult result = manager.Create(user, Password.Text);
    //    if (result.Succeeded)
    //    {
    //        IdentityHelper.SignIn(manager, user, isPersistent: false);
    //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
    //    }
    //    else
    //    {
    //        ErrorMessage.Text = result.Errors.FirstOrDefault();
    //    }
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into registration_form(first_name,last_name,email_id,Password) values('" + FirstName.Text + "','" + LastName.Text + "','" + EmailId.Text + "','" + Password.Text + "' )", con);
        cmd.ExecuteNonQuery();
        con.Close();
        label1.Visible = true;

    }
}