using System;
using System.IO;

namespace Project_4_.Users
{
    public partial class loginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sigIn_Click(object sender, EventArgs e)

        {

            string file = Server.MapPath("~/App_Data/Users.txt");

            if (email.Text == "admin@gmail.com" && password.Text == "123")
            {
                storLoged();
                Response.Redirect("../DashboardAdmin.aspx");
            }
            else
            {
                string files = Server.MapPath("~/App_Data/LoggedUser.txt");
                string[] users = File.ReadAllLines(file); 
                foreach (string user in users)
                {

                    string[] userData = user.Split(',');
                    if (email.Text == userData[3] && password.Text == userData[4])
                    {
                        result.Text = "login successifuly";
                        result.Visible = true;
                        storLoged();

                        Response.Redirect("../Home.aspx");
                    }
              }
                result.Text = "Invalid username or password ";
                result.Visible = true;
            }
        }
        private void storLoged()
        {
            string filePath = Server.MapPath("~/App_Data/LoggedUser.txt");

                File.WriteAllText(filePath, email.Text);
        }

    }
}