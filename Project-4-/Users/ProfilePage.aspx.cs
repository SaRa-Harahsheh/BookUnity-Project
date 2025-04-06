using System;
using System.IO;
using System.Web.UI.WebControls;

namespace Project_4_.Users
{
    public partial class ProfilePage : System.Web.UI.Page
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
                profile1.Visible = true;
                lnkLogout.Visible = true;
            }

            if (!IsPostBack)
            {
                string filePath = Server.MapPath("~/App_Data/Users.txt");
                if (File.Exists(filePath))
                {
                    string[] lines = File.ReadAllLines(filePath);
                    string[] loggedInUser = File.ReadAllLines(Server.MapPath("~/App_Data/LoggedUser.txt"));
                    foreach (string line in lines)
                    {
                        string[] data = line.Split(',');

                        if (data[3] == loggedInUser[0])  // تأكد من وجود جميع الحقول
                        {
                            imgBook.ImageUrl = data[5].Trim();
                            userN.Text = data[0].Trim();
                            fName.Text = data[0];
                            uName.Text = data[1].Trim();
                            tel.Text = data[2].Trim();
                            email.Text = data[3].Trim();

                            break;
                        }
                    }
                }

                bookTab_Click();
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            File.WriteAllText(Server.MapPath("~/App_Data/LoggedUser.txt"), string.Empty);
            profile1.Visible = false;
            lnkLogout.Visible = false;
            signIn.Visible = true;
            logIn.Visible = true;
        }
        protected void bookTab_Click()
        {

            string[] bookHistoryFile = File.ReadAllLines(Server.MapPath("~/App_Data/BookHistory.txt"));
            string bookResFile = Server.MapPath("~/App_Data/ReservationsBook.txt");
            string loggedUser = File.ReadAllText(Server.MapPath("~/App_Data/LoggedUser.txt"));
            string[] books = File.ReadAllLines(Server.MapPath("~/App_Data/Books.txt"));
            var bookName = "";
            string[] currentBookings = File.ReadAllLines(bookResFile);

            for (int i = 0; i < currentBookings.Length; i++)
            {
                string[] bookReq = currentBookings[i].Split(',');
                if (bookReq[1] == loggedUser.Trim())
                {
                    foreach (string book in books)
                    {
                        string[] bookData = book.Split(',');
                        if (bookReq[2] == bookData[0])
                        {
                            bookName = bookData[1];
                            break;
                        }
                    }

                    TableRow tableRow = new TableRow();
                    TableCell cell1 = new TableCell();
                    TableCell cell2 = new TableCell();
                    TableCell cell3 = new TableCell();
                    cell1.Text = bookName;
                    cell2.Text = bookReq[3];
                    cell3.Text = bookReq[7];

                    tableRow.Cells.Add(cell1);
                    tableRow.Cells.Add(cell2);
                    tableRow.Cells.Add(cell3);

                    currentBookingsTable.Rows.Add(tableRow);
                }
            }

            //History Book
            for (int i = 0; i < bookHistoryFile.Length; i++)
            {
                string[] historyData = bookHistoryFile[i].Split(',');
                if (historyData[1] == loggedUser.Trim())
                {
                    foreach (string book in books)
                    {
                        string[] bookData = book.Split(',');
                        if (historyData[0] == bookData[0])
                        {
                            bookName = bookData[1];
                            break;
                        }
                    }

                    TableRow tableRow = new TableRow();
                    TableCell cell1 = new TableCell();
                    TableCell cell2 = new TableCell();
                    TableCell cell3 = new TableCell();
                    cell1.Text = bookName;
                    cell2.Text = historyData[5];
                    cell3.Text = historyData[3];

                    tableRow.Cells.Add(cell1);
                    tableRow.Cells.Add(cell2);
                    tableRow.Cells.Add(cell3);

                    previousBookingsTable.Rows.Add(tableRow);
                }
            }


            //Current Room
            string[] allRooms = File.ReadAllLines(Server.MapPath("~/App_Data/Rooms.txt"));
            string[] resRooms = File.ReadAllLines(Server.MapPath("~/App_Data/RoomReservations.txt"));
            string[] historyRooms = File.ReadAllLines(Server.MapPath("~/App_Data/RoomHistory.txt"));
            var roomType = "";

            for (int i = 0; i < resRooms.Length; i++)
            {
                string[] roomReq = resRooms[i].Split(',');
                if (roomReq[1] == loggedUser.Trim())
                {
                    foreach (string room in allRooms)
                    {
                        string[] roomData = room.Split(',');
                        if (roomReq[2] == roomData[1])
                        {
                            roomType = roomData[1];
                            break;
                        }
                    }

                    TableRow tableRow = new TableRow();
                    TableCell cell1 = new TableCell();
                    TableCell cell2 = new TableCell();
                    TableCell cell3 = new TableCell();
                    cell1.Text = roomType;
                    cell2.Text = roomReq[3];
                    cell3.Text = roomReq[7];

                    tableRow.Cells.Add(cell1);
                    tableRow.Cells.Add(cell2);
                    tableRow.Cells.Add(cell3);

                    currentRooms.Rows.Add(tableRow);
                }
            }

            //History Room
            for (int i = 0; i < historyRooms.Length; i++)
            {
                string[] historyData = historyRooms[i].Split(',');
                if (historyData[1] == loggedUser.Trim())
                {
                    foreach (string room in allRooms)
                    {
                        string[] roomData = room.Split(',');
                        if (historyData[0] == roomData[0])
                        {
                            roomType = roomData[1];
                            break;
                        }
                    }

                    TableRow tableRow = new TableRow();
                    TableCell cell1 = new TableCell();
                    TableCell cell2 = new TableCell();
                    TableCell cell3 = new TableCell();
                    cell1.Text = roomType;
                    cell2.Text = historyData[2];

                    tableRow.Cells.Add(cell1);
                    tableRow.Cells.Add(cell2);

                    previousRooms.Rows.Add(tableRow);
                }
            }
        }



        protected void editProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Edit Profile.aspx");
        }

        protected void resetPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ResetPassword.aspx");
        }

        protected void lnkLogout_Click1(object sender, EventArgs e)
        {
            File.WriteAllText(Server.MapPath("~/App_Data/LoggedUser.txt"), string.Empty);
            profile1.Visible = false;
            lnkLogout.Visible = false;
            Response.Redirect("../Home.aspx");
        }
    }
    }
