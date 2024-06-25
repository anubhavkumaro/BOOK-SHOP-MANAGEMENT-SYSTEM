﻿using System;
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
        // To Save the Record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from sales where sale_id='" + TextBox1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            string sale;
            while (dr.Read())
            {
                sale = dr.GetValue(0).ToString();
                if (sale == TextBox1.Text)
                {
                    k = 1;
                    break;
                }
            }
            conn.Close();
            conn.Open();
            if (k == 0)
            {
                cmd.CommandText = "insert into sales values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Record Saved')</script>");
                SqlDataSource1.SelectCommand = "select * from sales";
            }
            else
            {
                Response.Write("<script>alert('ID Alrady Exist')</script>");
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
    protected void bnew_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}