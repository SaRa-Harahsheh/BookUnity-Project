<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchBooks.aspx.cs" Inherits="Project_4_.Books.SearchBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Search</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />

    <!--FontAwesome-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />

    <!--MyCSS-->
    <link href="~\Styles\nav-footer.css" rel="stylesheet" />
    <link href="~\Styles\SearchBook.css" rel="stylesheet" />
    <style>
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
          .borrowBtn:hover {
        background-color: #285F59 !important;
        border: none !important;
        color: #ECE4D3 !important;
    }
    </style>
</head>
<body onload="startSliding()">
    <form id="form1" runat="server">
        <div>
            <!--Navbar Start-->
            <nav class="navbar navbar-expand-lg sticky-top">
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
                                <a class="nav-link under" href="..\Home.aspx">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="..\About.aspx">About</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="..\Srvices.aspx">Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link under" href="..\Contact.aspx">Contact</a>
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

            <div class="search">
                <h2 style="color:#CD7507; font-weight:bold;margin-bottom:3%; margin-top:2%">Search For Your New Favourite Book</h2>
                <div class="sliderContainer">
                    <div class="slider">
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                        <div class="box b1"></div>
                        <div class="box b2"></div>
                        <div class="box b3"></div>
                    </div>
                </div>

                <div class="search__container">
                    <asp:TextBox class="search__input" type="text" placeholder="Search a book name, author.." runat="server" ID="bookSearch"></asp:TextBox>
                    <asp:Button class="searchBookBtn" ID="searchBookBtn" runat="server" Text="Search" OnClick="searchBookBtn_Click" />
                </div>
                <section id="bookSearchResults" runat="server">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">

                                <%--                                <div class="card border-0 mb-4 mt-4">
                                    <div class="d-flex">
                                        <div class="horizontal-card-bg-img"></div>
                                        <div class="flex-fill">
                                            <div class="card-body">
                                                <div class="font-weight-bold mt-3">{book[1]}</div>
                                                <div class="mb-3">{book[2]}</div>
                                            </div>
                                        </div>
                                        <div class="horizontal-card-btn-container d-flex justify-content-center align-items-center">
                                            <button class="borrowBtn" id="btnSend">Borrow</button>
                                        </div>
                                    </div>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <footer>
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


            <script src="..\Scripts\SearchBook.js"></script>

            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>
        </div>

<%--        <div id="borrowPopup" class="popup">
            <div class="popup-content">
                <span class="close-btn">&times;</span>
                <h3>Select Borrowing Date & Time</h3>
                <p>Choose when you want to borrow the book:</p>

                <label for="borrowDate">Select Date:</label>
                <asp:TextBox type="date" ID="borrowDate" class="popup-input"  runat="server"></asp:TextBox>

                <label for="borrowTime">Select Time:</label>
                <asp:TextBox type="time" ID="borrowTime" class="popup-input" runat="server"></asp:TextBox>

                <div class="popup-buttons">
                    <asp:HiddenField ID="hiddenBookID" runat="server" Value="urlParams.get('borrowedBook')" />
                    <asp:Button class="confirm-btn" runat="server" OnClick="btnConfirm_Click" Text="Confirm"></asp:Button>
                    <button class="cancel-btn">Cancel</button>
                </div>
            </div>
        </div>--%>


    </form>

</body>
</html>

