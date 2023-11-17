using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        string username = Login1.UserName;
        string password = Login1.Password;


        if (username == "admin" && password == "admin")
        {
            Response.Redirect("AdminHome.aspx");
        }

        else if (username == "student" && password == "student")
        {

            Response.Redirect("HomeClient.aspx");
        }
        else
        {
            Login1.FailureText = "Invalid username or password.";
        }
    }
}