﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace vPets_Services
{
    public partial class AdminBookIssuing : System.Web.UI.Page
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
            cmd.CommandText = "select * from petBuddy where p_username =  '" + txtUsername.Text.Trim() + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Write("UserName Already Exists");
                dr.Close();
            }
            else
            {
                dr.Close();
                cmd.CommandText = "insert into PetBuddy(p_username,Password,Name,Gender,Email,Mobno,Experience) Values('" + txtUsername.Text.Trim() + "','" + txtPassword.Text.Trim() + "','" + txtName.Text.Trim() + "','" + ddlGender.SelectedValue + "','" + txtEmail.Text.Trim() + "','" + txtNum.Text.Trim() + "','" + txtExp.Text.ToString() + "')";
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
                clear();
            }
        }

        private void clear()
        {
            txtUsername.Text = "";
            txtPassword.Text = "";

            txtNum.Text = "";
            txtName.Text = "";
            txtEmail.Text = "";
            txtExp.Text = "";


        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}