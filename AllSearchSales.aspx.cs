using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AllSearchSales : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        // All Search Sales
        try
        {
            if (DropDownList1.SelectedValue == "All")
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from sales";
                cmd.ExecuteNonQuery();
                SqlDataSource1.SelectCommand = "select * from sales";
            }
            else
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from sales where " + DropDownList1.SelectedValue + "='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                SqlDataSource1.SelectCommand = "select * from sales where " + DropDownList1.SelectedValue + "='" + TextBox1.Text + "'";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}