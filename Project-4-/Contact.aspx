<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project_4_.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--FontAwesome-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
        /* Contact Us Section Design */
        .contact-section {
            background-color: white;
            padding: 50px 0;
            border-radius: 30px;
            box-shadow: 0px 0px 10px #285F59;
        }

            .contact-section h2 {
                font-size: 2.5rem;
                font-weight: 700;
                color: #CD7507;
                margin-bottom: 30px;
                text-align: center;
                text-transform: uppercase;
            }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0px 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

            .form-group label {
                font-weight: 600;
                color: #1b3f3b;
                font-size: 1.1rem;
                margin-bottom: 8px;
                display: block;
            }

        .form-control {
            font-size: 15px;
            background: rgba(236, 228, 211);
            color: #000;
            height: 50px;
            width: 100%;
            padding: 0 10px 0 45px;
            border: none;
            border-radius: 30px;
            outline: none;
            transition: .2s ease;
        }

            .form-control:focus {
                border-color: #CD7507 !important;
                outline: none;
            }

        .send-button {
            font-size: 15px;
            font-weight: 500;
            color: white;
            height: 45px;
            width: 100%;
            border: none;
            border-radius: 30px;
            outline: none;
            background: rgba(205, 117, 7, 0.8);
            cursor: pointer;
            transition: .3s ease-in-out;
        }

            .send-button:hover {
                background-color: #1e4c43;
            }

        /* Additional Styling */
        .contact-section .form-container .form-group input,
        .contact-section .form-container .form-group textarea {
            transition: border-color 0.3s ease;
        }

            .contact-section .form-container .form-group input:focus,
            .contact-section .form-container .form-group textarea:focus {
                border-color: #CD7507 !important;
            }

        @media (max-width: 767px) {
            .contact-section h2 {
                font-size: 2rem;
            }

            .form-container {
                padding: 20px;
            }

            .form-group label {
                font-size: 1rem;
            }

            .send-button {
                font-size: 1rem;
                padding: 10px 20px;
            }
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

        .content {
            border-top-right-radius: 30px;
            border-bottom-right-radius: 30px;
            height: 100vh;
            width: 100%;
            align-content: center;
            background: linear-gradient( to bottom, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.6) ), url('https://miro.medium.com/v2/resize:fit:1200/1*6Jp3vJWe7VFlFHZ9WhSJng.jpeg') center/cover no-repeat;
        }

            .content div {
                display: flex;
                flex-direction: row;
                gap: 10px;
            }
    </style>
    <link rel="stylesheet" href="Styles/nav-footer.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<body>
    <form id="form1" runat="server">

        <%--<input type="hidden" name="access_key" value="41e28286-dfaf-471d-aeb3-8f6fc562a4d7">--%>

        <!--Navbar Start-->
        <nav class="navbar navbar-expand-lg">
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
        <div>
            <div class="container my-5">


                <div class="tab-content mt-3" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="container mt-5">
                            <%--                            <div class="card shadow-lg p-4">
                                <div class="text-center">

                                    <asp:Image ID="Image1" runat="server" ImageUrl="../Images/logo.png" AlternateText="My Image" Width="300px" />
                                </div>--%>
                            <!-- Contact Us Section -->
                            <section class="contact-section" style="background-color: transparent; box-shadow: none">
                                <div class="container">
                                    <h2>Contact Us</h2>
                                    <div style="display: flex; flex-direction: row; justify-content: space-evenly; align-items: center; border-radius: 30px; box-shadow: 0 4px 10px black;">
                                        <div class="form-container" style="padding-top: 0; background-color: transparent; margin: 0; width: 100%; box-shadow: none">
                                            <asp:Panel ID="ContactFormPanel" runat="server">
                                                <div class="form-group">
                                                    <label for="first-name">First Name</label>
                                                    <asp:TextBox ID="FirstName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="last-name">Last Name</label>
                                                    <asp:TextBox ID="LastName" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="email">Email</label>
                                                    <asp:TextBox ID="Email" runat="server" CssClass="form-control" TextMode="Email" required="required"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <label for="message">Message</label>
                                                    <asp:TextBox ID="Message" runat="server" CssClass="form-control" Rows="4" required="required" Style="height: 200px"></asp:TextBox>
                                                </div>
                                                <asp:Button ID="SendButton" runat="server" CssClass="send-button" Text="Send" OnClick="SendButton_Click" />
                                            </asp:Panel>
                                        </div>


                                        <div class="content" style="color: #ECE4D3; align-self: center; justify-items: center;">
                                            <h3>Reach Out</h3>
                                            <div>
                                                <i class="bi bi-telephone"></i>
                                                <p>Phone: +962-00000000</p>
                                            </div>
                                            <div>
                                                <i class="bi bi-envelope"></i>
                                                <p>Email: bookUnity@gmail.com</p>
                                            </div>
                                            <div>
                                                <i class="bi bi-geo-alt"></i>
                                                <p>Location: Irbid, Jordan</p>
                                            </div>
                                            <iframe
                                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3363.009560388824!2d35.847093875112236!3d32.55259009542249!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x151c7715f2c2e7ab%3A0x51755840c8ddbefd!2sOrange%20Digital%20Village%20Irbid!5e0!3m2!1sen!2sjo!4v1737626421165!5m2!1sen!2sjo"
                                                width="400" height="300" style="border: 0;" allowfullscreen="" loading="lazy"
                                                referrerpolicy="no-referrer-when-downgrade"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </section>


                        </div>
                    </div>
                </div>
            </div>
        </div>


        <footer>
            <div class="justify-content-center mb-0 pt-5 pb-0 row-2 px-3">
                <div class="col-12">
                    <div class="row row-2">
                        <div class="col-sm-3 text-md-center">
                            <img src="../Images/logo.png" width="30%">
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
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
