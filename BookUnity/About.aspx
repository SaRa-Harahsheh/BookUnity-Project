<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Project_4_.About" %>


<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <title>BookUnity</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />

    <!--FontAwesome-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />

    <!--MyCSS-->
    <link href="Styles\nav-footer.css" rel="stylesheet" />
    <!--

TemplateMo 570 Bookunity

https://templatemo.com/tm-570-chain-app-dev

-->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="stylesheet" href="assets/css/animated.css">
    <link rel="stylesheet" href="assets/css/owl.css">

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
        .service-item{
            height:100%;
            align-content:center;
        }
    </style>

</head>

<body>
    <form runat="server">
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
    </form>

    <div class="main-banner wow fadeIn" id="top" data-wow-duration="1s" data-wow-delay="0.5s">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6 align-self-center">
                            <div class="left-content show-up header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h2 style="color:wheat;">All The Books You Need In One Place </h2>
                                        <p style="color:wheat;">
                                            Welcome to <b>BookUnity</b> , the platform that brings together book lovers, entrepreneurs, and students in one place! We are here to provide a unique experience that allows you to easily borrow the books you need, as well as book quiet rooms for studying or meetings with convenience and flexibility.
                                        </p>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="right-image wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                                <img src="assets/images/slider-dec.png" alt="" style="position: relative; left: 118px;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="services" class="services section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="section-heading  wow fadeInDown" data-wow-duration="1s" data-wow-delay="0.5s">
                        <h4>Amazing <em>Services &amp; Features</em> for you</h4>
                        <img src="assets/images/heading-line-dec.png" alt="">
                        <p>
                            Explore a seamless experience with our book borrowing and meeting room reservations.<br>
                            Designed to make knowledge sharing and collaboration easier than ever!
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="service-item first-service">
                        <div class="icon"></div>
                        <h4>Book Borrowing Made Easy</h4>
                        <p>Our community platform allows you to easily borrow books from a wide range of genres. Whether you're looking for fiction, non-fiction, or educational books, our library has something for everyone. Simply search, choose, and borrow!</p>
                        <div class="text-button">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="service-item second-service">
                        <div class="icon"></div>
                        <h4>Seamless Meeting Room Booking</h4>
                        <p>Need a quiet space for your next meeting or brainstorming session? Our platform offers an easy-to-use booking system for meeting rooms. Reserve a room that fits your needs and enjoy a productive environment.</p>
                        <div class="text-button">
                            <br>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="service-item third-service">
                        <div class="icon"></div>
                        <h4>Community Collaboration</h4>
                        <p>
                            Join a network of like-minded individuals within our community. Share knowledge, attend events, and collaborate on projects that matter to you. 
              <br>
                            Our platform fosters a strong sense of community for learning and growth.

                        </p>
                        <br>
                        <div class="text-button">
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="service-item fourth-service">
                        <div class="icon"></div>
                        <h4>24/7 Help &amp; Support</h4>
                        <p>We’re here for you whenever you need us! Our dedicated support team is available around the clock to assist with any issues, whether it’s about borrowing a book or reserving a meeting room.</p>
                        <div class="text-button">
                            <br>
                            <br>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="about" class="about-us section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="section-heading">
                        <h4>About <em>What We Do</em> &amp; Who We Are</h4>
                        <img src="assets/images/heading-line-dec.png" alt="">
                        <p>We are a community dedicated to promoting the exchange of knowledge and experiences through books. Our platform allows members to borrow books from various fields, participate in educational events, and engage in enriching discussions that contribute to personal growth and learning.</p>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="box-item">
                                <h4><a href="#">Book Lending Service</a></h4>
                                <br>
                                <p>Borrow a variety of books to expand your knowledge.</p>
                                <br>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="box-item">
                                <h4><a href="#">Meeting Room  &amp; Booking</a></h4>
                                <p>Book meeting rooms for discussions, workshops, and events.</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="box-item">
                                <h4><a href="#">Educational Workshops & Events</a></h4>
                                <br>
                                <p>We create a space for growth and meaningful engagement.</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="box-item">
                                <h4><a href="#">Community Growth </a></h4>
                                <br>
                                <p>Join workshops and events to enhance personal and professional skills.</p>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <p>Together, we aim to create an environment that inspires learning, collaboration, and community growth.</p>
    
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="right-image">
                        <img src="assets/images/22.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>

 <footer style="margin-top:5%">
     <div class="justify-content-center mb-0 pt-5 pb-0 row-2 px-3">
         <div class="col-12">
             <div class="row row-2" style="justify-content:center">
                 <div class="col-sm-3 text-md-center" style="width:10%">
                     <img src="Images\logo.png" width="30%">
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <!-- Scripts -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/animation.js"></script>
    <script src="assets/js/imagesloaded.js"></script>
    <script src="assets/js/popup.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
