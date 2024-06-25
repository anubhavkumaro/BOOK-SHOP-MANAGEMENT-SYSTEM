using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Registration : System.Web.UI.Page
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
        // To User Register the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login where id='"+TextBox1.Text+"' ";
            SqlDataReader dr = cmd.ExecuteReader();
            int f = 0;
            string id;
            while (dr.Read())
            {
                id = dr.GetValue(0).ToString();
                if (id == TextBox1.Text)
                {
                    f = 1;
                    break;
                }
            }
            conn.Close();
            conn.Open();

            if (f == 1)
            {
                Response.Write("<script>alert('ID Alarady Exist')</script>");
            }
            else
            {
                cmd.CommandText = "insert into login values('" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox3.Text+"')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('User Register')</script>");
                SqlDataSource1.SelectCommand = "select * from login";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            
        }
        catch (Exception ex)
        {

            Response.Write(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // User Update Record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update login set pws='" + TextBox2.Text + "',counter='" + TextBox3.Text + "' where id='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('User Updated')</script>");
            SqlDataSource1.SelectCommand = "select * from login";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}