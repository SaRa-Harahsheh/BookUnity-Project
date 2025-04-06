<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="Project_4_.Users.ProfilePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <!--FontAwesome-->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap');

        *:not(i) {
            font-family: "Montserrat", serif !important;
        }

        .navbar {
            background-color: #ECE4D3;
        }

        .navbar-nav .nav-link {
            position: relative;
            padding-bottom: 5px;
            transition: color 0.3s ease-in-out;
            margin-left: 40px;
            color: #CD7507;
            font-weight: 500;
        }

            .navbar-nav .under::after {
                content: "";
                position: absolute;
                left: 50%;
                bottom: 0;
                width: 0;
                height: 3px;
                background-color: #285f59;
                transition: all 0.3s ease-in-out;
                transform: translateX(-50%);
            }

            .navbar-nav .under:hover::after {
                width: 100%;
            }

            /* .navbar-nav .nav-link:active::after {
    width: 100%;
    content: "";
    position: absolute;
    left: 50%;
    bottom: 0;
    height: 3px;
    background-color: #285f59; 
    transition: all 0.3s ease-in-out;
    transform: translateX(-50%);
} */

            .navbar-nav .nav-link:hover {
                color: #285f59;
            }

        /*------- Footer Section Start -----------*/
        footer {
            color: #caced1 !important;
            border: none;
        }

            footer li {
                margin-top: 20px;
                margin-bottom: 20px;
            }

            footer .Careers {
                cursor: pointer;
                color: #1E88E5;
            }

            footer .row-1 {
                background-color: #1b3f3b !important;
                padding: 1%;
                width: 100%;
            }

            footer .row-2 {
                background-color: #285f59 !important;
            }

            footer i {
                font-size: 1.5rem;
                margin-left: 2%;
            }

            footer .nav-link {
                position: relative;
                padding-bottom: 5px;
                transition: color 0.3s ease-in-out;
                margin-left: 40px;
                /* color: #CD7507 ; */
                /* font-weight: 600; */
                width: fit-content;
            }

                footer .nav-link::after {
                    content: "";
                    position: absolute;
                    left: 50%;
                    bottom: 0;
                    width: 0;
                    height: 3px;
                    background-color: #CD7507;
                    transition: all 0.3s ease-in-out;
                    transform: translateX(-50%);
                }

                footer .nav-link:hover::after {
                    width: 100%;
                }

                footer .nav-link:hover {
                    color: #CD7507;
                }

        @media (max-width: 426px) {
            footer .nav-link {
                margin-left: 1% !important;
            }

            .navbar .nav-link {
                margin: 2% 0 2% 5%;
            }

            .navbar-toggler:focus,
            .navbar-toggler:active {
                outline: none !important;
                box-shadow: none !important;
                border: none;
            }

            .navbar-toggler {
                border: none;
            }

            .navbar {
                padding: 5%;
            }

            .navbar-brand {
                width: 17% !important;
            }
        }

        /*------- Footer Section End -----------*/
    </style>
    <style>
        /* تحسين التبويبات */
        .nav-tabs .nav-link {
            color: #285F59; /* أخضر غامق */
            font-weight: bold;
            border: none;
            padding: 12px 20px;
            transition: all 0.3s ease-in-out;
        }

            .nav-tabs .nav-link.active {
                background-color: #CD7507; /* برتقالي داكن */
                color: white;
                border-radius: 5px;
            }

        /* تحسين الجداول */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #285F59; /* أخضر غامق */
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #CD7507; /* برتقالي داكن عند التحويم */
            color: white;
        }

        /* تحسين البطاقة الخاصة بالملف الشخصي */
        .card {
            border-radius: 10px;
            padding: 20px;
            background: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .info-label {
            font-weight: bold;
            color: #CD7507; /* برتقالي داكن */
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
               #imgBook{
                width: 150px;
    height: 150px;
    border-radius: 50%;
    object-fit: cover;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
            <!--Navbar Start-->
            <nav class="navbar navbar-expand-lg sticky-top">
                <div class="container">
                    <a class="navbar-brand" href="#" style="width: 5%; padding: 0;">
                        <img src="../Images\logo.png" width="100%"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto" id="navLinks" runat="server">
                            <li class="nav-item">
                                <a class="nav-link under" href="../Home.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="../About.aspx">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="../Srvices.aspx">Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="../Contact.aspx">Contact</a>
                            </li>

                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="signIn" runat="server" href="../Users/regestrationPage.aspx" CssClass="nav-link border">SignIn</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="logIn" runat="server" href="../Users/loginPage.aspx" CssClass="nav-link border">LogIn</asp:LinkButton>
                            </li>

                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="profile1" runat="server" href="../Users/ProfilePage.aspx" CssClass="nav-link border">Profile</asp:LinkButton>
                            </li>
                            <li class="nav-item">
                                <asp:LinkButton Visible="false" ID="lnkLogout" runat="server" OnClick="lnkLogout_Click1" CssClass="nav-link border">Logout</asp:LinkButton>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
            <!--Navbar End-->
        <div>
            <div class="container my-5">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <asp:Button class="nav-link active" ID="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Profile Information</asp:Button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <asp:Button class="nav-link" ID="bookTab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Book Reservations</asp:Button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <asp:Button class="nav-link" ID="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Room Reservations</asp:Button>
                    </li>
                </ul>

                <div class="tab-content mt-3" id="myTabContent"  runat="server">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="container mt-5">
                            <div class="card shadow-lg p-4">
                                <div class="text-center">


                                    <asp:Image  runat="server" ID="imgBook"/>
                                    <%--<img src='<%# Eval("imagePath") %>' alt="Book Image" width="100" />--%>

                                </div>
                                <div class="card-body">
                                    <h3 class="text-center mb-4">Hello
                                        <asp:Label ID="userN" runat="server"></asp:Label></h3>

                                   
                                    <asp:Button ID="editProfile" class="btn " style="background-color:#285f59;color:antiquewhite" Text="Edit Profile" runat="server" OnClick="editProfile_Click" />
                                    <asp:Button ID="resetPassword" class="btn btn-success" style="background-color:#285f59;color:antiquewhite" Text="Reset Password" runat="server" OnClick="resetPassword_Click" />
                                    <ul class="list-group" style="margin-top:5%">
                                        <li class="list-group-item"><span class="info-label">Name:</span>
                                            <asp:Label ID="fName" runat="server" /></li>
                                        <li class="list-group-item"><span class="info-label">Username:</span>
                                            <asp:Label ID="uName" runat="server" /></li>
                                        <li class="list-group-item"><span class="info-label">Phone:</span>
                                            <asp:Label ID="tel" runat="server" /></li>
                                        <li class="list-group-item"><span class="info-label">Email:</span>
                                            <asp:Label ID="email" runat="server" /></li>

                                    </ul>
                                    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger mt-3 d-block text-center" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                        <h2 class="mb-3" style="margin-top:5%">➢ Current Bookings</h2>
                        <asp:Table runat="server" ID="currentBookingsTable">
                            <asp:TableRow>
                                <asp:TableHeaderCell>Book Name</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Borrow Date</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                            </asp:TableRow>
                        </asp:Table>

                        <h2 class="mb-3" style="margin-top:5%">➢ Previous Bookings</h2>
                        <asp:Table runat="server" ID="previousBookingsTable" style="margin-bottom:5%">
                            <asp:TableRow>
                                <asp:TableHeaderCell>Book Name</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Borrow Date</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Return Date</asp:TableHeaderCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>

                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        <h2 class="mb-3" style="margin-top:5%">➢ Current Reservations</h2>
                        <asp:Table runat="server" ID="currentRooms">
                            <asp:TableRow>
                                <asp:TableHeaderCell>Room Type</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Reservations Date</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                            </asp:TableRow>
                        </asp:Table>

                        <h2 class="mb-3" style="margin-top:5%">➢ Previous Reservations</h2>
                        <asp:Table runat="server" ID="previousRooms" style="margin-bottom:5%">
                            <asp:TableRow>
                                <asp:TableHeaderCell>Room Type</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Reservations Date</asp:TableHeaderCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </div>
            </div>
        </div>
        
        <footer>
            <div class="justify-content-center mb-0 pt-5 pb-0 row-2 px-3">
                <div class="col-12">
                    <div class="row row-2">
                        <div class="col-sm-3 text-md-center">
                            <img src="..\Images\logo.png" width="30%"></div>
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
    </form>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // تحسين التبويبات
            const tabs = document.querySelectorAll(".nav-tabs .nav-link");
            tabs.forEach(tab => {
                tab.addEventListener("click", function () {
                    tabs.forEach(t => t.classList.remove("active"));
                    this.classList.add("active");
                });
            });

            // تأثير عند تحويم الماوس على الجداول
            const rows = document.querySelectorAll("table tr");
            rows.forEach(row => {
                row.addEventListener("mouseenter", function () {
                    this.style.backgroundColor = "#CD7507";
                    this.style.color = "white";
                });
                row.addEventListener("mouseleave", function () {
                    this.style.backgroundColor = "";
                    this.style.color = "";
                });
            });

            // تأثير عند تمرير الماوس على البطاقة
            const card = document.querySelector(".card");
            if (card) {
                card.addEventListener("mouseenter", function () {
                    this.style.transform = "scale(1.02)";
                    this.style.transition = "0.3s ease-in-out";
                });
                card.addEventListener("mouseleave", function () {
                    this.style.transform = "scale(1)";
                });
            }
        });

    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
