<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regestrationPage.aspx.cs" Inherits="Project_4_.Users.regestrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100..900&display=swap" rel="stylesheet">
    <title>Regestration Page</title>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: url("https://plus.unsplash.com/premium_photo-1703701579798-4ffd7738a803?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fA%3D%3D");
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            position: relative;
        }

            body::before {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.6); 
                z-index: -1;
            }

        .wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: rgba(39, 39, 39, 0.4);
        }

        .form-box {
            position: relative;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 512px;
            height: 700px;
            overflow: hidden;
            z-index: 2;
        }

        .register-container {
            position: absolute;
            right: 5px;
            width: 500px;
            display: flex;
            flex-direction: column;
            transition: .5s ease-in-out;
        }

        .top span {
            color: #fff;
            font-size: small;
            padding: 10px 0;
            display: flex;
            justify-content: center;
        }

            .top span a {
                font-weight: 500;
                color: #fff;
                margin-left: 5px;
            }

        header {
            color: #ECE4D1;
            text-shadow: 0px 0px 3px white;
            font-size: 30px;
            text-align: center;
            padding: 10px 0 30px 0;
            font-weight: bold;
        }

        /* Profile Picture */
        .profile-picture {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin-bottom: 20px;
        }

            .profile-picture img {
                width: 100px;
                height: 100px;
                border-radius: 50%;
                object-fit: cover;
                margin-bottom: 10px;
                border: 2px solid #fff;
            }

            .profile-picture input[type="file"] {
                display: none;
            }

        .upload-btn {
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
            border: none;
            border-radius: 30px;
            padding: 10px 20px;
            cursor: pointer;
        }

            .upload-btn:hover {
                background: rgba(255, 255, 255, 0.4);
            }


        /* Form Styling */
        .two-forms {
            display: flex;
            gap: 10px;
        }

        .input-field {
            font-size: 15px;
            background: rgba(236, 228, 211, 0.7);
            color: #fff;
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
                color:white;
            }

        .input-box i {
            position: relative;
            top: -35px;
            left: 17px;
            color: #fff;
        }
                ::-webkit-input-placeholder {
            color: #fff;
            font-weight:100;
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

        .file-upload-container {
            position: relative;
            display: flex;
            align-items: center;
        }

            /* Hide the default FileUpload button */
            .file-upload-container input[type="file"] {
                position: absolute;
                left: 0;
                top: 0;
                opacity: 0;
                width: 100%;
                height: 100%;
                cursor: pointer;
            }

        /* Custom Upload Button */
        .custom-upload-btn {
            background: rgba(205, 117, 7, 0.8);
            color: white;
            padding: 10px 20px;
            border-radius: 30px;
            text-align: center;
            font-size: 16px;
            cursor: pointer;
            display: inline-block;
            transition: 0.3s;
        }

            .custom-upload-btn:hover {
                background: rgba(236, 228, 211, 0.9);
                box-shadow: 1px 5px 7px 1px rgba(0, 0, 0, 0.2);
                color: black;            }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>


            <%--            <a href="../Home.aspx">
                <asp:Image ID="Image1" runat="server" ImageUrl="../Images/logo.png" AlternateText="My Image" Width="125px" Height="100px" />
            </a>--%>
            <div class="wrapper">

                <div class="form-box">
                    <!------------------- Registration Form --------------------------->

                    <div class="register-container" id="register">
                        <div class="top">

                            <header>Create An Account</header>
                        </div>

                        <!-- Profile Picture Upload -->
<div class="profile-picture">
    <!-- Image Preview -->
    <img id="profilePicPreview" src="https://via.placeholder.com/100" 
         style="width: 100px; height: 100px; border-radius: 50%;" />

    <div style="display: flex; flex-direction: row;">
        <div class="file-upload-container">
            <!-- ASP.NET FileUpload (Hidden) -->
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="custom-file-input" style="display: none;" />

            <!-- Label as Custom Button -->
            <label for="<%= FileUpload1.ClientID %>" class="custom-upload-btn" onclick="triggerFileUpload('<%= FileUpload1.ClientID %>')">
                Choose File
            </label>
        </div>
    </div>
</div>


                        <div class="two-forms">
                            <div class="input-box">

                                <asp:TextBox ID="fName" CssClass="input-field" placeholder="Full name" runat="server"></asp:TextBox>
                                <i class="bx bx-user"></i>
                            </div>
                            <div class="input-box">
                                <asp:TextBox type="text" class="input-field" placeholder="User name" ID="uName" runat="server"></asp:TextBox>

                                <i class="bx bx-user"></i>
                            </div>
                        </div>

                        <div class="input-box">

                            <asp:TextBox type="tel" class="input-field" placeholder="Phone Number" ID="phone" runat="server"></asp:TextBox>
                            <i class="bx bx-phone"></i>
                        </div>

                        <div class="input-box">

                            <asp:TextBox type="email" class="input-field" placeholder="Email" ID="email" runat="server" onblur="checkEmail(this)"></asp:TextBox>
                            <i class="bx bx-envelope"></i>
                        </div>

                        <div class="input-box">

                            <asp:TextBox type="password" class="input-field" placeholder="Password" ID="password" runat="server"></asp:TextBox>
                            <i class="bx bx-lock-alt"></i>
                        </div>

                        <div class="input-box">

                            <asp:Button class="submit" ID="registar" runat="server" Text="Registar" OnClick="registar_Click" OnClientClick="return chkvalidation()" />
                            <asp:Label ID="MsgText" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblResultMessage" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="top">
                            <span>Have an account?
                                <asp:Label runat="server" Style="margin: 0; padding: 0;"><a href="loginPage.aspx">Login</a></asp:Label></span>

                        </div>

                    </div>
                </div>
            </div>

            <script>
                // Trigger ASP.NET FileUpload Click
                function triggerFileUpload(fileUploadId) {
                    document.getElementById(fileUploadId).click();
                }

                // Preview Selected Image
                document.addEventListener("DOMContentLoaded", function () {
                    var fileUpload = document.getElementById('<%= FileUpload1.ClientID %>');

    if (fileUpload) {
        fileUpload.addEventListener("change", function () {
            if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    document.getElementById("profilePicPreview").src = e.target.result;
                };
                reader.readAsDataURL(this.files[0]);
            }
        });
    }
});





                function chkvalidation() {
                    var exitval = true;  // افتراض أن جميع الإدخالات صحيحة حتى يثبت العكس
                    var msgtext = "";

                    // Mobile Validation
                    var mobileval = document.getElementById("<%= phone.ClientID %>").value.trim();
                    if (mobileval === "") {
                        msgtext += "\n - Mobile number is required.";
                        exitval = false;
                    } else if (mobileval.length !== 10 || !OnlyNumbers(document.getElementById("<%= phone.ClientID %>"))) {
                        msgtext += "\n - Invalid mobile number (must be 10 digits).";
                        exitval = false;
                    }

                    // Password Validation
                    var passwordval = document.getElementById("<%= password.ClientID %>").value.trim();
                    if (passwordval === "") {
                        msgtext += "\n - Password is required.";
                        exitval = false;
                    } else if (passwordval.length < 6) {
                        msgtext += "\n - Password must be at least 6 characters long.";
                        exitval = false;
                    }

                    // Email Validation
                    var emailval = document.getElementById("<%= email.ClientID %>").value.trim();
                    if (emailval === "") {
                        msgtext += "\n - Email is required.";
                        exitval = false;
                    } else if (!checkEmail(document.getElementById("<%= email.ClientID %>"))) {
                        msgtext += "\n - Invalid email format.";
                        exitval = false;
                    }

                    // إذا كان هناك أخطاء، عرضها في alert
                    if (!exitval) {
                        alert("Please fix the following errors:" + msgtext);
                    }

                    return exitval;
                }

                // تحقق من أن الإدخال يحتوي فقط على أرقام
                function OnlyNumbers(input) {
                    var regex = /^[0-9]+$/;
                    return regex.test(input.value);
                }

                // تحقق من صحة البريد الإلكتروني
                function checkEmail(input) {
                    var regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    return regex.test(input.value);
                }
            </script>

        </div>
    </form>
</body>
</html>
