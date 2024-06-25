using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Salesdetails : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Bookshop.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        // To Delete the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "delete from salesdetails where sale_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Delete')</script>");
            SqlDataSource1.SelectCommand = "select * from salesdetails";
            

        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // Particular search
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from salesdetails where sale_id='" + TextBox1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            while (dr.Read())
            {
                TextBox1.Text = dr.GetValue(0).ToString();
                TextBox2.Text = dr.GetValue(1).ToString();
                TextBox3.Text = dr.GetValue(2).ToString();
                TextBox4.Text = dr.GetValue(3).ToString();
                TextBox5.Text = dr.GetValue(4).ToString();
                k++;
            }
            SqlDataSource1.SelectCommand = "select * from salesdetails where sale_id='" + TextBox1.Text + "'";
            if (k == 0)
            {
                Response.Write("<script>alert('No Records Found')</script>");
            }



        }
        catch (Exception ex)
        {

            Response.Write(ex.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // AllSearch

        SqlDataSource1.SelectCommand = "select * from salesdetails";
    }
}