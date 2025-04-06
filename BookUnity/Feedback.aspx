<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="Project_4_.Feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

            .navbar-nav .nav-link::after {
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

            .navbar-nav .nav-link:hover::after {
                width: 100%;
            }



            .navbar-nav .nav-link:hover {
                color: #285f59;
            }


        /* Global Styles */
        .form-container {
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            margin: auto;
        }

        /* Form Inputs */
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

        /* Heading */
        .page-title {
            text-align: center;
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 20px;
        }

        .message-container {
            background-color: #f9f9f9;
            padding: 20px;
            margin-bottom: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .reply-container {
            margin-top: 10px;
        }

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
            }

        .button1 {
            background-color: #285f59; /* Green background */
            color: white; /* White text */
            border-radius: 12px; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
            padding: 20px;
            width: 250px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease; /* Smooth hover effect */
            border: 1px solid #ddd
        }

            .button1:hover {
                transform: translateY(-10px);
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2)
            }
        /*------- Footer Section End -----------*/
    </style>

</head>
<body>
    <form id="form1" runat="server">
                   <div class="container my-5">


                <div class="tab-content mt-3" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <div class="container mt-5">
                            <div class="card shadow-lg p-4">
                                <div class="text-center">

                                    <asp:Image ID="Image1" runat="server" ImageUrl="../Images/logo.png" AlternateText="My Image" Width="300px" />
                                </div>


                                <%--    <div class="container my-5">
            <div class="form-container">
                <h2 class="page-title">User Messages</h2>

                <asp:Repeater ID="MessagesRepeater" runat="server">
                    <ItemTemplate>
                        <div class="message-container">
                            <p><strong>Email:</strong> <%# Eval("Email") %></p>
                            <p><strong>Name:</strong> <%# Eval("Name") %></p>
                            <p><strong>Message:</strong> <%# Eval("MessageContent") %></p>
                            <div class="reply-container">
                                <asp:TextBox ID="ReplyTextBox" runat="server" CssClass="form-control" Rows="3" TextMode="MultiLine" placeholder="Your reply..."></asp:TextBox>
                                <asp:Button ID="ReplyButton" runat="server" Text="Reply" OnClick="ReplyButton_Click" CommandArgument='<%# Eval("Email") %>' CssClass="btn btn-primary mt-2" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>--%>

                                <div class="container my-5">
                                    <div class="form-container">
                                        <h2 class="page-title">Users Feedback</h2>
                                        <asp:Repeater ID="MessagesRepeater" runat="server">
                                            <ItemTemplate>
                                                <div class="message-container">
                                                    <p><strong>Email:</strong> <%# Eval("Email") %></p>
                                                    <p><strong>Name:</strong> <%# Eval("FirstName") %> <%# Eval("LastName") %></p>
                                                    <p><strong>Message:</strong> <%# Eval("MessageContent") %></p>
                                                    <div class="reply-container">
                                                        <asp:TextBox ID="ReplyTextBox" runat="server" CssClass="form-control" Rows="3" TextMode="MultiLine" placeholder="Your reply..."></asp:TextBox>
                                                        <asp:Button ID="ReplyButton" runat="server" Text="Reply" OnClick="ReplyButton_Click" CommandArgument='<%# Eval("Email") %>' CssClass="btn btn-primary mt-2" />
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>



                                <asp:Button ID="returnDashboard" runat="server" Text="Back To DashBoard" CssClass="button1" OnClick="returnDashboard_Click" />
                            </div>


                        </div>
                    </div>

                </div>

            </div>

    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</body>
</html>

