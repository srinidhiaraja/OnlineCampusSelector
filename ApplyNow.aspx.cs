using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ApplyNow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void Button2_Click(object sender, EventArgs e)
    {
        InsertData();
        Label10.Text = "APPLICATION SUBMITTED SUCCESSFULLY!";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DelData();
        DispData();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
       
        ViewData();
        
        
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        UpData();
        DispData();
    }

    private void InsertData()
    {
        string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("insert into JOBAPPLICATIONS values(" + Convert.ToInt32(TextBox1.Text) + ",'" + TextBox2.Text + "'," + Convert.ToInt32(TextBox3.Text) + ",'" + TextBox4.Text + "','" +TextBox5.Text+ "','" + TextBox6.Text + "','"+ TextBox7.Text + "');", conn);
        cmd1.ExecuteNonQuery();
        conn.Close();
    }

    private void DelData()
    {
        string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("delete from JOBAPPLICATIONS where STD_ID =" + Convert.ToInt32(TextBox1.Text) + ";", conn);
        cmd1.ExecuteNonQuery();
        conn.Close();
    }

    private void DispData()
    {
        string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("select * from JOBAPPLICATIONS;", conn);
        
        cmd1.ExecuteNonQuery();
        conn.Close();

    }
    private void ViewData()
    {
        string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("select *  from JOBAPPLICATIONS where STD_ID ="+ Convert.ToInt32(TextBox1.Text)+";" , conn);
        cmd1.ExecuteNonQuery();
       
        conn.Close();

    }

    private void UpData()
    {
        string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("update JOBAPPLICATIONS set age = " + Convert.ToInt32(TextBox3.Text) + "where STD_ID = " + Convert.ToInt32(TextBox1.Text) + ";", conn);
        
        cmd1.ExecuteNonQuery();
        conn.Close();

    }
}