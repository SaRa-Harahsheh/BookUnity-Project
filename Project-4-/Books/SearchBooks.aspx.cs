using System;
using System.IO;
using System.Linq;

namespace Project_4_.Books
{
    public partial class SearchBooks : System.Web.UI.Page
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
            Response.Redirect("../Home.aspx");

        }
        protected void searchBookBtn_Click(object sender, EventArgs e)
        {
            string booksFile = Server.MapPath("~/App_Data/Books.txt");
            string[] allBooks = File.ReadAllLines(booksFile);
            bookSearchResults.InnerHtml = "";
            for (int i = 0; i < allBooks.Length; i++)
            {
                string[] book = allBooks[i].Split(',');
                //if (bookSearch.Text.ToLower().Trim() == book[1].ToLower().Trim() || bookSearch.Text.ToLower().Trim() == book[2].ToLower().Trim()
                //    || bookSearch.Text.ToLower().Trim() == book[3].ToLower().Trim())
                if (book[1].ToLower().Trim().Contains(bookSearch.Text.ToLower().Trim())
                    || book[2].ToLower().Trim().Contains(bookSearch.Text.ToLower().Trim())
                    || book[3].ToLower().Trim().Contains(bookSearch.Text.ToLower().Trim()))
                {
                    if (book[4] == "Available")
                    {
                        bookSearchResults.InnerHtml += $@"
<div class=""card border-0 mb-4 mt-4"">
    <div class=""d-flex"">
        <div class=""horizontal-card-bg-img""></div>
        <div class=""flex-fill"">
            <div class=""card-body"">
                <div class=""font-weight-bold mt-3"">{book[1]}</div>
                <div class=""mb-3"">{book[2]}</div>
            </div>
        </div>
        <div class=""horizontal-card-btn-container d-flex justify-content-center align-items-center"">
            <button class=""borrowBtn"" id=""btnSend{book[0]}"" onclick=""location.href='/Books/WebForm1.aspx?value={book[0]}'; return false;"">Borrow</button>
        </div>
    </div>
</div>";

                        //<asp:Button class=""borrowBtn"" ID=""btnSend{book[0]}"" runat=""server"" CommandArgument=""{book[0]}"">Borrow</asp:Button>

                    }
                    else
                    {
                        bookSearchResults.InnerHtml += $@"
<div class=""card border-0 mb-4 mt-4"">
    <div class=""d-flex"">
        <div class=""horizontal-card-bg-img""></div>
        <div class=""flex-fill"">
            <div class=""card-body"">
                <div class=""font-weight-bold mt-3"">{book[1]}</div>
                <div class=""mb-3"">{book[2]}</div>
            </div>
        </div>
        <div class=""horizontal-card-btn-container d-flex justify-content-center align-items-center"">
           <div class=""mb-3"">Reserved</div>
        </div>
    </div>
</div>";
                    }

                }
            }
        }
    }
}