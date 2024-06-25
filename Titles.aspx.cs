using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Titles : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Bookshop.mdf;Integrated Security=True");
        if (conn.State==ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();
        if (!IsPostBack == true)
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select pub_id from publishers";
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr.GetValue(0).ToString());
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // To Save The Record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from titles where title_id='" + TextBox1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            string title;
            while (dr.Read())
            {
                title = dr.GetValue(0).ToString();
                if (title == TextBox1.Text)
                {
                    k = 1;
                    break;
                }
            }
            conn.Close();
            conn.Open();
            if (k == 0)
            {
                cmd.CommandText = "insert into Titles values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Record Saved')</script>");
                SqlDataSource1.SelectCommand = "select * from titles";
            }
            else
            {
                Response.Write("<script>alert('ID Already Exist')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
protected void TextBox3_TextChanged(object sender, EventArgs e)
{

}
protected void Button4_Click(object sender, EventArgs e)
{
    // Particular search
    try
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandText = "select * from titles where title_id='" + TextBox1.Text + "'";
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
            TextBox10.Text = dr.GetValue(9).ToString();
            k++;
        }
        SqlDataSource1.SelectCommand = "select * from titles where title_id='" + TextBox1.Text + "'";
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
protected void Button3_Click(object sender, EventArgs e)
{
    // Allsearch

    SqlDataSource1.SelectCommand = "select * from titles";
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
    TextBox8.Text = "";
    TextBox9.Text = "";
    TextBox10.Text = "";
}
protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
{
    TextBox4.Text = DropDownList1.SelectedItem.ToString();
}
}