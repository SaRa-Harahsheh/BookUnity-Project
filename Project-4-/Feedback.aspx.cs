using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.UI.WebControls;

namespace Project_4_
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<UserMessage> userMessages = ReadUserMessagesFromFile();
                MessagesRepeater.DataSource = userMessages;
                MessagesRepeater.DataBind();
            }
        }
        protected void ReplyButton_Click(object sender, EventArgs e)
        {
            Button replyButton = (Button)sender;
            string email = replyButton.CommandArgument;
            TextBox replyTextBox = (TextBox)replyButton.Parent.FindControl("ReplyTextBox");
            string message = replyTextBox.Text;

            OpenGmailWebApp(email, "Reply to your message", message);
        }

        private void OpenGmailWebApp(string toEmail, string subject, string body)
        {
            string gmailUrl = $"https://mail.google.com/mail/?view=cm&fs=1&to={toEmail}&su={HttpUtility.UrlEncode(subject)}&body={HttpUtility.UrlEncode(body)}";
            string script = $"window.open('{gmailUrl}', '_blank');";
            ClientScript.RegisterStartupScript(this.GetType(), "gmail", script, true);
        }

        private List<UserMessage> ReadUserMessagesFromFile()
        {
            List<UserMessage> userMessages = new List<UserMessage>();
            string[] lines = File.ReadAllLines(Server.MapPath("~/App_Data/FeedBack.txt"));
            UserMessage userMessage = null;

            foreach (string line in lines)
            {
                if (line.StartsWith("First Name:"))
                {
                    if (userMessage != null)
                    {
                        userMessages.Add(userMessage);
                    }
                    userMessage = new UserMessage();
                    userMessage.FirstName = line.Substring(11).Trim();
                }
                else if (line.StartsWith("Last Name:"))
                {
                    userMessage.LastName = line.Substring(10).Trim();
                }
                else if (line.StartsWith("Email:"))
                {
                    userMessage.Email = line.Substring(6).Trim();
                }
                else if (line.StartsWith("Message:"))
                {
                    userMessage.MessageContent = line.Substring(8).Trim();
                }
            }

            if (userMessage != null)
            {
                userMessages.Add(userMessage);
            }

            return userMessages;
        }

        protected void returnDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("DashboardAdmin.aspx");
        }
    }

    public class UserMessage
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string MessageContent { get; set; }
    }
}
   