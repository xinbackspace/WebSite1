using System;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Account_Login : Page
{
    SqlConnection con = new SqlConnection(@"Data Source=LENOVO-PC\SQLEXPRESS;Initial Catalog=BalloonShop;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterHyperLink.NavigateUrl = "Register";
        //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        //if (!String.IsNullOrEmpty(returnUrl))
        //{
        //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
        //}
    }

    protected void LogIn(object sender, EventArgs e)
    {
        //if (IsValid)
        //{
        //    // Validate the user password
        //    var manager = new UserManager();
        //    ApplicationUser user = manager.Find(EmailId.Text, Password.Text);
        //    if (user != null)
        //    {
        //        IdentityHelper.SignIn(manager, user, RememberMe.Checked);
        //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
        //    }
        //    else
        //    {
        //        FailureText.Text = "Invalid username or password.";
        //        ErrorMessage.Visible = true;
        //    }
        //}
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select * from Registration_Form where Email_ID='" + EmailId.Text + "' and password ='" + Password.Text + "'";
        da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            Response.Redirect("User.aspx");
        }
        else
        {
            Response.Write("Please enter a valid email id and password");

        }
        con.Close();
    }
}
