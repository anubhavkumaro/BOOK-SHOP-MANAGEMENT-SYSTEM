using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admlogin : System.Web.UI.Page
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
        // Login
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login where id='admin' ";
            SqlDataReader dr = cmd.ExecuteReader();
            int f = 0;
            while (dr.Read())
            {
                string id = dr.GetValue(0).ToString();
                string pws = dr.GetValue(1).ToString();
                if (id==TextBox1.Text && pws==TextBox2.Text)
                {
                    f = 1;
                    break;
                }
            }
            if (f == 1)
            {
                Label3.Text = "";
                Response.Write("<script>window.open('Registration.aspx','_self')</script>");
            }
            else
            {
                Label3.Text = "Id and Password Wrong";
                
            }
        }
        catch (Exception ex)
        {

            Response.Write(ex.ToString());
        }
    }
}