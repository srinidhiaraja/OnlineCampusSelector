using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DeleteData();
       
    }

    private void DeleteData()
    {

        string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("delete from JOBAPPLICATIONS where STD_ID =" + Convert.ToInt32(TextBox1.Text) + ";", conn);
        cmd1.ExecuteNonQuery();
        conn.Close();

   
        conn.Open();
        SqlCommand cmd2 = new SqlCommand("select * from JOBAPPLICATIONS;", conn);
        
        cmd2.ExecuteNonQuery();
        GridView1.DataBind();
        conn.Close();

    }
}