<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit Profile.aspx.cs" Inherits="Project_4_.Edit_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />

    <!--FontAwesome-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap');

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
            border: 1px solid #CD7507 !important;
            border-radius: 30px;
        }

            .border:hover {
                background-color: #285F59;
                color: #ECE4D3;
            }


        @media (max-width: 768px) {
            .s {
                padding: 8px 16px;
                font-size: 0.9rem;
            }
        }

        *:not(i) {
            font-family: "Montserrat", serif !important;
        }

        /* Navbar */
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

        .navbar-nav .nav-link:hover {
            color: #285f59;
        }

        /* Profile Container */
        .profile-container {
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0px 10px #285F59;
            max-width: 800px;
            margin: auto;
        }

        /* Form Input Fields */
        .form-control {
            border-radius: 8px;
            border: 1px solid #ddd;
            padding: 12px 20px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }

            .form-control:focus {
                border-color: #285f59;
                box-shadow: 0 0 5px rgba(40, 95, 89, 0.5);
            }

        .form-group {
            margin-bottom: 20px;
        }

            .form-group img {
                border-radius: 50%;
                border: 3px solid #ddd;
                margin-top: 10px;
                transition: transform 0.3s ease;
            }

                .form-group img:hover {
                    transform: scale(1.1);
                }

        /* Buttons */
        .btn {
            padding: 10px 20px;
            border-radius: 25px;
            font-size: 1.1rem;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background-color: #285f59;
            border: none;
            color: white;
        }

            .btn-primary:hover {
                background-color: #1b4536;
            }

        .btn-secondary {
            background-color: #f0ad4e;
            border: none;
            color: white;
        }

            .btn-secondary:hover {
                background-color: #d39e00;
            }

        /* File Upload */
        .form-control-file {
            border: none;
            padding: 8px 20px;
            border-radius: 8px;
            background-color: #f8f9fa;
            transition: all 0.3s ease;
        }

            .form-control-file:hover {
                background-color: #e9ecef;
            }

        /* Footer */
        footer {
            color: #caced1 !important;
            background-color: #285f59;
            padding: 20px 0;
            text-align: center;
        }

            footer i {
                font-size: 1.5rem;
                margin: 0 10px;
                color: #caced1;
            }

                footer i:hover {
                    color: #cd7507;
                }

            footer .nav-link {
                margin: 5px;
                color: #caced1;
                font-weight: 600;
                transition: color 0.3s ease;
            }

                footer .nav-link:hover {
                    color: #CD7507;
                }

        /* Mobile Optimization */
        @media (max-width: 576px) {
            .form-group {
                margin-bottom: 15px;
            }

            .navbar .nav-link {
                margin: 2% 0;
            }

            footer {
                padding: 20px 0;
            }
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        body {
            animation: fadeIn 1s ease-in;
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

        /* Container Styling */


        /* Profile Image Styling */
        #ProImg {
            border-radius: 50%;
            border: 3px solid #285F59; /* Teal border */
            object-fit: cover;
        }

        /* Hide default FileUpload */
        .custom-file-upload {
            position: relative;
            overflow: hidden;
            display: inline-block;
            background-color: #285F59; /* Teal Green */
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s ease;
            text-align: center;
        }

            .custom-file-upload:hover {
                background-color: #1e4a45; /* Darker teal */
            }

            /* Hide the default file input */
            .custom-file-upload input[type="file"] {
                position: absolute;
                left: 0;
                top: 0;
                opacity: 0;
                width: 100%;
                height: 100%;
                cursor: pointer;
            }
    </style>
    <!--MyCSS-->
    <link href="~\Styles\nav-footer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!--Navbar Start-->
        <nav class="navbar navbar-expand-lg ">
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

        <!-- Edit Profile Section -->
        <div class="profile-container" style="margin-top: 5%; margin-bottom: 5%; background-color: transparent;">
            <h2 class="text-center" style="color: #CD7507">Edit Your Profile</h2>

            <div class="form-group" style="justify-self: center">
                <asp:Image Width="150" Height="150" runat="server" ID="ProImg" />
            </div>

            <div class="form-group" style="justify-self: center">
                <label class="custom-file-upload">
                    Choose Image
        <asp:FileUpload ID="FileUpload2" runat="server" onchange="previewImage(this)" />
                </label>
            </div>


            <div class="form-group">
                <label for="FirstNameTextBox">Name:</label>
                <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="LastNameTextBox">Userame:</label>
                <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="PhoneNumberTextBox">Phone Number:</label>
                <asp:TextBox ID="PhoneNumberTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="EmailTextBox">Email:</label>
                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" ReadOnly="true" disabled></asp:TextBox>
            </div>

            <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" CssClass="btn btn-primary" />
                        <asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="btn btn-primary" OnClick="cancel_Click" />

        </div>

        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3 text-center">
                        <img src="../Images/logo.png" width="30%">
                    </div>
                    <div class="col-sm-3">
                        <ul class="list-unstyled">
                            <li><a class="nav-link" href="#">Home</a></li>
                            <li><a class="nav-link" href="#">Services</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <ul class="list-unstyled">
                            <li><a class="nav-link" href="#">Contact Us</a></li>
                            <li><a class="nav-link" href="#">About Us</a></li>
                            <li><a class="nav-link" href="#">Location</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-3">
                        <ul class="list-unstyled">
                            <li>Have Any Question?</li>
                            <li><i class="fa-regular fa-envelope"></i>bookunity@email.com</li>
                            <li><i class="fa-solid fa-phone"></i>+962-000000000</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <small>&#9400; BookUnity 2025 | Follow Us: <i class="fa-brands fa-instagram"></i><i class="fa-brands fa-square-facebook"></i><i class="fa-brands fa-whatsapp"></i></small>
                    </div>
                </div>
            </div>
        </footer>
    </form>
    <script>
        function previewImage(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var img = document.getElementById('<%= ProImg.ClientID %>');
                    img.src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

