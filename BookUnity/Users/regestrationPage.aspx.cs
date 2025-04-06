using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_4_.Users
{
    public partial class regestrationPage : System.Web.UI.Page
    {
        public string filePath;
        public string imageFolderPath;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void registar_Click(object sender, EventArgs e)
        {
            string MsgText = "";
            // Email ID Validation
            bool emailidValStatus = VerifyEmailID(email.Text);
            
            if (emailidValStatus == false)
            {

                MsgText += "Invalid email id or email id required.</br>";
            }

            lblResultMessage.Text = MsgText;
            lblResultMessage.Font.Bold = false;
            lblResultMessage.Font.Size = 14;
            lblResultMessage.ForeColor = System.Drawing.Color.Red;

            string file = Server.MapPath("~/App_Data/Users.txt");

            string imagePath = "https://static.vecteezy.com/system/resources/previews/020/911/740/non_2x/user-profile-icon-profile-avatar-user-icon-male-icon-face-icon-profile-icon-free-png.png";

            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                string folderPath = "~/Images/";
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                imagePath = Path.Combine(folderPath, fileName);
            }


            if (!File.Exists(file))
            {
                using (StreamWriter sw = File.CreateText(file))
                {
                    sw.WriteLine($"{fName.Text},{uName.Text},{phone.Text},{email.Text},{password.Text},{imagePath}");
                }
            }
            else
            {
                using (StreamWriter ss = new StreamWriter(file, true))
                {
                    ss.WriteLine($"{fName.Text},{uName.Text},{phone.Text},{email.Text},{password.Text},{imagePath}");
                }

            }
            Response.Redirect("loginPage.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                string folderPath = Server.MapPath("~/Images/");
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string savePath = Path.Combine(folderPath, fileName);

                    FileUpload1.PostedFile.SaveAs(savePath);
    
            }
        }
        public static bool VerifyEmailID(string email)
        {
            string expresion;
            expresion = "\\w+([-+.']\\w+)@\\w+([-.]\\w+)\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, string.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        public bool EmailAddressValidator(string email)
        {
            if (new EmailAddressAttribute().IsValid(email) && !string.IsNullOrEmpty(email))
                return true;
            else
                return false;
        }
    }
}