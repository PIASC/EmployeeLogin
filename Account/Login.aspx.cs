using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.SessionState;

namespace LoginApplication.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];

            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void ValidateUser(object sender, EventArgs e)
        {
            int userId;
            //string response = "";
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            //using (SqlConnection con = new SqlConnection(@"Server=.\SQLEXPRESS;Database=PIASC;Integrated Security=false;User ID=sa;Password=hsg45900;connection timeout=30;" ))
            //{
            //    using (SqlCommand cmd = new SqlCommand("dbo.Validate_User"))
            //    {
            //        cmd.CommandType = CommandType.StoredProcedure;
            //        cmd.Parameters.AddWithValue("@Username", Login1.UserName);
            //        cmd.Parameters.AddWithValue("@Password", Login1.Password);
            //        cmd.Connection = con;
            //        con.Open();
            //        userId = Convert.ToInt32(cmd.ExecuteScalar());
            //        con.Close();
            //    }
            //    switch (userId)
            //    {
            //        case -1:
            //            Login1.FailureText = "Username and/or password is incorrect.";
            //            break;
            //        case -2:
            //            Login1.FailureText = "Account has not been activated.";
            //            break;
            //        default:
            //            HttpContext.Current.Session["user"]= Session.SessionID;
            //            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
            //            break;
            //    }
            //}
            {
                using (SqlCommand cmd = new SqlCommand("dbo.piascLogin"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@pLoginName", Login1.UserName);
                    cmd.Parameters.AddWithValue("@pPassword", Login1.Password);

                    cmd.Connection = con;
                    con.Open();
                    userId=Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
                switch (userId)
                {
                    case -1:
                        Login1.FailureText = "Username and/or password is incorrect.";
                        break;
                    case -2:
                        Login1.FailureText = "Account has not been activated.";
                        break;
                    default:
                        HttpContext.Current.Session["user"] = Session.SessionID;
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                        break;
                }
            }

        }
    }
}




