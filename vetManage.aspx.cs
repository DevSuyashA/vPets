﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_New
{
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            cmd = con.CreateCommand();
            cmd.CommandText = "select * from Veterinary where v_username =  '" + TextBox5.Text.Trim() + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("UserName Already Exists");
                dr.Close();
            }
            else
            {
                dr.Close();
                cmd.CommandText = "insert into Veterinary(v_username,Password,Name,Address,Email,Mobno,Open_time,Close_time) Values('" + TextBox5.Text.Trim() + "','" + TextBox6.Text.Trim() + "','" + txtName.Text.Trim() + "','" + txtAddress.Text.Trim() + "','" + txtEmail.Text.Trim() + "','" + txtNum.Text.Trim() + "','" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "')";
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
                clear();
            }
        }

        private void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            txtNum.Text = "";
            txtName.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";
            
        }
    }
}

