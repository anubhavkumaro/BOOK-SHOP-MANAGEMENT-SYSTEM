using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Sales : System.Web.UI.Page
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
    protected void bsave_Click(object sender, EventArgs e)
    {
        // To Update the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update sales set store_id ='" + TextBox2.Text + "',sdate='" + TextBox3.Text + "' where sale_id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Update')</script>");
            SqlDataSource1.SelectCommand = "select * from sales";


        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void bnew_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void bpsearch_Click(object sender, EventArgs e)
    {

        // Particular search
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from sales where sale_id='" + TextBox1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            while (dr.Read())
            {
                TextBox1.Text = dr.GetValue(0).ToString();
                TextBox2.Text = dr.GetValue(1).ToString();
                TextBox3.Text = dr.GetValue(2).ToString();
                k++;
            }
            SqlDataSource1.SelectCommand = "select * from sales where sale_id='" + TextBox1.Text + "'";
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
    protected void ballsearch_Click(object sender, EventArgs e)
    {
        // AllSearch

        SqlDataSource1.SelectCommand = "select * from sales";

    }
}