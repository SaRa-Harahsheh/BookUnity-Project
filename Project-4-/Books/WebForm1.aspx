<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project_4_.Books.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Borrowing Form</title>
    <style>
        /*        body {
            background-color: #F4F4F4;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            overflow-x: hidden;
        }*/

        body {
            position: relative;
        }

            body::before {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-image: url("https://media.istockphoto.com/id/929023224/vector/seamless-background-with-books.jpg?s=612x612&w=0&k=20&c=suJcI7JPdWMAB32Dlr3V1CPs3FCfgFkhSSuFuQN8bzw=");
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                opacity: 0.09;
                z-index: -1;
            }

        .containerr {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
            padding: 20px;
            text-align: center;
            opacity: 0;
            animation: fadeIn 1s ease-in-out forwards;
        }

        .popUp {
            background-color: #ECE4D3;
            padding: 40px;
            border-radius: 10px;
            width: 80%;
            max-width: 600px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            /*            margin-bottom: 10%;
            margin-top: 10%;*/
            transform: translateY(30px);
            animation: slideUp 1s ease-out forwards;
            opacity: 0;
        }

        .instructions {
            background-color: #FFFFFF;
            padding: 20px;
            border-radius: 10px;
            width: 80%;
            max-width: 600px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            font-size: 16px;
            color: #285F59;
            text-align: left;
            transform: translateY(30px);
            animation: slideUp 1.5s ease-out forwards;
            opacity: 0;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }

        @keyframes slideUp {
            0% {
                transform: translateY(30px);
                opacity: 0;
            }

            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .popUp label {
            display: block;
            font-weight: bold;
            color: #285F59;
            margin-top: 15px;
            text-align: left;
            width: 100%;
            font-size: 18px;
        }

        .popUp input {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            border: 2px solid #CD7507;
            border-radius: 5px;
            background-color: #ECE4D3;
            color: #285F59;
            font-size: 16px;
            transition: transform 0.3s ease, border-color 0.3s ease;
        }

            .popUp input:focus {
                outline: none;
                border-color: #285F59;
                transform: scale(1.05);
            }

        .popUp .b {
            background-color: #CD7507;
            color: white;
            border: none;
            padding: 12px 25px;
            margin-top: 20px;
            border-radius: 30px;
            cursor: pointer;
            font-size: 18px;
            transition: background 0.3s, transform 0.3s ease;
            width: 60%;
        }

            .popUp .b:hover {
                background-color: #285F59;
                transform: scale(1.05);
            }

        .instructions h2 {
            font-size: 22px;
            color: #CD7507;
            margin-bottom: 10px;
        }

        .instructions ul {
            list-style-type: square;
            padding-left: 20px;
        }

        .instructions li {
            margin: 5px 0;
        }

        @media screen and (max-width: 768px) {
            .popUp, .instructions {
                width: 90%;
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
            background-color: #CD7507 !important;
            color: #ECE4D3 !important;
        }

            .border:hover {
                background-color: #285F59 !important;
                color: #ECE4D3 !important;
            }


        @media (max-width: 768px) {
            .s {
                padding: 8px 16px;
                font-size: 0.9rem;
            }
        }
    </style>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />

    <!--FontAwesome-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />

    <!--MyCSS-->
    <link href="~\Styles\nav-footer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!--Navbar Start-->
        <nav class="navbar navbar-expand-lg " style="margin-bottom: 5%">
            <div class="container">
                <a class="navbar-brand" href="#" style="width: 5%; padding: 0;">
                    <img src="..\Images\logo.png" width="100%"></a>
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

        <div class="containerr">
            <%--            <div class="instructions">
                <h2>Borrowing Instructions</h2>
                <ul>
                    <li>You will need to wait until we confirm your borrow request.</li>
                    <li>You can check the status of your borrow request anytime in your profile.</li>
                    <li>If the book is available, we will approve your request as soon as possible.</li>
                    <li>Feel free to reach out if you have any questions about your request.</li>
                </ul>
            </div>--%>

            <div class="popUp">
                <h2>Borrowing Instructions</h2>
                <br />
                <ul style="text-align: left; list-style-type: none">
                    <li>✎ You will need to wait until we confirm your borrow request.</li>
                    <br />
                    <li>✎ You can check the status of your borrow request anytime in your profile.</li>
                    <br />
                    <li>✎ If the book is available, we will approve your request as soon as possible.</li>
                    <br />
                    <li>✎ Feel free to reach out if you have any questions about your request.</li>
                </ul>
                <label for="borrowDate">Choose a Date:</label>
                <asp:TextBox ID="borrowDate" runat="server" TextMode="Date" required="true"></asp:TextBox>

                <label for="borrowTime">Choose a Time:</label>
                <asp:TextBox ID="borrowTime" runat="server" TextMode="Time" required="true"></asp:TextBox>

                <asp:Button CssClass="b" ID="goToProfile" runat="server" Text="Check Your Request" Visible="false" OnClick="goToProfile_Click" /><br />
                <asp:Button CssClass="b" ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" /><br />
                <asp:Label runat="server" ID="msg" Style="color: darkred;" Visible="false"></asp:Label>
            </div>
        </div>
        <footer style="margin-top: 5%">
            <div class="justify-content-center mb-0 pt-5 pb-0 row-2 px-3">
                <div class="col-12">
                    <div class="row row-2">
                        <div class="col-sm-3 text-md-center">
                            <img src="..\Images\logo.png" width="30%">
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

    <!--JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
