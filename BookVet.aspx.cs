using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_New
{
    public partial class BookVet : System.Web.UI.Page
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

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PetInfo.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            cmd = con.CreateCommand();

            string startDnt = TextBox2.Text.ToString() + " " + txtStart.Text;
            string endDnt = TextBox2.Text.ToString() + " " + txtEnd.Text;
            cmd.CommandText = "insert into Booking(client_ID,pet_ID,v_ID, startDnT,endDnT,ServiceID) Values('" + Session["UserID"].ToString() + "', '" + DropDownList2.SelectedValue.ToString() + "', '" + ddlVet.SelectedValue.ToString() + "','" + startDnt + "','" + endDnt + "','" + DropDownList3.SelectedValue.ToString() + "')";
            cmd.ExecuteNonQuery();
            Response.Redirect("ClientBookings.aspx");
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}