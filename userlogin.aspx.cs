using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vPets_Services
{

    public partial class userlogin : System.Web.UI.Page
    {

        
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // user login

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                if (rdbUser.Checked)
                {
                    rdbBuddy.Checked = false;
                    rdbVet.Checked = false;

                    SqlCommand cmd = new SqlCommand("select * from Client where c_username='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox2.Text.Trim() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    //TextBox2.Text.Trim();

                    if (dr.Read())
                    {
                        Session["role"] = "user";
                        Session["UserID"] = dr["client_ID"].ToString();
                        Session["username"] = dr["Name"];
                        Response.Write("<script>alert('" + dr.GetValue(3).ToString() + "');</script>");
                        Response.Redirect("homepage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid credentials');</script>");
                    }

                }
                else if (rdbVet.Checked)
                {
                    rdbUser.Checked = false;
                    rdbBuddy.Checked = false;
                    SqlCommand cmd = new SqlCommand("select * from Veterinary where v_username='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox2.Text.Trim() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    //TextBox2.Text.Trim();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Session["role"] = "vet";
                            Session["UserID"] = dr["vID"];
                            Session["username"] = dr["Name"];
                            Response.Write("<script>alert('" + dr.GetValue(2).ToString() + "');</script>");
                            Response.Redirect("homepage.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid credentials');</script>");
                    }
                }
                else if (rdbBuddy.Checked)
                {
                    rdbUser.Checked = false;
                    rdbVet.Checked = false;
                    SqlCommand cmd = new SqlCommand("select * from PetBuddy where p_username='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox2.Text.Trim() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    //TextBox2.Text.Trim();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Session["role"] = "PetBuddy";
                            Session["UserID"] = dr["pb_ID"];
                            Session["username"] = dr["Name"];
                            Response.Write("<script>alert('" + dr.GetValue(1).ToString() + "');</script>");
                            Response.Redirect("homepage.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid credentials');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}