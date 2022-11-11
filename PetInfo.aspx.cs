using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Library_Management_New
{
    public partial class PetInfo : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Write("<script>alert('You are not logged in. Redirecting to login. . .');</script>");
                Response.Redirect("userlogin.aspx");
            }
            else
            {
                getPetInfo();
            }

        }

        private void getPetInfo()
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            cmd = con.CreateCommand();
            cmd.CommandText = "select * from Pet where client_ID = '" + Session["UserID"] + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            rPetInfo.DataSource = dt;
            rPetInfo.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPet.aspx");
        }

        protected void rPetInfo_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                cmd = con.CreateCommand();
                cmd.CommandText = "DELETE from Pet where pet_ID = '" + e.CommandArgument + "'";
                cmd.ExecuteNonQuery();
                
                Response.Redirect("PetInfo.aspx");
            }
            else if (e.CommandName == "edit")
            {
                Response.Redirect("RegisterPet.aspx?id=" + e.CommandArgument);
            }
        }
    }
}