using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class ViewJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewData();
    }
        private void ViewData()
    {
        string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("select *  from JOBAPPLICATIONS where STD_ID = 123" , conn);
        cmd1.ExecuteNonQuery();
        GridView1.DataBind();
        conn.Close();

    }
    }