<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashboardAdmin.aspx.cs" Inherits="Project_4_.DashboardAdmin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Dashboard - Library Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

    <style>
        .confirmBtn:before {
            content: "✅";
        }

        .confirmBtn {
            padding: 10px;
            color: white;
            background-color: #2E7D32;
            border-radius: 30px;
            cursor: pointer;
        }

        .rejectBtn {
            padding: 10px;
            color: white;
            background-color: #D32F2F;
            border-radius: 30px;
            cursor: pointer;
        }

        .returnBtn {
            padding: 10px;
            color: white;
            background-color: #3EADA1;
            border-radius: 30px;
            cursor: pointer;
        }

        .removeBtn {
            padding: 10px;
            color: white;
            background-color: #D32F2F;
            border-radius: 30px;
            cursor: pointer;
        }

        .editBtn {
            padding: 10px;
            color: white;
            background-color: #2E7D32;
            border-radius: 30px;
            cursor: pointer;
        }

        * {
            margin: 0;
            padding: 0;
            outline: none;
            border: none;
            text-decoration: none;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            display: flex;
            min-height: 100vh;
            background: #f9f9f9;
            position: relative;
        }


        .sidebar {
            position: fixed;
            z-index: 1100;
            top: 0;
            left: 0;
            bottom: 0;
            width: 215px;
            height: 100vh;
            padding: 0 1.7rem;
            color: #fff;
            overflow: hidden;
            transition: all 0.5s linear;
            background: #CD7507fa
        }

        /*            .sidebar:hover {
                width: 240px;
                transition: 0.5s;
            }
*/
        .menu {
            height: 88%;
            position: relative;
            list-style: none;
            padding: 0;
        }

            .menu li {
                padding: 12px 20px;
                margin: 8px 0;
                border-radius: 8px;
                transition: background 0.3s ease;
                cursor: pointer;
                display: flex;
                align-items: center;
                gap: 15px;
                white-space: nowrap;
            }

                .menu li.active {
                    background-color: #d3a87c;
                    color: #fff;
                    border-radius: 5px;
                }

                .menu li:hover,
                .menu li.active {
                    background: rgba(255, 255, 255, 0.2);
                }

            .menu a {
                text-decoration: none;
                color: white;
                display: block;
            }

        .nav-links .links_name {
            font-size: 14px;
            color: #FFF;
            opacity: 0;
            transition: opacity 0.3s ease;
            overflow: hidden;
        }

        .sidebar:hover .links_name {
            opacity: 1;
        }


        .nav-links li span {
            display: inline-block;
            vertical-align: middle;
        }

        .logo {
            width: 100%;
            text-align: center;
            padding: 10px 0;
        }

            .logo img {
                width: 80%;
                max-width: 120px;
                height: auto;
            }


        .main-content {
            margin-left: 200px;
            margin-top: 70px;
            padding: 20px;
        }


        h3 {
            margin-bottom: 15px;
            color: #333;
        }


        .card-container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            background-color: #f5f5f5;
        }


        .card {
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 250px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: 1px solid #ddd;
        }


            .card:hover {
                transform: translateY(-10px);
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            }


            .card h4 {
                font-size: 1.4rem;
                color: #333;
                margin-bottom: 10px;
            }

        .card-detail {
            font-size: 2rem;
            font-weight: bold;
            color: #007BFF;
            margin-top: 10px;
            display: block;
        }


        .action-btn {
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: white;
        }

        .accept-btn {
            background-color: green;
        }

        .reject-btn {
            background-color: red;
        }


        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #CD7507;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .header--wrapper {
            position: fixed;
            top: 0;
            left: 200px;
            right: 0;
            background: #FFFFFF;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            height: 70px;
        }

        /*        Header Title
        .header--title h2 {
            margin: 0;
            color: #CD7507;
        }*/


        .user--info {
            display: flex;
            align-items: center;
            gap: 15px;
        }


        .search--box {
            background: rgb(237, 237,237);
            border-radius: 15px;
            color: rgba(113, 99, 186, 255);
            display: flex;
            align-items: center;
            gap: 5px;
            padding: 4px 12px;
        }

            .search--box input {
                border: none;
                background: transparent;
                padding: 5px;
                outline: none;
            }

            .search--box i {
                font-size: 1.2rem;
                cursor: pointer;
                transition: all 0.5s ease-out;
                color: #CD7507;
            }

                .search--box i:hover {
                    transform: scale(1.2)
                }


        .user--info img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            cursor: pointer;
        }

        .data-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 14px;
            text-align: center;
        }

            .data-table th, .data-table td {
                border: 1px solid #ddd;
                padding: 10px;
            }

            .data-table th {
                background-color: #CD7507;
                font-weight: bold;
            }

        .btn-confirm {
            background-color: green;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        .btn-reject {
            background-color: red;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .modal-content {
            background-color: #fff;
            margin: 10% auto;
            padding: 20px;
            border-radius: 10px;
            width: 30%;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .close {
            color: red;
            float: right;
            font-size: 28px;
            cursor: pointer;
        }

        .input-field {
            width: 90%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-save {
            background-color: green;
            color: white;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .close:hover {
            color: darkred;
        }

        .feedback-button {
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

            .feedback-button:hover {
                transform: translateY(-10px);
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            }

        .card1 {
            align-items: center;
            background-color: forestgreen;
            border-radius: 20px;
            box-shadow: 0 0.4px 3.6px rgba(0, 0, 0, 0.004), 0 1px 8.5px rgba(0, 0, 0, 0.01), 0 1.9px 15.7px rgba(0, 0, 0, 0.019), 0 3.4px 28.2px rgba(0, 0, 0, 0.03), 0 6.3px 54.4px rgba(0, 0, 0, 0.047), 0 15px 137px rgba(0, 0, 0, 0.07);
            display: flex;
            flex-direction: column;
            top: auto;
            margin-bottom: 20px;
            width: 50%;
            top: auto;
            display: none;
            position: fixed;
            top: 50%;
            right: 25%;
            z-index: 10;
        }

        .buttons {
            display: flex;
            margin-top: 8px;
            width: 100%;
        }

        .button {
            align-items: center;
            background: #edf1f7;
            border-radius: 10px;
            cursor: pointer;
            display: flex;
            height: 50px;
            justify-content: center;
            margin: 0 5px 28px 20px;
            width: 100%;
        }

            .button:last-child {
                margin: 0 20px 20px 5px;
            }

        .button-primary {
            background-color: #0060f6;
            color: #fff;
        }

        .page-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 80%;
            margin: 20px auto;
        }

        /* General Table Styling */
        .data-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #f9f9f9;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

            /* Header Row Styling */
            .data-table th {
                background-color: #8B0000; /* Dark red background */
                color: white;
                padding: 12px 15px;
                text-align: center;
                font-weight: bold;
                font-size: 16px;
            }

            /* Row Styling */
            .data-table td {
                padding: 10px 15px;
                text-align: center;
                border-bottom: 1px solid #ddd;
                font-size: 15px;
                color: #333;
            }

            /* Alternate Row Colors */
            .data-table tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            /* Hover Effect */
            .data-table tr:hover {
                background-color: #e6f7ff;
                transition: background-color 0.3s ease;
            }

        /* Status Badges */
        .status-pending {
            background-color: #FFD700; /* Yellow */
            color: black;
            padding: 5px 10px;
            border-radius: 20px;
            display: inline-flex;
            align-items: center;
            gap: 5px;
            font-weight: bold;
        }

        .status-approved {
            background-color: #28a745; /* Green */
            color: white;
            padding: 5px 10px;
            border-radius: 20px;
            display: inline-flex;
            align-items: center;
            gap: 5px;
            font-weight: bold;
        }

        /* Action Buttons */
        .btn-approve,
        .btn-reject {
            padding: 6px 15px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            transition: transform 0.2s ease, background-color 0.3s ease;
        }

        .btn-approve {
            background-color: #28a745; /* Green */
            color: white;
        }

        .btn-reject {
            background-color: #dc3545; /* Red */
            color: white;
        }

        /* Button Hover Effects */
        .btn-approve:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        .btn-reject:hover {
            background-color: #c82333;
            transform: scale(1.05);
        }

        .contentsec {
            padding: 20px;
            background: #fcfcf7;
            border-radius: 10px;
        }

        /*8888888888888888888888888888888888888888888888*/
        .card1 {
            align-items: center;
            background-color: #ECE4D3;
            border-radius: 20px;
            box-shadow: 0px 0px 10px black;
            display: flex;
            flex-direction: column;
            width: 50%;
            margin-bottom: 20px;
            position: fixed;
            top: 50%;
            right: 25%;
            transform: translateY(-50%);
            z-index: 10;
            padding: 20px;
            padding-right: 0;
            color: white;
            justify-items: center !important;
        }

            .card1 input,
            .card1 select {
                width: 90%;
                padding: 10px;
                margin: 8px 0;
                margin-left: 20px;
                border: 1px solid #71140C;
                border-radius: 5px;
                background-color: #fff;
                color: #333;
            }

            .card1 .text {
                /*                background-color: #285F59;*/
                padding: 10px;
                border-radius: 5px;
                width: 90%;
                text-align: center;
            }

            .card1 .title {
                font-weight: bold;
                color: #CD7507;
            }

            .card1 .info {
                font-size: 14px;
                color: #000;
            }

            .card1 .buttons {
                display: flex;
                justify-content: space-between;
                width: 90%;
                margin-top: 15px;
            }

            .card1 .button {
                border: none;
                padding: 10px 15px;
                cursor: pointer;
                font-size: 14px;
                border-radius: 30px;
                transition: 0.3s;
                flex: 1;
                margin: 5px;
                text-align: center;
            }

            .card1 .button {
                background-color: #71140C;
                color: #fff;
            }

                .card1 .button:hover {
                    background-color: #5c100a;
                }

            .card1 .button-primary {
                background-color: #285F59;
                color: #fff;
            }

                .card1 .button-primary:hover {
                    background-color: #1e4a45;
                }

        /*8888888888888888888888888888888888888888888888*/
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <div class="logo">
                <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Images/logo-fotor-20250131212957.png" AlternateText="Library Logo" />
            </div>
            <ul class="menu">
                <li class="active">
                    <i class="fas fa-tachometer-alt"></i>
                    <asp:LinkButton ID="lnkDashboard" runat="server" Text="Dashboard" OnClick="ChangeView" CommandArgument="Dashboard" />
                </li>
                <li>
                    <i class="fa-solid fa-sort"></i>
                    <asp:LinkButton ID="lnkOrders" runat="server" Text="Order Requests" OnClick="ChangeView" CommandArgument="OrderRequest" />
                </li>
                <li>
                    <i class="fa-solid fa-users"></i>
                    <asp:LinkButton ID="lnkUsers" runat="server" Text="Users Info" OnClick="ChangeView" CommandArgument="UserInfo" />
                </li>
                <li>
                    <i class="fa-solid fa-book-bookmark"></i>
                    <asp:LinkButton ID="lnkBooks" runat="server" Text="Books" OnClick="ChangeView" CommandArgument="Book" />
                </li>
                <li>
                    <i class="fa-solid fa-people-roof"></i>
                    <asp:LinkButton ID="lnkRooms" runat="server" Text="Rooms" OnClick="ChangeView" CommandArgument="Room" />
                </li>
                <li>
                    <i class="fa-solid fa-people-roof"></i>
                    <asp:LinkButton ID="lnkFeedback" runat="server" Text="Feedback" OnClick="ChangeView" CommandArgument="Feedback" />
                </li>
                <li>
                    <i class="fa-solid fa-right-from-bracket"></i>
                    <asp:LinkButton ID="lnkLogout" runat="server" Text="Logout" OnClick="Logout_Click" />
                </li>
            </ul>
        </div>
        <div class="header--wrapper">
            <div class="header--title">
                <span>Saleh</span>
                <h2>Dashboard</h2>
            </div>
            <div class="user--info">
                <div class="search--box">
                    <i class="fa solid fa-search"></i>
                    <input type="text" placeholder="Search" />
                </div>
                <asp:Image ID="Admin" runat="server" ImageUrl="~/Images/tes1.jpg" AlternateText="admnin" />
            </div>
        </div>
        <div class="main-content" style="width: 90%">
            <asp:Panel ID="DashboardSection" runat="server" CssClass="contentsec" Visible="true">
                <h3>Dashboard Summary</h3>
                <div class="card-container">
                    <div class="card">
                        <img src="https://www.iconpacks.net/icons/1/free-user-group-icon-296-thumb.png" width="100" />
                        <h4>Total Users</h4>
                        <asp:Label ID="lblUserCount" runat="server" CssClass="card-detail"></asp:Label>
                    </div>
                    <div class="card">
                        <img src="https://cdn-icons-png.flaticon.com/512/2702/2702069.png" width="100" />

                        <h4>Total Books</h4>
                        <asp:Label ID="lblRoomReservationCount" runat="server" CssClass="card-detail"></asp:Label>
                    </div>
                    <div class="card">
                        <img src="https://cdn-icons-png.freepik.com/512/10863/10863778.png" width="100" />

                        <h4>Reservations</h4>
                        <asp:Label ID="lblBookReservationCount" runat="server" CssClass="card-detail"></asp:Label>
                    </div>
                </div>

            </asp:Panel>

            <asp:Panel ID="OrderRequestSection" runat="server" CssClass="contentsec" Visible="false">

                <h2>📚 Book Requests</h2>
                <asp:Table ID="table11212" runat="server" CssClass="data-table">

                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Book ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Confirm</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Reject</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>

                <h2 style="margin-top: 5%">📚 Book Returns</h2>

                <asp:Table ID="table2" runat="server" CssClass="data-table">

                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Returned</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>

                <h2 style="margin-top: 5%">🏠 Room Requests</h2>

                <asp:Table ID="table1" runat="server" CssClass="data-table">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Room ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time End</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Time Start</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Confirm</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Reject</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
            </asp:Panel>

            <asp:Panel ID="UserInfoSection" runat="server" CssClass="contentsec" Visible="false">
                <h2 style="margin-top: 5%"> 👤 All Users</h2>
                <asp:Table ID="ShowAllusersTable" runat="server">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>User Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Phone</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Email</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
            </asp:Panel>
            <asp:Panel ID="BookSection" runat="server" CssClass="contentsec" Visible="false">
                <h2 style="margin-top: 5%">📚 All Book</h2>
                <asp:Table ID="ShowAllBooksTable" runat="server">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>Book-ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Book_Title</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Book_Author</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Book_category</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Book_Stutas</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Delete</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Edit</asp:TableHeaderCell>

                    </asp:TableHeaderRow>
                </asp:Table>
                <div class="container">
                    <asp:DropDownList ID="Status" runat="server">
                        <asp:ListItem Value="0" Text="--Select Status--" />
                        <asp:ListItem Value="1" Text="Available" />
                        <asp:ListItem Value="2" Text="Reserved" />
                    </asp:DropDownList>

                    <div runat="server" class="card1" id="CardDiv" style="display: none">

                        <asp:TextBox runat="server" ID="Title" PlaceHolder="Title"></asp:TextBox>
                        <asp:TextBox runat="server" ID="Author" PlaceHolder="Author"></asp:TextBox>
                        <asp:TextBox runat="server" ID="Category" PlaceHolder="Category"></asp:TextBox>
                        <asp:DropDownList runat="server" ID="dropDownStatus">
                            <asp:ListItem Value="0">-- Select Book Status --</asp:ListItem>
                            <asp:ListItem Value="1">Available</asp:ListItem>
                            <asp:ListItem Value="2">Reserved</asp:ListItem>
                        </asp:DropDownList>

                        <div class="text">
                            <div class="title">
                                Store your photos?
                                <div class="tooltip">
                                    <div class="tooltip-spacing">
                                        <div class="tooltip-bg1"></div>
                                        <div class="tooltip-bg2"></div>
                                        <div class="tooltip-text"></div>
                                    </div>
                                </div>

                            </div>
                            <div class="info">
                                Do you want to backup your precious moments securely in the cloud? If
so, Thunderstorm Cloud Inc has got your back.
                            </div>
                        </div>
                        <div class="buttons">

                            <asp:Button runat="server" ID="cancelBtn" CssClass="button" OnClick="cancelBtn_Click" Text="Cancel" />
                            <asp:Button runat="server" CssClass="button button-primary" ID="confirmBtn" OnClick="confirmroom_Click" Text="Do it!" />


                        </div>
                    </div>
                </div>
            </asp:Panel>

            <asp:Panel ID="RoomSection" runat="server" CssClass="contentsec" Visible="false">

                                <asp:Table ID="ShowAllRoomTable" runat="server" CssClass="data-table">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>Room ID</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Room Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Capacity</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Availability</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Delete</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Edit</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>

                <div class="container">
                    <asp:DropDownList ID="DropDownListroom" runat="server">
                        <asp:ListItem Value="0" Text="--Select Status--" />
                        <asp:ListItem Value="1" Text="Available" />
                        <asp:ListItem Value="2" Text="Booked" />
                    </asp:DropDownList>

                    <div runat="server" class="card1" id="Div1" style="display: none">

                        <asp:TextBox runat="server" ID="Name" PlaceHolder="Name"></asp:TextBox>
                        <asp:TextBox runat="server" ID="Capacity" PlaceHolder="Capacity"></asp:TextBox>
                        <asp:DropDownList runat="server" ID="DropDownList2">
                            <asp:ListItem Value="0">-- Select Book Status --</asp:ListItem>
                            <asp:ListItem Value="1">Available</asp:ListItem>
                            <asp:ListItem Value="2">Booked</asp:ListItem>
                        </asp:DropDownList>

                        <div class="text">
                            <div class="title">
                                Store your photos?
                               
                                    <div class="tooltip">
                                        <div class="tooltip-spacing">
                                            <div class="tooltip-bg1"></div>
                                            <div class="tooltip-bg2"></div>
                                            <div class="tooltip-text"></div>
                                        </div>
                                    </div>

                            </div>
                            <div class="info">
                                Do you want to backup your precious moments securely in the cloud? If
so, Thunderstorm Cloud Inc has got your back.
                           
                            </div>
                        </div>
                        <div class="buttons">

                            <asp:Button runat="server" ID="Button1" CssClass="button" OnClick="cancelBtn_Click" Text="Cancel" />
                            <asp:Button runat="server" CssClass="button button-primary" ID="savebtn" OnClick="btnSave_Click" Text="Do it!" />


                        </div>
                    </div>
                </div>

               
            </asp:Panel>


            <asp:Panel ID="FeedbackSection" runat="server" Visible="false" CssClass="menu-link">
                <asp:Button ID="FeedbackButton" runat="server" Text="Go to Feedback Page" OnClick="FeedbackButton_Click" CssClass="feedback-button" />
            </asp:Panel>
    </form>
    <script>
        function openModal() {
            document.getElementById('editModal').style.display = 'block';
        }

        function closeModal() {
            document.getElementById('editModal').style.display = 'none';
        }
        type = "text/javascript" >
            function openGmail() {
                window.open("https://mail.google.com/mail/u/0/?pli=1#inbox/", "_blank");
            }

    </script>
</body>
</html>
