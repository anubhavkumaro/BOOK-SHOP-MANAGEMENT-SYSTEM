using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Outhors : System.Web.UI.Page
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        // To Save the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText="select * from outhors where au_id='"+TextBox1.Text+"'";
            SqlDataReader dr=cmd.ExecuteReader();
            int k = 0;
            string au;
            while (dr.Read())
            {
                au = dr.GetValue(0).ToString();
                if (au == TextBox1.Text)
                {
                    k = 1;
                    break;
                }
            }
            conn.Close();
            conn.Open();
            if (k == 0)
            {
                cmd.CommandText = "insert into Outhors values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Record Saved')</script>");

                SqlDataSource1.SelectCommand = "select * from Outhors";
            }
            else
            {
                Response.Write("<script>alert('Id alarady exist')</script>");
            }


            
        }
        catch(Exception ex)
        {
           
            Response.Write(ex.ToString());
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        // Allsearch

        SqlDataSource1.SelectCommand = "select * from Outhors";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        // Particular search
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from outhors where au_id='" + TextBox1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            while (dr.Read())
            {
                TextBox1.Text = dr.GetValue(0).ToString();
                TextBox2.Text = dr.GetValue(1).ToString();
                TextBox3.Text = dr.GetValue(2).ToString();
                TextBox4.Text = dr.GetValue(3).ToString();
                TextBox5.Text = dr.GetValue(4).ToString();
                TextBox6.Text = dr.GetValue(5).ToString();
                TextBox7.Text = dr.GetValue(6).ToString();
                k++;
            }
            SqlDataSource1.SelectCommand = "select * from outhors where au_id='" + TextBox1.Text + "'";
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
}