<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SerchingForRoom.aspx.cs" Inherits="Library_Website.SONDOS.SerchingForRoom" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search Rooms</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,800" rel="stylesheet" />
    <link href="assets/css/index.css" rel="stylesheet" />
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Flatpickr CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />
        <link href="Styles\roomSearch.css" rel="stylesheet" />

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap');

.btn-book {
    --bs-btn-hover-bg: wheat !important;
}

*:not(i) {
    font-family: "Montserrat", serif !important;
}

        .s {
            padding: 10px 20px;
            font-size: 1rem;
            background-color: #CD7507;
            color: #ECE4D3;
            border: none;
            cursor: pointer;
            border-radius: 4rem;
            transition: background-color 0.3s ease;
        }

            .s:hover {
                background-color: #ECE4D3;
                color: #CD7507;
            }

        .border {
            border: none !important;
            border-radius: 30px;
            background-color: #CD7507;
            color: #ECE4D3 !important;
        }

            .border:hover {
                background-color: #285F59;
                color: #ECE4D3 !important;
            }


        @media (max-width: 768px) {
            .s {
                padding: 8px 16px;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header Area -->
            <!--Navbar Start-->
            <nav class="navbar navbar-expand-lg sticky-top">
                <div class="container">
                    <a class="navbar-brand" href="#" style="width: 5%; padding: 0;">
                        <img src="Images\logo.png" width="100%"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto" id="navLinks" runat="server">
                            <li class="nav-item">
                                <a class="nav-link under" href="Home.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="About.aspx">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="Srvices.aspx">Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="Contact.aspx">Contact</a>
                            </li>

                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="signIn" runat="server" href="../Users/regestrationPage.aspx" CssClass="nav-link border">SignIn</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="logIn" runat="server" href="../Users/loginPage.aspx" CssClass="nav-link border">LogIn</asp:LinkButton>
                            </li>

                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="profile" runat="server" href="../Users/ProfilePage.aspx" CssClass="nav-link border">Profile</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="lnkLogout" runat="server" OnClick="lnkLogout_Click" CssClass="nav-link border">Logout</asp:LinkButton>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
            <!--Navbar End-->
                   

            <!-- Search Section -->
            <div class="s006">
                <div class="formm">
                <div>
                    <legend>What Kind of Rooms are you looking for?</legend>
                    <div class="inner-form">
                        <div class="input-field">
                            <asp:Button ID="btnSearch11" runat="server" CssClass="btn-search" Text="&#128269;" OnClick="btnSearch_Click" />
                            <asp:TextBox ID="searchBar" runat="server" placeholder="Search for rooms..." />
                        </div>
                    </div>
                    <div class="suggestion-wrap">
                        <span>Single</span>
                        <span>Double</span>
                        <span>Meeting</span>
                        <span>Studying</span>
                    </div>
                </div>
            </div>
                </div>

            <!-- Room Cards -->
            <div id="services" class="services section">
                <div class="container"> 
                    <br /><br /><br /><br />
                    <div class="row">
                        <!-- Single Room -->
                        <div runat="server" id="singleCard" class="col-lg-3">
                            <div class="service-item first-service">
                                <h4>Single Rooms</h4>
                                <p>A cozy and quiet room perfect for focused individual study or personal work.</p><br />
                                <asp:Label ID="singleLabel" runat="server" Text="" Visible="false"></asp:Label>
                                <asp:Button ID="btnBookNow" runat="server" CssClass="btn btn-book" Text="Book Now" OnClientClick='openBookingModal("Single"); return false;' />
                            </div>
                        </div>

                        <!-- Double Room -->
                        <div runat="server" id="DoubleCard" class="col-lg-3">
                            <div class="service-item second-service">
                                <h4>Double Rooms</h4>
                                <p>A spacious room designed for two, perfect for collaborative study or discussions.</p><br />
                                <asp:Label ID="doubleLabel" runat="server" Text="" Visible="false"></asp:Label>
                                <asp:Button ID="doubleRoom" runat="server" CssClass="btn btn-book"  Text="Book Now" OnClientClick='openBookingModal("Double"); return false;' />
                            </div>
                        </div>

                        <!-- Meeting Room -->
                        <div runat="server" id="meetingCard" class="col-lg-3">
                            <div class="service-item third-service">
                                <h4>Meeting Rooms</h4>
                                <p>A dedicated study room with all the essentials for an optimal learning environment.</p><br />
                                <asp:Label ID="meetingLabel" runat="server" Text="" Visible="false"></asp:Label>
                                <asp:Button ID="meetingRoom" runat="server" CssClass="btn btn-book" Text="Book Now" OnClientClick='openBookingModal("Meeting"); return false;' />
                            </div>
                        </div>

                        <!-- Studying Room -->
                        <div runat="server" id="StudyingCard" class="col-lg-3">
                            <div class="service-item fourth-service">
                                <h4>Studying Rooms</h4>
                                <p>A professional and well-equipped meeting room, ideal for group discussions or workshops.</p>
                                <asp:Label ID="studyingLabel" runat="server" Text="" Visible="false"></asp:Label>
                                <asp:Button ID="studyingRoom" runat="server" CssClass="btn btn-book " Text="Book Now" OnClientClick='openBookingModal("Studying"); return false;' />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

           <br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br />
        </div>

        <!-- Hidden Field for Room ID -->
        <asp:HiddenField ID="hdnRoomID" runat="server" />

        <!-- Booking Modal -->
        <div class="modal fade" id="bookingModal" tabindex="3" aria-labelledby="bookingModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Room Booking</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <asp:ScriptManager runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel runat="server">
                            <ContentTemplate>
                                <!-- Date Input -->
                                <div class="mb-3">
                                    <label for="bookingDate" class="form-label">Select Date:</label>
                                    <asp:TextBox ID="bookingDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <!-- Time Input -->
                                <div class="mb-3">
                                    <label for="bookingTime" class="form-label">Select Time:</label>
                                    <asp:TextBox ID="bookingTime" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                                </div>
                                <!-- Submit Button -->
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-success w-100" Text="Confirm Booking" OnClick="btnSubmit_Click" />
                                            
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

        </div>


             <footer style="margin-top:5%">
                <div class="justify-content-center mb-0 pt-5 pb-0 row-2 px-3">
                    <div class="col-12">
                        <div class="row row-2" style="justify-content: center;">
                            <div class="col-sm-3 text-md-center" style="width: 10%;">
                                <img src="Images\logo.png" width="10">
                            </div>
                            <div class="col-sm-3  my-sm-0 mt-5">
                                <ul class="list-unstyled">
                                    <li class="mt-0 nav-item"><a class="nav-link" href="#">Home</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Services</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3  my-sm-0 mt-5">
                                <ul class="list-unstyled">
                                    <li class="mt-0 nav-item"><a class="nav-link" href="#">Contact Us</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">Location</a></li>
                                </ul>
                            </div>
                            <div class="col-sm-3  my-sm-0 mt-5">
                                <ul class="list-unstyled">
                                    <li class="mt-0 ">Have Any Question?</li>
                                    <li>
                                        <i class="fa-regular fa-envelope" style="font-size: 1rem; margin-right: 2%;"></i>bookunity@email.com</li>
                                    <li><i class="fa-solid fa-phone" style="font-size: 1rem; margin-right: 2%;"></i>+962-000000000</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=" justify-content-center mt-0 pt-0 row-1 mb-0 pb-0 px-sm-3 px-2">
                    <div class="col-12">
                        <div class="row row-1 no-gutters">
                            <div class="col-sm-3 col-auto text-center"><small>&#9400; BookUnity 2025</small></div>
                            <div class="col-md-3 col-auto "></div>
                            <div class="col-md-3 col-auto"></div>
                            <div class="col  my-auto text-md-left text-right "><small>Follow Us <span><i class="fa-brands fa-instagram"></i></span><span><i class="fa-brands fa-square-facebook"></i></span><span><i class="fa-brands fa-whatsapp"></i></span></small></div>
                        </div>
                    </div>
                </div>
            </footer>

        <!-- Scripts -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/animation.js"></script>
        <script src="assets/js/imagesloaded.js"></script>
        <script src="assets/js/popup.js"></script>
        <script src="assets/js/custom.js"></script>
        <script>
            function openBookingModal(roomID) {
                document.getElementById('<%= hdnRoomID.ClientID %>').value = roomID;
                var modal = new bootstrap.Modal(document.getElementById('bookingModal'));
                modal.show();
            }
        </script>
    </form>
</body>
</html>