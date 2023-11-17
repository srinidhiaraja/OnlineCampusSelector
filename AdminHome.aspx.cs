using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
        protected void Button1_Click(object sender, EventArgs e)
    {
        InsertData();
        DispData();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DeleteData();
        DispData();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        UpData();
        DispData();

    }

    private void InsertData()
    {
        string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("insert into JOBLISTINGS values(" + Convert.ToInt32(TextBox1.Text) + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + Convert.ToInt32(TextBox5.Text) + ",'" + TextBox6.Text + "');", conn);
        cmd1.ExecuteNonQuery();
        conn.Close();
    }
    private void DispData()
    {
        string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("select * from JOBLISTINGS;", conn);
        GridView1.DataBind();
        cmd1.ExecuteNonQuery();
        conn.Close();

    }

   

        private void DeleteData()
  {

      string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
      SqlConnection conn = new SqlConnection(cs);
      conn.Open();
      SqlCommand cmd1 = new SqlCommand("delete from JOBLISTINGS where ID =" + Convert.ToInt32(TextBox1.Text) + ";", conn);
      cmd1.ExecuteNonQuery();
      conn.Close();

  }
        private void UpData()
        {
            string cs = ConfigurationManager.ConnectionStrings["jobupdatesConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("update JOBLISTINGS set LPA = " + Convert.ToInt32(TextBox5.Text) + "where ID = " + Convert.ToInt32(TextBox1.Text) + ";", conn);
            cmd1.ExecuteNonQuery();
            conn.Close();
        }
       
}
