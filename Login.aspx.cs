using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
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
            int counter = 0;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login";
            SqlDataReader dr = cmd.ExecuteReader();
            int f=0;
            while (dr.Read())
            {
                string id = dr.GetValue(0).ToString();
                string pws = dr.GetValue(1).ToString();
                counter =int.Parse(dr.GetValue(2).ToString());
             
                if (TextBox1.Text == id && TextBox2.Text == pws)
                {
                    
                        f = 1;
                        break;
                    
                }
                
            }
            conn.Close();
            conn.Open();
            if (f == 1 )
            {
                if (counter > 0)
                {
                    counter = counter - 1;
                    cmd.CommandText = "update login set counter='" + counter + "' where id='" + TextBox1.Text + "' and pws='" + TextBox2.Text + "'";
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>window.open('MyMenu.aspx','_self')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Please Register')</script>");
                }
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Admlogin.aspx','_self')</script>");
    }
}