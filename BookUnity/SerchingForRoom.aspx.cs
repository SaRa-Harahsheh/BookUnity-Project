using System;
using System.IO;
using System.Linq;
using System.Web.UI;

namespace Library_Website.SONDOS
{
    public partial class SerchingForRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string file = Server.MapPath("~/App_Data/Rooms.txt");

            if (File.Exists(file))
            {
                string[] roomsData = File.ReadAllLines(file);

                foreach (string room in roomsData)
                {
                    string[] roomData = room.Split(',');

                    switch (roomData[1])
                    {
                        case "Single":
                            singleLabel.Text = roomData[3];
                            singleLabel.Visible = roomData[3] == "Booked";
                            btnBookNow.Visible = roomData[3] != "Booked";
                            break;

                        case "Double":
                            doubleLabel.Text = roomData[3];
                            doubleLabel.Visible = roomData[3] == "Booked";
                            doubleRoom.Visible = roomData[3] != "Booked";
                            break;

                        case "Meeting":
                            meetingLabel.Text = roomData[3];
                            meetingLabel.Visible = roomData[3] == "Booked";
                            meetingRoom.Visible = roomData[3] != "Booked";
                            break;

                        case "Studying":
                            studyingLabel.Text = roomData[3];
                            studyingLabel.Visible = roomData[3] == "Booked";
                            studyingRoom.Visible = roomData[3] != "Booked";
                            break;
                    }
                }
            }
            else
            {
                singleLabel.Text = "Room data not found.";
                singleLabel.Visible = true;
            }

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
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
            if (searchBar.Text == "Single")
            {
                singleCard.Visible= true;
                DoubleCard.Visible = false;
                meetingCard.Visible = false;
                StudyingCard.Visible = false;

            }
            else if (searchBar.Text == "Double")
            {
                singleCard.Visible = false;
                DoubleCard.Visible = true;
                meetingCard.Visible = false;
                StudyingCard.Visible = false;

            }
            else if (searchBar.Text == "Meeting")
            {
                singleCard.Visible = false;
                DoubleCard.Visible = false;
                meetingCard.Visible = true;
                StudyingCard.Visible = false;

            }
            else if (searchBar.Text == "Studying")
            {
                singleCard.Visible = false;
                DoubleCard.Visible = false;
                meetingCard.Visible = false;
                StudyingCard.Visible = true;

            }
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string selectedDate = bookingDate.Text;
            string selectedTime = bookingTime.Text;
            string roomID = hdnRoomID.Value; // Get the roomID from the hidden field

            if (!string.IsNullOrEmpty(selectedDate) && !string.IsNullOrEmpty(selectedTime))
            {
                string fileLogin = Server.MapPath("~/App_Data/LoggedUser.txt");
                string fileReservations = Server.MapPath("~/App_Data/RoomReservations.txt");

                // Read username from login file
                string username = "";
                if (File.Exists(fileLogin))
                {
                     username = File.ReadAllText(fileLogin);
                }

                // Generate new reservation ID
                int newReservationID = 1;
                if (File.Exists(fileReservations))
                {
                    string[] reservations = File.ReadAllLines(fileReservations);
                    if (reservations.Length > 0)
                    {
                        string lastLine = reservations.Last();
                        string[] lastReservationData = lastLine.Split(',');

                        if (int.TryParse(lastReservationData[0], out int lastID))
                        {
                            newReservationID = lastID + 1;
                        }
                    }
                }

                // Parse selected date and time

                DateTime startTime = DateTime.Parse($"{selectedDate},{selectedTime}");
                DateTime endTime = startTime.AddHours(2); // Assuming a 2-hour booking
                string status = "Pending";

                string [] start = startTime.ToString("yyyy-MM-dd HH:mm").Split(' ');
                string [] end = endTime.ToString("yyyy-MM-dd HH:mm").Split(' ');

                

                // Save reservation data
                string reservationData = $"{newReservationID},{username},{roomID},{start[0]},{start[1]},{end[0]},{end[1]},{status}";
                File.AppendAllText(fileReservations, reservationData + Environment.NewLine);

                // Show confirmation message
                string confirmationMessage = $"Room {roomID} booked for {startTime} to {endTime}";
                ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", $"alert('{confirmationMessage}');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", "alert('Please select a valid date and time!');", true);
            }
        }
    }
}