using System;
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
    public partial class ClientBookings : System.Web.UI.Page

    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Write("<script>alert('You are not logged in. Redirecting to login. . .');</script>");
                Response.Redirect("userlogin.aspx");
            }

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();

            }

            if (Session["role"].ToString() == "user")
            {
                MultiView1.ActiveViewIndex = 0;
                int clientid = Convert.ToInt32( Session["UserID"]);
                SqlCommand cmd = new SqlCommand("select b.b_ID,b.startDnT, b.endDnt,s.Name as serviceType,p.petName,pb.Name as pbName,v.Name as vName from ((((Booking b INNER JOIN Pet p on b.pet_ID=p.pet_ID) INNER JOIN PetBuddy pb on b.pb_ID=pb.pb_ID) INNER JOIN Veterinary v on b.v_ID=v.vID)INNER JOIN Service s on b.ServiceID=s.ServiceID) where b.client_ID = '" + Session["UserID"] + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                
                rUser.DataSource =dt;
                //GridView1.DataSource = dt;


                rUser.DataBind();
            }

            else if (Session["role"].ToString() == "vet")
            {
                MultiView1.ActiveViewIndex = 1;
                SqlCommand cmd = new SqlCommand("select b.b_ID,b.endDnt,c.Name as cName,p.petName as pName,p.Breed as pBreed,p.Age as pAge,p.petType as pType,s.Name as serviceType from (((Booking b INNER JOIN Client c on b.client_ID=c.client_ID) INNER JOIN Pet p on b.pet_ID=p.pet_ID) INNER JOIN Service s on b.ServiceID=s.ServiceID) where b.v_ID = '" + Session["UserID"] + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rVet.DataSource = dt;
                rVet.DataBind();

            }
            else if (Session["role"].ToString() == "PetBuddy")
            {
                MultiView1.ActiveViewIndex = 2;
                SqlCommand cmd = new SqlCommand("select b.b_ID,b.destAddress,b.startDnt,b.endDnt,c.Name as cName,p.petName as pName,p.Breed as pBreed,p.Age as pAge, p.petType as pType,s.Name as serviceType from (((Booking b INNER JOIN Client c on b.client_ID=c.client_ID) INNER JOIN Pet p on b.pet_ID=p.pet_ID) INNER JOIN Service s on b.ServiceID=s.ServiceID) where b.pb_ID = 0 and b.v_ID = 0 ", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                rBuddy.DataSource = dt;
                rBuddy.DataBind();
                cmd = new SqlCommand("select b.b_ID,b.destAddress,b.startDnt,b.endDnt,c.Name as cName,p.petName as pName,p.Breed as pBreed,p.Age as pAge, p.petType as pType,s.Name as serviceType from (((Booking b INNER JOIN Client c on b.client_ID=c.client_ID) INNER JOIN Pet p on b.pet_ID=p.pet_ID) INNER JOIN Service s on b.ServiceID=s.ServiceID) where ((DATEDIFF(day,convert(varchar,b.endDnt,101), convert(varchar,getdate(),101))< 0) and (DATEDIFF(hour,convert(varchar,b.endDnt,108), convert(varchar,getdate(),108))<0)) and  b.pb_ID = '"+ Session["UserID"] + "'", con);
                 sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                rBuddyOncoming.DataSource = dt;
                rBuddyOncoming.DataBind();
                cmd = new SqlCommand("select b.b_ID,b.destAddress,b.startDnt,b.endDnt,c.Name as cName,p.petName as pName,p.Breed as pBreed,p.Age as pAge, p.petType as pType,s.Name as serviceType from (((Booking b INNER JOIN Client c on b.client_ID=c.client_ID) INNER JOIN Pet p on b.pet_ID=p.pet_ID) INNER JOIN Service s on b.ServiceID=s.ServiceID) where (DATEDIFF(day,convert(varchar,b.endDnt,101), convert(varchar,getdate(),101))> 0) and  b.pb_ID = '" + Session["UserID"] + "'", con);
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                rBuddyDone.DataSource = dt;
                rBuddyDone.DataBind();

            }

        }

        protected void rBuddy_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "accept")
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("Update Booking set pb_ID = '" + Session["UserID"] + "' where b_ID = '"+e.CommandArgument+"'",con);
                cmd.ExecuteNonQuery();
                Response.Redirect("ClientBookings.aspx");
            }
        }
    }
}