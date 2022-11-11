using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vPets_Services
{
    public partial class BookPetB : System.Web.UI.Page
    {
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
            {
                signUpNewMember();
            }
        }
        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string startdnt = TextBox2.Text.Trim() + " " + TextBox9.Text.Trim();
                string enddnt = TextBox2.Text.Trim() + " " + TextBox1.Text.Trim();
                SqlCommand cmd = new SqlCommand("INSERT INTO Booking(client_ID,pet_ID,destAddress,startDnt,endDnt,ServiceID) Values(@clientId,@pet_name,@full_address,@startTime,@endtime,@serviceId)", con);
                cmd.Parameters.AddWithValue("@pet_name", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@endtime", enddnt);
                cmd.Parameters.AddWithValue("@startTime", startdnt);
                cmd.Parameters.AddWithValue("@serviceId", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@clientId", Session["UserID"]);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Booking Succesfull');</script>");
                Response.Redirect("ClientBookings.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}