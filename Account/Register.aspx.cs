using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace LoginApplication.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, createPersistentCookie: false);


            string response = "";
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            string constr = ConfigurationManager.ConnectionStrings[System.Environment.MachineName].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("dbo.piascAddUser"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@pLogin", RegisterUser.Email);
                    cmd.Parameters.AddWithValue("@pPassword", RegisterUser.Password);

                    cmd.Connection = con;
                    con.Open();
                    response = Convert.ToString(cmd.ExecuteScalar());
                    con.Close();
                }
                if (response == "Invalid EMail")
                {
                    RegisterUser.InvalidEmailErrorMessage = "Username and/or password is incorrect.";
                }
                else
                {
                    HttpContext.Current.Session["user"] = Session.SessionID;
                    string continueUrl = RegisterUser.ContinueDestinationPageUrl;
                    if (!OpenAuth.IsLocalUrl(continueUrl))
                    {
                        continueUrl = "~/main.aspx";
                    }
                    Response.Redirect(continueUrl);
                    //Response.Redirect("~/main.aspx");
                }
            }
        }
    }
}
    