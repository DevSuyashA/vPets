﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_New
{
    public partial class homepage : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //    try
        //    {
        //        if (IsPostBack)
        //        {

        //            if (Session["role"].ToString() == "admin")
        //            {

        //                Button1.Enabled = false;
        //                Button2.Enabled = false;
        //                Button3.Enabled = false;
        //            }
        //            else if (Session["role"].ToString() == "vet")
        //            {
        //                Button1.Enabled = false;
        //                Button2.Enabled = false;
        //                Button3.Enabled = false;

        //            }
        //            else if (Session["role"].ToString() == "PetBuddy")
        //            {
        //                Button1.Enabled = false;
        //                Button2.Enabled = false;
        //                Button3.Enabled = false;
        //            }
        //            else
        //            {
        //                Button1.Enabled = true;
        //                Button2.Enabled = true;
        //                Button3.Enabled = true;


        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {

        //    }
        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Redirecting you to login . . .');</script>");

            Response.Redirect("PetInfo.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookPetB.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookVet.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AboutUs.aspx");
        }
    }
}