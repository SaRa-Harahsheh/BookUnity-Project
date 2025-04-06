using System;
using System.IO;
using System.Web.UI.WebControls;

namespace Project_4_.Books
{
    public partial class WebForm1 : System.Web.UI.Page
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
            string loggin = Server.MapPath("~/App_Data/LoggedUser.txt");

            //FileInfo checkLogin = new FileInfo(loggin);

            if (string.IsNullOrWhiteSpace(File.ReadAllText(loggin)))
            {
                Response.Redirect("../Users/loginPage.aspx");
            }

        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //Button btn = (Button)sender;
            //int bookID = Convert.ToInt32(btn.CommandArgument);

            string bookValue = Request.QueryString["value"];
            string bookReservetionFile = Server.MapPath("~/App_Data/ReservationsBook.txt");
            string loggedUser = File.ReadAllText(Server.MapPath("~/App_Data/LoggedUser.txt")).Trim();
            string bookID = Request.QueryString["value"];

            string endDate = borrowDate.Text;
            string endTime = borrowTime.Text;

            DateTime currentDateTime = DateTime.Now;
            string currentDate = currentDateTime.ToString("yyyy-MM-dd");
            string currentTime = currentDateTime.ToString("HH:mm");

            int resID = File.ReadAllLines(bookReservetionFile).Length + 1;
            string newBookRes = $"{resID},{loggedUser},{bookID},{endDate},{endTime},{currentDate},{currentTime},Pending\n";

            File.AppendAllText(bookReservetionFile, newBookRes);

            /*---*/

            string booksFile = Server.MapPath("~/App_Data/Books.txt");
            string [] allBooks = File.ReadAllLines (booksFile);

            for(int i=0; i<allBooks.Length; i++) 
            {
                string [] bookData = allBooks[i].Split(',');
                if (bookData[0] == bookID) 
                {
                    bookData[4] = "Reserved";
                    allBooks[i] = $"{bookData[0]},{bookData[1]},{bookData[2]},{bookData[3]},{bookData[4]}";
                    File.WriteAllLines(booksFile, allBooks);
                    break;
                }
            }

            btnConfirm.Visible = false;
            goToProfile.Visible = true;
            msg.Text = "Your Request Was Submitted!";
            msg.Visible = true;

        }

        protected void goToProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Users/ProfilePage.aspx");
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            File.WriteAllText(Server.MapPath("~/App_Data/LoggedUser.txt"), string.Empty);
            profile.Visible = false;
            lnkLogout.Visible = false;
            signIn.Visible = true;
            logIn.Visible = true;
            Response.Redirect("../Home.aspx");
        }
    }
}