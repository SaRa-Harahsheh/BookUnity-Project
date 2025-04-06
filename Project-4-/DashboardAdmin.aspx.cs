using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_4_
{
    public partial class DashboardAdmin : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            showStatistics();
            LoadDashboardData1();
            LoadDashboardData();
            LoadDashboardData2();
            LoadDashboardData3();
            LoadDashboardData4();
            voiLoadDashboardData5();
        }


        protected void showStatistics()
        {
            string[] resFile = File.ReadAllLines(Server.MapPath("~/App_Data/ReservationsBook.txt"));
            string[] booksFile = File.ReadAllLines(Server.MapPath("~/App_Data/Books.txt"));
            string[] usersFile = File.ReadAllLines(Server.MapPath("~/App_Data/Users.txt"));

            lblBookReservationCount.Text = Convert.ToString(resFile.Length);
            lblUserCount.Text = Convert.ToString(usersFile.Length);
            lblRoomReservationCount.Text = Convert.ToString(booksFile.Length);
        }
        private void LoadDashboardData()
        {
            string file = Server.MapPath("~/App_Data/ReservationsBook.txt");
            if (File.Exists(file))
            {
                string[] data = File.ReadAllLines(file);
                List<string> list = new List<string>();

                foreach (string line in data)
                {
                    string[] s = line.Split(',');

                    if (s.Length >= 8 && s[7] == "Accepted")
                    {
                        TableRow row1 = new TableRow();

                        // Reservation Data
                        TableCell cell1 = new TableCell();
                        cell1.Text = s[0];
                        row1.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = s[1];
                        row1.Cells.Add(cell2);

                        TableCell cell3 = new TableCell();
                        cell3.Text = s[3];
                        row1.Cells.Add(cell3);

                        TableCell cell4 = new TableCell();
                        cell4.Text = s[4];
                        row1.Cells.Add(cell4);

                        TableCell cell5 = new TableCell();
                        cell5.Text = s[5];
                        row1.Cells.Add(cell5);

                        TableCell cell6 = new TableCell();
                        cell6.Text = s[6];
                        row1.Cells.Add(cell6);

                        TableCell cell7 = new TableCell();
                        cell7.Text = "✔ " + s[7];
                        row1.Cells.Add(cell7);

                        Button btn = new Button();
                        btn.Text = "✔ Returned";
                        btn.CssClass = "returnBtn";
                        btn.CommandArgument = s[2].ToString();
                        btn.Click += Returned_btn_Clicked;

                        TableCell cell8 = new TableCell();
                        cell8.Controls.Add(btn);
                        row1.Cells.Add(cell8);

                        table2.Controls.Add(row1);
                    }
                }
            }
        }
        private void LoadDashboardData1()
        {
            string file = Server.MapPath("~/App_Data/ReservationsBook.txt");

            if (File.Exists(file))
            {
                string[] req = File.ReadAllLines(file);

                for (int i = 0; i < req.Length; i++)
                {
                    string[] r = req[i].Split(',');

                    if (r[7] == "Pending")
                    {

                        TableRow row = new TableRow();

                        TableCell cell1 = new TableCell();
                        cell1.Text = r[0];
                        row.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = r[1];
                        row.Cells.Add(cell2);

                        TableCell cell3 = new TableCell();
                        cell3.Text = r[2];
                        row.Cells.Add(cell3);

                        TableCell cell4 = new TableCell();
                        cell4.Text = r[3];
                        row.Cells.Add(cell4);

                        TableCell cell5 = new TableCell();
                        cell5.Text = r[4];
                        row.Cells.Add(cell5);

                        TableCell cell6 = new TableCell();
                        cell6.Text = r[5];
                        row.Cells.Add(cell6);



                        TableCell cell7 = new TableCell();
                        cell7.Text = r[6];
                        row.Cells.Add(cell7);


                        TableCell cell8 = new TableCell();
                        cell8.Text = "🔴 " + r[7];
                        row.Cells.Add(cell8);

                        Button btn1 = new Button();


                        btn1.Text = "✅ Confirm";
                        btn1.CssClass = "confirmBtn";
                        btn1.CommandArgument = r[0];
                        btn1.Click += confirmBtn_Click;

                        TableCell cell9 = new TableCell();
                        cell9.Controls.Add(btn1);
                        row.Cells.Add(cell9);

                        Button btn2 = new Button();
                        btn2.Text = "✗ Reject";
                        btn2.CssClass = "rejectBtn";
                        btn2.CommandArgument = r[0];
                        btn2.Click += Reject_Click;

                        TableCell cell10 = new TableCell();
                        cell10.Controls.Add(btn2);
                        row.Cells.Add(cell10);

                        table11212.Rows.Add(row);
                    }
                    else { continue; }
                }
            }
            else
            {
                TableRow row = new TableRow();

                TableCell cell1 = new TableCell();
                cell1.Text = "No Data Found";
                row.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = "No Data Found";
                row.Cells.Add(cell2);

                TableCell cell3 = new TableCell();
                cell3.Text = "No Data Found";
                row.Cells.Add(cell3);

                TableCell cell4 = new TableCell();
                cell4.Text = "No Data Found";
                row.Cells.Add(cell4);

                TableCell cell5 = new TableCell();
                cell5.Text = "No Data Found";
                row.Cells.Add(cell5);

                table11212.Rows.Add(row);
            }

        }

        private void LoadDashboardData2()
        {
            string fileRoom = Server.MapPath("~/App_Data/RoomReservations.txt");

            if (File.Exists(fileRoom))
            {
                string[] req1 = File.ReadAllLines(fileRoom);

                for (int i = 0; i < req1.Length; i++)
                {
                    string[] r1 = req1[i].Split(',');

                    TableRow row = new TableRow();

                    TableCell cell1 = new TableCell();
                    cell1.Text = r1[0];
                    row.Cells.Add(cell1);

                    TableCell cell2 = new TableCell();
                    cell2.Text = r1[1];
                    row.Cells.Add(cell2);

                    TableCell cell3 = new TableCell();
                    cell3.Text = r1[2];
                    row.Cells.Add(cell3);

                    TableCell cell4 = new TableCell();
                    cell4.Text = r1[3];
                    row.Cells.Add(cell4);

                    TableCell cell5 = new TableCell();
                    cell5.Text = r1[4];
                    row.Cells.Add(cell5);

                    TableCell cell6 = new TableCell();
                    cell6.Text = r1[5];
                    row.Cells.Add(cell6);

                    TableCell cell7 = new TableCell();
                    cell7.Text = r1[6];
                    row.Cells.Add(cell7);

                    TableCell cell8 = new TableCell();
                    cell8.Text = "🔴 " + r1[7];
                    row.Cells.Add(cell8);

                    Button btn1 = new Button();

                    btn1.Text = "✅ Confirm";
                    btn1.CssClass = "confirmBtn";
                    btn1.CommandArgument = r1[0];
                    btn1.Click += confirmBtn_Click;

                    TableCell cell9 = new TableCell();
                    cell9.Controls.Add(btn1);
                    row.Cells.Add(cell9);

                    Button btn2 = new Button();
                    btn2.Text = "✗ Reject";
                    btn2.CssClass = "rejectBtn";
                    btn2.CommandArgument = r1[0];
                    btn2.Click += Reject_Click;

                    TableCell cell10 = new TableCell();
                    cell10.Controls.Add(btn2);
                    row.Cells.Add(cell10);

                    table1.Rows.Add(row);
                }
            }
            else
            {
                TableRow row = new TableRow();

                TableCell cell1 = new TableCell();
                cell1.Text = "No Data Found";
                row.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = "No Data Found";
                row.Cells.Add(cell2);

                TableCell cell3 = new TableCell();
                cell3.Text = "No Data Found";
                row.Cells.Add(cell3);

                TableCell cell4 = new TableCell();
                cell4.Text = "No Data Found";
                row.Cells.Add(cell4);

                TableCell cell5 = new TableCell();
                cell5.Text = "No Data Found";
                row.Cells.Add(cell5);

                table1.Rows.Add(row);
            }
        }

        private void LoadDashboardData4()
        {
            String fileBook = Server.MapPath("~/App_Data/Books.txt");


            if (File.Exists(fileBook))
            {

                string[] books = File.ReadAllLines(fileBook);



                for (int i = 0; i < books.Length; i++)
                {
                    string[] b = books[i].Split(',');

                    TableRow row = new TableRow();

                    TableCell cellID = new TableCell();
                    cellID.Text = b[0];
                    row.Cells.Add(cellID);

                    TableCell cellTitle = new TableCell();
                    cellTitle.Text = b[1];
                    row.Cells.Add(cellTitle);

                    TableCell cellAuthor = new TableCell();
                    cellAuthor.Text = b[2];
                    row.Cells.Add(cellAuthor);

                    TableCell cellCategory = new TableCell();
                    cellCategory.Text = b[3];
                    row.Cells.Add(cellCategory);

                    TableCell cellStutas = new TableCell();
                    string pre;
                    if (b[4] == "Reserved")
                    {
                        pre = "🔴 ";
                    }
                    else
                    {
                        pre = "✅ ";
                    }
                    cellStutas.Text = pre + b[4];
                    row.Cells.Add(cellStutas);

                    Button REmovebtn = new Button();

                    REmovebtn.Text = "Remove";
                    REmovebtn.CssClass = "removeBtn";
                    REmovebtn.CommandArgument = b[0];
                    REmovebtn.Click += DeleteButton_Click;

                    TableCell cell6 = new TableCell();
                    cell6.Controls.Add(REmovebtn);
                    row.Cells.Add(cell6); ;


                    Button btn2 = new Button();

                    btn2.Text = "Edit";
                    btn2.CssClass = "editBtn";
                    btn2.CommandArgument = b[0];
                    btn2.Click += EditBookButton_Click;

                    TableCell cell7 = new TableCell();
                    cell7.Controls.Add(btn2);
                    row.Cells.Add(cell7); ;

                    ShowAllBooksTable.Rows.Add(row);
                }

            }
        }


        private void LoadDashboardData3()
        {
            String fileRoom = Server.MapPath("~/App_Data/Rooms.txt");


            if (File.Exists(fileRoom))
            {

                string[] Rooms = File.ReadAllLines(fileRoom);



                for (int i = 0; i < Rooms.Length; i++)
                {
                    string [] room = Rooms[i].Split(',');

                    TableRow row = new TableRow();

                    TableCell cellID = new TableCell();
                    cellID.Text = room[0];
                    row.Cells.Add(cellID);

                    TableCell cellName = new TableCell();
                    cellName.Text = room[1];
                    row.Cells.Add(cellName);

                    TableCell cellCapacity = new TableCell();
                    cellCapacity.Text = room[2];
                    row.Cells.Add(cellCapacity);

                    TableCell cellStutas = new TableCell();
                    string pre;
                    if (room[3] == "Booked")
                    {
                        pre = "🔴 ";
                    }
                    else
                    {
                        pre = "✅ ";
                    }
                    cellStutas.Text = pre + room[3];
                    row.Cells.Add(cellStutas);

                    Button REmovebtn = new Button();

                    REmovebtn.Text = "Remove";
                    REmovebtn.CssClass = "removeBtn";
                    REmovebtn.CommandArgument = room[0];
                    REmovebtn.Click += DeleteButton_Click;

                    TableCell cell6 = new TableCell();
                    cell6.Controls.Add(REmovebtn);
                    row.Cells.Add(cell6); ;


                    Button btn2 = new Button();

                    btn2.Text = "Edit";
                    btn2.CssClass = "editBtn";
                    btn2.CommandArgument = room[0];
                    btn2.Click += EditButtonRoom_Click;

                    TableCell cell7 = new TableCell();
                    cell7.Controls.Add(btn2);
                    row.Cells.Add(cell7); ;

                    ShowAllRoomTable.Rows.Add(row);
                }

            }
        }

        private void voiLoadDashboardData5()
        {
            String fileuser = Server.MapPath("~/App_Data/Users.txt");


            if (File.Exists(fileuser))
            {

                string[] Users = File.ReadAllLines(fileuser);



                for (int i = 0; i < Users.Length; i++)
                {
                    string[] b = Users[i].Split(',');

                    TableRow row = new TableRow();

                    TableCell cellName = new TableCell();
                    cellName.Text = b[0];
                    row.Cells.Add(cellName);

                    TableCell cellUserName = new TableCell();
                    cellUserName.Text = b[1];
                    row.Cells.Add(cellUserName);


                    TableCell cellPhone = new TableCell();
                    cellPhone.Text = b[2];
                    row.Cells.Add(cellPhone);

                    TableCell cellEmail = new TableCell();
                    cellEmail.Text = b[3];
                    row.Cells.Add(cellEmail);


                    ShowAllusersTable.Rows.Add(row);




                }

            }
        }

        protected void ChangeView(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string section = btn.CommandArgument;

            DashboardSection.Visible = section == "Dashboard";
            OrderRequestSection.Visible = section == "OrderRequest";
            UserInfoSection.Visible = section == "UserInfo";
            BookSection.Visible = section == "Book";
            RoomSection.Visible = section == "Room";
            FeedbackSection.Visible = section == "Feedback";

        }
        protected void addBookBtn_Click(object sender, EventArgs e)
        {
            string file = Server.MapPath("~/App_Data/Books.txt");

            if (string.IsNullOrEmpty(Title.Text) ||
                string.IsNullOrEmpty(Author.Text) ||
                string.IsNullOrEmpty(Category.Text) ||
                Status.SelectedValue == "0")
            {
                //messegeId.Visible = true;
                //messegeId.Text = "Please Fill out All TextBoxs";
            }
            else
            {
                try
                {
                    int newId = 1;
                    if (File.Exists(file))
                    {
                        var lastLine = File.ReadAllLines(file).LastOrDefault();
                        if (!string.IsNullOrEmpty(lastLine))
                        {
                            var lastIdParts = lastLine.Split(',');
                            if (lastIdParts.Length > 0)
                            {
                                var lastId = lastIdParts[0];
                                newId = int.Parse(lastId) + 1;
                            }
                        }
                    }

                    using (StreamWriter sw = new StreamWriter(file, true))
                    {

                        sw.WriteLine($"{newId},{Title.Text},{Author.Text},{Category.Text},{Status.SelectedValue}");
                    }

                    //messegeId.Visible = true;
                    //// فاقع ايرور يا فراس لانه هاي ما بتشتغل مع الليبل ماشي؟
                    //messegeId.Text = "Book Added Successfully";
                }
                catch (Exception ex)
                {
                    //messegeId.Text = "Error: " + ex.Message;
                    //messegeId.Visible = true;
                }
            }
        }

        protected void EditBookButton_Click(object sender, EventArgs e)
        {
            // Show the card
            CardDiv.Style["display"] = "block";

            Button btn = (Button)sender;
            int index = Int16.Parse(btn.CommandArgument);

            string file = Server.MapPath("~/App_Data/Books.txt");
            string[] books = File.ReadAllLines(file);

            foreach (string line in books)
            {
                string[] book = line.Split(',');
                if (Convert.ToInt16(book[0].Trim()) == index)
                {
                    // Populate form fields
                    Title.Text = book[1].Trim();
                    Author.Text = book[2].Trim();
                    Category.Text = book[3].Trim();
                    dropDownStatus.SelectedValue = (book[4].Trim() == "Available") ? "1" : "2";
                    confirmBtn.CommandArgument = book[0];
                    break; // Exit loop after finding the book
                }
            }

            // Do NOT write to the file here
        }
        // هاظ المثود للبوك يعني كتاب بالعربي مش للروم يعني غرفة ديرو بالكوا يا خوان ماشي؟
        protected void confirmroom_Click(object sender, EventArgs e)
        {
            string file = Server.MapPath("~/App_Data/Books.txt");
            List<string> booksList = File.ReadAllLines(file).ToList();

            int bookId = Convert.ToInt32(confirmBtn.CommandArgument);

            for (int i = 0; i < booksList.Count; i++)
            {
                string[] book = booksList[i].Split(',');
                if (Convert.ToInt32(book[0].Trim()) == bookId)
                {

                    booksList[i] = $"{bookId},{Title.Text.Trim()},{Author.Text.Trim()},{Category.Text.Trim()},{dropDownStatus.SelectedItem.Text}";
                    break;
                }
            }

            File.WriteAllLines(file, booksList);
            Response.Redirect("DashboardAdmin.aspx");
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {


            Button btn = (Button)sender;

            int index = Convert.ToInt16(btn.CommandArgument);

            string file = Server.MapPath("~/App_Data/Books.txt");
            string[] books = File.ReadAllLines(file);

            List<string> booksList = new List<string>();
            for (int i = 0; i < books.Length; i++)
            {
                string[] book = books[i].Split(',');
                if (Convert.ToInt16(book[0]) != index)
                    booksList.Add(books[i]);
            }

            File.WriteAllLines(file, booksList);

            Response.Redirect("DashboardAdmin.aspx");
        }


        protected void EditButtonRoom_Click(object sender, EventArgs e)
        {
            // Show the card
            Div1.Style["display"] = "block";

            Button btn = (Button)sender;
            int index = Int16.Parse(btn.CommandArgument);

            string file = Server.MapPath("~/App_Data/Rooms.txt");
            string[] rooms = File.ReadAllLines(file);

            foreach (string line in rooms)
            {
                string[] room = line.Split(',');
                if (Convert.ToInt16(room[0].Trim()) == index)
                {
                    // Populate form fields
                    Title.Text = room[1].Trim();
                    Capacity.Text = room[2].Trim();
                    DropDownListroom.SelectedValue = (room[3].Trim() == "Available") ? "1" : "2";
                    savebtn.CommandArgument = room[0];
                    break; // Exit loop after finding the book
                }
            }

            // Do NOT write to the file here
        }




        protected void btnSave_Click(object sender, EventArgs e)
        {

            string file = Server.MapPath("~/App_Data/Rooms.txt");
            List<string> RoomsList = File.ReadAllLines(file).ToList();

            int roomId = Convert.ToInt32(savebtn.CommandArgument);

            for (int i = 0; i < RoomsList.Count; i++)
            {
                string[] book = RoomsList[i].Split(',');
                if (Convert.ToInt32(book[0].Trim()) == roomId)
                {

                    RoomsList[i] = $"{roomId},{Title.Text.Trim()},{Capacity.Text.Trim()},{DropDownList2.SelectedItem.Text}";
                    break;
                }
            }

            File.WriteAllLines(file, RoomsList);
            Response.Redirect("DashboardAdmin.aspx");
        }


        protected void RemoveButton_Click(object sender, EventArgs e)
        {


            Button btn = (Button)sender;

            if (int.TryParse(btn.CommandArgument, out int roomId))
            {
                string fileRoom = Server.MapPath("~/App_Data/Rooms.txt");

                if (File.Exists(fileRoom))
                {
                    string[] rooms = File.ReadAllLines(fileRoom);
                    List<string> updatedRooms = new List<string>();

                    foreach (string room in rooms)
                    {
                        string[] details = room.Split(',');


                        if (int.Parse(details[0]) != roomId)
                        {
                            updatedRooms.Add(room);
                        }
                    }

                    File.WriteAllLines(fileRoom, updatedRooms);
                    Response.Redirect(Request.RawUrl);
                }
            };
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            CardDiv.Style["display"] = "none";
            Div1.Style["display"] = "none";
        }


        protected void confirmBtn_Click(object sender, EventArgs e)

        {
            Button btn = (Button)sender;

            int index = Convert.ToInt16(btn.CommandArgument);


            string file = Server.MapPath("~/App_Data/ReservationsBook.txt");

            string fileBook = Server.MapPath("~/App_Data/Books.txt");

            string[] books = File.ReadAllLines(fileBook);

            string[] pending = File.ReadAllLines(file);

            List<string> booksList = new List<string>();
            List<string> ReservationsList = new List<string>();
            List<string> BookHistory = new List<string>();



            for (int i = 0; i < pending.Length; i++)
            {
                string[] p = pending[i].Split(',');

                if (index == Convert.ToInt16(p[0]))
                {

                    pending[i] = $"{p[0]},{p[1]},{p[2]},{p[3]},{p[4]},{p[5]},{p[6]},Accepted";

                    for (int j = 0; j < books.Length; j++)
                    {
                        string[] b = books[j].Split(',');

                        if (b[0] == p[2])
                        {
                            books[j] = $"{b[0]},{b[1]},{b[2]},{b[3]},Reserved";
                        }
                        booksList.Add(books[j]);
                    }
                }
                ReservationsList.Add(pending[i]);

            }


            File.WriteAllLines(fileBook, booksList);
            File.WriteAllLines(file, ReservationsList);


            Response.Redirect("DashboardAdmin.aspx");

        }
        protected void Reject_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int index = Convert.ToInt16(btn.CommandArgument);


            string file = Server.MapPath("~/App_Data/ReservationsBook.txt");


            string[] pending = File.ReadAllLines(file);

            List<string> ReservationsList = new List<string>();

            for (int i = 0; i < pending.Length; i++)
            {
                string[] p = pending[i].Split(',');

                if (index == Convert.ToInt16(p[0]))
                {

                    pending[i] = $"{p[0]},{p[1]},{p[2]},{p[3]},{p[4]},{p[5]},{p[6]},Rejected";
                }

                ReservationsList.Add(pending[i]);
            }


            File.WriteAllLines(file, ReservationsList);

            Response.Redirect("DashboardAdmin.aspx");


        }
        protected void Returned_btn_Clicked(object sender, EventArgs e)
        {
            string fileBookHistoryPath = Server.MapPath("~/App_Data/Bookhistory.txt");
            string fileReservationsBookPath = Server.MapPath("~/App_Data/ReservationsBook.txt");
            string fileBooksPath = Server.MapPath("~/App_Data/Books.txt");


            string[] BookHistory = File.ReadAllLines(fileBookHistoryPath);
            string[] ReservationsBook = File.ReadAllLines(fileReservationsBookPath);
            string[] booksPath = File.ReadAllLines(fileBooksPath);

            Button btn = (Button)sender;


            List<string> list = new List<string>();
            List<string> Books = new List<string>();
            List<string> ReservationsBookList = new List<string>();

            string currentDate = DateTime.Now.ToString("yyyy-MM-dd"); //////////////Rahaf Edit
            string currentTime = DateTime.Now.ToString("HH:mm"); //////////////Rahaf Edit

            for (int i = 0; i < ReservationsBook.Length; i++)
            {
                string[] Rb = ReservationsBook[i].Split(',');
                if (Rb[2] != btn.CommandArgument)
                {
                    ReservationsBookList.Add(ReservationsBook[i]);
                }
                else
                {
                    using (StreamWriter sw = new StreamWriter(fileBookHistoryPath, true))
                    {
                        sw.WriteLine($"{Rb[0]},{Rb[1]},{Rb[2]},{currentDate},{currentTime},{Rb[5]},{Rb[6]},{Rb[07]}"); //////////////Rahaf Edit
                    }
                }
            }
            File.WriteAllLines(fileReservationsBookPath, ReservationsBookList);


            for (int i = 0; i < booksPath.Length; i++)
            {
                string[] b = booksPath[i].Split(',');

                if (b[0] == btn.CommandArgument.ToString())
                {
                    booksPath[i] = $"{b[0]},{b[1]},{b[2]},{b[3]},Available";
                }
                Books.Add(booksPath[i]);
            }
            File.WriteAllLines(fileBooksPath, Books);


            Response.Redirect("DashboardAdmin.aspx");


        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            File.WriteAllText(Server.MapPath("~/App_Data/LoggedUser.txt"), string.Empty);
            Response.Redirect("~/Users/loginPage.aspx");
        }

        protected void FeedbackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Feedback.aspx");
        }

    }
}