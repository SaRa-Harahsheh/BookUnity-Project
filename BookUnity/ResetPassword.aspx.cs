using System;
using System.Collections.Generic;
using System.IO;

namespace Project_4_
{
    public partial class ResetPassword : System.Web.UI.Page
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

        protected void ChangePasswordButton_Click(object sender, EventArgs e)
        {
            string email = EmailTextBox.Text.Trim();
            string oldPassword = OldPasswordTextBox.Text.Trim();
            string newPassword = NewPasswordTextBox.Text.Trim();
            string confirmPassword = ConfirmPasswordTextBox.Text.Trim();

            if (!string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(oldPassword) &&
                !string.IsNullOrEmpty(newPassword) && !string.IsNullOrEmpty(confirmPassword))
            {
                // Check if new password and confirm password match
                if (newPassword == confirmPassword)
                {
                    // Call method to change password
                    bool isPasswordChanged = ChangePassword(email, oldPassword, newPassword);

                    if (isPasswordChanged)
                    {
                        // Display success message
                        Response.Write("<script>alert('Password changed successfully');</script>");
                    }
                    else
                    {
                        // Display error message if old password doesn't match or email is incorrect
                        Response.Write("<script>alert('Error: Incorrect email or old password');</script>");
                    }
                }
                else
                {
                    // Display error message if new passwords do not match
                    Response.Write("<script>alert('Error: New passwords do not match');</script>");
                }
            }
            else
            {
                // Display error message if any field is empty
                Response.Write("<script>alert('Error: Please fill in all fields');</script>");
            }
        }

        private bool ChangePassword(string email, string oldPassword, string newPassword)
        {
            // Path to the register file (this file contains the registered users)
            string registerFilePath = Server.MapPath("~/App_Data/Users.txt");

            // Read all lines from the register file
            string[] lines = File.ReadAllLines(registerFilePath);
            List<string> updatedLines = new List<string>();
            bool passwordChanged = false;

            foreach (string line in lines)
            {
                string[] parts = line.Split(',');

                // Ensure the line has the expected format (at least 6 parts)
                if (parts.Length == 6)
                {
                    // Check if the email and old password match
                    if (parts[3].Trim() == email && parts[4].Trim() == oldPassword)
                    {
                        // Update the password to the new password
                        updatedLines.Add($"{parts[0]},{parts[1]},{parts[2]},{parts[3]},{newPassword},{parts[5]}");
                        passwordChanged = true;
                    }
                    else
                    {
                        // Add unchanged line to the list
                        updatedLines.Add(line);
                    }
                }
            }

            // If password was changed, write updated data back to the file
            if (passwordChanged)
            {
                File.WriteAllLines(registerFilePath, updatedLines);
            }

            Response.Redirect("~/Users/ProfilePage.aspx");
            return passwordChanged;
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            string loggin = Server.MapPath("~/App_Data/LoggedUser.txt");

            //FileInfo checkLogin = new FileInfo(loggin);

            if (string.IsNullOrWhiteSpace(File.ReadAllText(loggin)))
            {
                Response.Redirect("~/Users/loginPage.aspx");
            }
            else
            {
                Response.Redirect("~/Users/ProfilePage.aspx");
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
    }
}