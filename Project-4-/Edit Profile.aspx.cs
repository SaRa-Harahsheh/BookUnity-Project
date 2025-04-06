using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Web.UI.WebControls;

namespace Project_4_
{
    public partial class Edit_Profile : System.Web.UI.Page
    {
        public string imagePath;

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
            if (!IsPostBack)
            {
                string email = ReadLoginEmail();
                if (!string.IsNullOrEmpty(email))
                {
                    UserProfile userProfile = GetUserProfileByEmail(email);
                    if (userProfile != null)
                    {
                        PopulateFields(userProfile);
                    }
                }
            }

            //Load photo
            string loginFilePath = Server.MapPath("~/App_Data/LoggedUser.txt");
            string registerFilePath = Server.MapPath("~/App_Data/Users.txt");

            string[] loggedUser = File.ReadAllLines(loginFilePath);
            string[] users = File.ReadAllLines(registerFilePath);

            foreach (string user in users) 
            {
                string[] userData = user.Split(',');
                if (userData[3] == loggedUser[0])
                {
                    imagePath = userData[5];
                    ProImg.ImageUrl = imagePath;
                }
            }
        }

        private string ReadLoginEmail()
        {
            string loginFilePath = Server.MapPath("~/App_Data/LoggedUser.txt");
            return File.ReadAllText(loginFilePath).Trim();
        }

        private UserProfile GetUserProfileByEmail(string email)
        {
            string registerFilePath = Server.MapPath("~/App_Data/Users.txt");
            string[] lines = File.ReadAllLines(registerFilePath);

            foreach (string line in lines)
            {
                string[] parts = line.Split(',');
                if (parts.Length == 6 && parts[3].Trim() == email)
                {
                    return new UserProfile
                    {
                        FirstName = parts[0].Trim(),
                        LastName = parts[1].Trim(),
                        PhoneNumber = parts[2].Trim(),
                        Email = parts[3].Trim(),
                        Password = parts[4].Trim(),
                        ProfileImagePath = parts[5].Trim()
                    };
                }
            }
            return null;
        }

        private void PopulateFields(UserProfile userProfile)
        {
            FirstNameTextBox.Text = userProfile.FirstName;
            LastNameTextBox.Text = userProfile.LastName;
            PhoneNumberTextBox.Text = userProfile.PhoneNumber;
            EmailTextBox.Text = userProfile.Email;
            ProImg.ImageUrl = userProfile.ProfileImagePath;
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string email = ReadLoginEmail();
            if (!string.IsNullOrEmpty(email))
            {
                string registerFilePath = Server.MapPath("~/App_Data/Users.txt");

                //string imagePath = "~/Images/22.png";

                if ((FileUpload2.PostedFile != null) && (FileUpload2.PostedFile.ContentLength > 0))
                {
                    string folderPath = "~/Images/";
                    string fileName = Path.GetFileName(FileUpload2.PostedFile.FileName);
                    imagePath = Path.Combine(folderPath, fileName);
                }
                UserProfile updatedProfile = new UserProfile
                {
                    FirstName = FirstNameTextBox.Text.Trim(),
                    LastName = LastNameTextBox.Text.Trim(),
                    PhoneNumber = PhoneNumberTextBox.Text.Trim(),
                    Email = EmailTextBox.Text.Trim(),

                    ProfileImagePath = imagePath
                };

                UpdateUserProfile(updatedProfile);
            }
            Response.Redirect("Edit Profile.aspx");
        }

        private void UpdateUserProfile(UserProfile updatedProfile)
        {
            string registerFilePath = Server.MapPath("~/App_Data/Users.txt");
            string[] lines = File.ReadAllLines(registerFilePath);
            List<string> updatedLines = new List<string>();

            foreach (string line in lines)
            {
                string[] parts = line.Split(',');
                if (parts.Length == 6 && parts[3].Trim() == updatedProfile.Email)
                {
                    updatedLines.Add($"{updatedProfile.FirstName},{updatedProfile.LastName},{updatedProfile.PhoneNumber},{updatedProfile.Email},{parts[4]},{updatedProfile.ProfileImagePath}");
                }
                else
                {
                    updatedLines.Add(line);
                }
            }

            File.WriteAllLines(registerFilePath, updatedLines);
        }

        public class UserProfile
        {
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string PhoneNumber { get; set; }
            public string Email { get; set; }
            public string Password { get; set; }
            public string ProfileImagePath { get; set; }
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

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Users/ProfilePage.aspx");
        }
    }
}