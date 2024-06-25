using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Editors : System.Web.UI.Page
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
    protected void Button3_Click(object sender, EventArgs e)
    {
        // AllSearch

        SqlDataSource1.SelectCommand = "select * from editors";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // To Update the record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update editors set ed_fnm ='" + TextBox2.Text + "',ed_lnm='"+TextBox3.Text+"',ed_pos='"+TextBox4.Text+"',phone='"+TextBox5.Text+"',address1='"+TextBox6.Text+"',city='"+TextBox7.Text+"',state1='"+TextBox8.Text+"',ed_boss='"+TextBox9.Text+"' where ed_id='"+TextBox1.Text+"'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Update')</script>");
            SqlDataSource1.SelectCommand = "select * from editors";


        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        // Particular search
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from editors where ed_id='" + TextBox1.Text + "'";
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
                TextBox8.Text = dr.GetValue(7).ToString();
                TextBox9.Text = dr.GetValue(8).ToString();
                k++;
            }
            SqlDataSource1.SelectCommand = "select * from editors where ed_id='" + TextBox1.Text + "'";
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