using System;
using System.IO;

namespace Project_4_
{
    public partial class Contact : System.Web.UI.Page
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
            Response.Redirect("Home.aspx");

        }
        protected void SendButton_Click(object sender, EventArgs e)
        {

            // Write form data to a text file
            string filePath = Server.MapPath("~/App_Data/Feedback.txt");
            using (StreamWriter writer = new StreamWriter(filePath, true))
            {
                writer.WriteLine("First Name: " + FirstName.Text);
                writer.WriteLine("Last Name: " + LastName.Text);
                writer.WriteLine("Email: " + Email.Text);
                writer.WriteLine("Message: " + Message.Text);
                writer.WriteLine("-----");
            }

            // Display a success message to the user
            Response.Write("<script>alert('Thank you for contacting us. Your message has been saved successfully.');</script>");
        }
    }
}