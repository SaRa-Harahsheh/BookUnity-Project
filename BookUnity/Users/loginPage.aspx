<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Project_4_.Users.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet' />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet" />
    <title>login page</title>
    <style>
        /* POPPINS FONT */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: url("https://www.daniels.utoronto.ca/sites/default/files/2023-08/Daniels%20Photoshoot-8.jpg") no-repeat center center;
            background-size: cover;
            background-attachment: fixed;
            overflow: hidden;
            position: relative;
        }

            body::before {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.5); /* تعتيم الخلفية بنسبة 50% */
                z-index: -1;
            }

        .wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: rgba(39, 39, 39, 0.4);
        }

        .nav {
            position: fixed;
            top: 0;
            display: flex;
            justify-content: flex-start;
            width: 100%;
            height: 100px;
            line-height: 100px;
            background: linear-gradient(rgba(39,39,39, 0.6), transparent);
            z-index: 100;
        }

        .nav-logo p {
            color: white;
            font-size: 25px;
            font-weight: 600;
        }

        .nav-menu ul {
            display: flex;
        }

            .nav-menu ul li {
                list-style-type: none;
            }

                .nav-menu ul li .link {
                    text-decoration: none;
                    font-weight: 500;
                    color: #fff;
                    padding-bottom: 15px;
                    margin: 0 25px;
                }

        .link:hover, .active {
            border-bottom: 2px solid #fff;
        }

        .nav-button .btn {
            width: 130px;
            height: 40px;
            font-weight: 500;
            background: rgba(255, 255, 255, 0.4);
            border: none;
            border-radius: 30px;
            cursor: pointer;
            transition: .3s ease;
        }

        .btn:hover {
            background: rgba(255, 255, 255, 0.3);
        }

        #registerBtn {
            margin-left: 15px;
        }

        .btn.white-btn {
            background: rgba(255, 255, 255, 0.7);
        }

            .btn.white-btn:hover {
                background: rgba(255, 255, 255, 0.5);
            }

        .nav-menu-btn {
            display: none;
        }

        .form-box {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 512px;
            height: 100vh;
            overflow: hidden;
            z-index: 2;
        }

        .login-container {
            position: absolute;
            left: 4px;
            width: 500px;
            display: flex;
            flex-direction: column;
            transition: .5s ease-in-out;
        }

        .register-container {
            position: absolute;
            right: -520px;
            width: 500px;
            display: flex;
            flex-direction: column;
            transition: .5s ease-in-out;
        }

        .one span {
            color: #fff;
            font-size: small;
            padding: 10px 0;
            display: flex;
            justify-content: center;
        }

            .one span a {
                font-weight: 500;
                color: #fff;
                margin-left: 5px;
                text-decoration: none;
            }

                .one span a:hover {
                    text-decoration: underline;
                }

        header {
            color: #ECE4D1;
            text-shadow: 0px 0px 3px white;
            font-size: 30px;
            text-align: center;
            padding: 10px 0 30px 0;
            font-weight: bold;
        }

        .two-forms {
            display: flex;
            gap: 10px;
        }

        .input-field {
            font-size: 15px;
            background: rgba(236, 228, 211, 0.7);
            color: #000;
            height: 50px;
            width: 100%;
            padding: 0 10px 0 45px;
            border: none;
            border-radius: 30px;
            outline: none;
            transition: .2s ease;
        }


            .input-field:hover, .input-field:focus {
                background: rgba(255, 255, 255, 0.25);
            }

        ::-webkit-input-placeholder {
            color: #fff;
        }

        .input-box i {
            position: relative;
            top: -35px;
            left: 17px;
            color: #fff;
        }

        .submit {
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

            .submit:hover {
                background: rgba(236, 228, 211, 0.9);
                box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
                color: black;
            }

        .two-col {
            display: flex;
            justify-content: space-between;
            color: #fff;
            font-size: small;
            margin-top: 10px;
        }

            .two-col .one {
                display: flex;
                gap: 5px;
            }

        .two label a {
            text-decoration: none;
            color: #fff;
        }

            .two label a:hover {
                text-decoration: underline;
            }

        @media only screen and (max-width: 786px) {
            .nav-button {
                display: none;
            }

            .nav-menu.responsive {
                top: 100px;
            }

            .nav-menu {
                position: absolute;
                top: -800px;
                display: flex;
                justify-content: center;
                background: rgba(255, 255, 255, 0.2);
                width: 100%;
                height: 90vh;
                backdrop-filter: blur(20px);
                transition: .3s;
            }

                .nav-menu ul {
                    flex-direction: column;
                    text-align: center;
                }

            .nav-menu-btn {
                display: block;
            }

                .nav-menu-btn i {
                    font-size: 25px;
                    color: #fff;
                    padding: 10px;
                    background: rgba(255, 255, 255, 0.2);
                    border-radius: 50%;
                    cursor: pointer;
                    transition: .3s;
                }

                    .nav-menu-btn i:hover {
                        background: rgba(255, 255, 255, 0.15);
                    }
        }

        @media only screen and (max-width: 540px) {
            .wrapper {
                min-height: 100vh;
            }

            .form-box {
                width: 100%;
                height: 500px;
            }

            .register-container, .login-container {
                width: 100%;
                padding: 0 20px;
            }

                .register-container .two-forms {
                    flex-direction: column;
                    gap: 0;
                }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="wrapper">

                <div class="form-box">

                    <!------------------- login form -------------------------->

                    <div class="login-container" id="login">
                        <div class="top" style="justify-items: center">


                            <a href="../Home.aspx">
                                <asp:Image ID="Image2" runat="server" ImageUrl="../Images/logo.png" AlternateText="My Image" Width="150px" Height="100px" />
                            </a>
                            <header>Login</header>
                        </div>


                        <div class="input-box">
                            <asp:TextBox ID="email" type="text" class="input-field" placeholder=" Email" runat="server"></asp:TextBox>
                            <i class="bx bx-user"></i>
                        </div>


                        <div class="input-box">

                            <asp:TextBox ID="password" type="password" class="input-field" placeholder="Password" runat="server"></asp:TextBox>
                            <i class="bx bx-lock-alt"></i>
                        </div>
                        <div class="input-box">

                            <asp:Button type="submit" class="submit" value="Sign In" ID="sigIn" runat="server" Text="Sign In" OnClick="sigIn_Click" />

                            <asp:Label ID="result" runat="server" Visible="false" Style="color: red !important;"></asp:Label>
                        </div>
                        <div class="two-col">
                            <div class="one">
                                <span>Don't have an account?<asp:Label runat="server" Style="margin: 0; padding: 0;"> <a href="regestrationPage.aspx" >Sign Up</a></asp:Label></span>
                            </div>
                            <div class="two">
                                <label><a href="#">Forgot password?</a></label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

