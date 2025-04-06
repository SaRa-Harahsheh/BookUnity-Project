using System;
using System.IO;

namespace Project_4_
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(File.ReadAllText(Server.MapPath("~/App_Data/LoggedUser.txt"))))
            {
                signIn.Visible = true;
                logIn.Visible = true;
            }
            else
            {
                profile.Visible = true;
                lnkLogout.Visible = true;
            }
        }
        protected void lnkLogout_Click(object sender, EventArgs e)
        {
                        File.WriteAllText(Server.MapPath("~/App_Data/LoggedUser.txt"), string.Empty);
            profile.Visible = false;
            lnkLogout.Visible = false;
            signIn.Visible = true;
            logIn.Visible = true;
        }

        protected void borrow_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(File.ReadAllText(Server.MapPath("~/App_Data/LoggedUser.txt"))))
            {
                Response.Redirect("Users/loginPage.aspx");
            }
            else
            {
                Response.Redirect("Books/SearchBooks.aspx");
            }
        }
    }
}