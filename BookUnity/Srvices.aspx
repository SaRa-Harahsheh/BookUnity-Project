<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Srvices.aspx.cs" Inherits="Project_4_.Srvices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Services</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />

    <!--FontAwesome-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />

    <!--MyCSS-->
    <link href="~\Styles\nav-footer.css" rel="stylesheet" />

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

        @import url("https://fonts.googleapis.com/css2?family=Baloo+2&display=swap");

        .dark {
            background: #110f16;
        }

        /*        .light {
            background: #f3f5f7;
        }*/

        a, a:hover {
            text-decoration: none;
            transition: color 0.3s ease-in-out;
        }

        #pageHeaderTitle {
            margin: 2rem 0;
            text-transform: uppercase;
            text-align: center;
            font-size: 2.5rem;
        }

        /* Cards */
        .postcard {
            flex-wrap: wrap;
            display: flex;
            box-shadow: 0 4px 21px -12px rgba(0, 0, 0, 0.66);
            border-radius: 10px;
            margin: 0 0 2rem 0;
            overflow: hidden;
            position: relative;
            color: #ffffff;
        }

            .postcard.dark {
                background-color: #18151f;
            }

            .postcard.light {
                background-color: #F5EFE3;
            }

            .postcard .t-dark {
                color: #18151f;
            }

            .postcard a {
                color: inherit;
            }

            .postcard h1, .postcard .h1 {
                margin-bottom: 0.5rem;
                font-weight: 500;
                line-height: 1.2;
            }

            .postcard .small {
                font-size: 80%;
            }

            .postcard .postcard__title {
                font-size: 1.75rem;
            }

            .postcard .postcard__img {
                max-height: 180px;
                width: 100%;
                object-fit: cover;
                position: relative;
            }

            .postcard .postcard__img_link {
                display: contents;
            }

            .postcard .postcard__bar {
                width: 50px;
                height: 10px;
                margin: 10px 0;
                border-radius: 5px;
                background-color: #424242;
                transition: width 0.2s ease;
            }

            .postcard .postcard__text {
                padding: 1.5rem;
                position: relative;
                display: flex;
                flex-direction: column;
            }

            .postcard .postcard__preview-txt {
                overflow: hidden;
                text-overflow: ellipsis;
                text-align: justify;
                height: 100%;
            }

            .postcard .postcard__tagbox {
                display: flex;
                flex-flow: row wrap;
                font-size: 14px;
                margin: 20px 0 0 0;
                padding: 0;
                justify-content: center;
            }

                .postcard .postcard__tagbox .tag__item {
                    display: inline-block;
                    background: rgba(83, 83, 83, 0.4);
                    border-radius: 3px;
                    padding: 2.5px 10px;
                    margin: 0 5px 5px 0;
                    cursor: default;
                    user-select: none;
                    transition: background-color 0.3s;
                }

                    .postcard .postcard__tagbox .tag__item:hover {
                        background: rgba(83, 83, 83, 0.8);
                    }

            .postcard:before {
                content: "";
                position: absolute;
                top: 0;
                right: 0;
                bottom: 0;
                left: 0;
                background-image: linear-gradient(-70deg, #424242, transparent 50%);
                opacity: 1;
                border-radius: 10px;
            }

            .postcard:hover .postcard__bar {
                width: 100px;
            }

        @media screen and (min-width: 769px) {
            .postcard {
                flex-wrap: inherit;
            }

                .postcard .postcard__title {
                    font-size: 2rem;
                }

                .postcard .postcard__tagbox {
                    justify-content: start;
                }

                .postcard .postcard__img {
                    max-width: 300px;
                    max-height: 100%;
                    transition: transform 0.3s ease;
                }

                .postcard .postcard__text {
                    padding: 3rem;
                    width: 100%;
                }

                .postcard .media.postcard__text:before {
                    content: "";
                    position: absolute;
                    display: block;
                    background: #18151f;
                    top: -20%;
                    height: 130%;
                    width: 55px;
                }

                .postcard:hover .postcard__img {
                    transform: scale(1.1);
                }

                .postcard:nth-child(2n+1) {
                    flex-direction: row;
                }

                .postcard:nth-child(2n+0) {
                    flex-direction: row-reverse;
                }

                .postcard:nth-child(2n+1) .postcard__text::before {
                    left: -12px !important;
                    transform: rotate(4deg);
                }

                .postcard:nth-child(2n+0) .postcard__text::before {
                    right: -12px !important;
                    transform: rotate(-4deg);
                }
        }

        @media screen and (min-width: 1024px) {
            .postcard__text {
                padding: 2rem 3.5rem;
            }

                .postcard__text:before {
                    content: "";
                    position: absolute;
                    display: block;
                    top: -20%;
                    height: 130%;
                    width: 55px;
                }

            .postcard.dark .postcard__text:before {
                background: #18151f;
            }

            .postcard.light .postcard__text:before {
                background: #F5EFE3;
            }
        }
        /* COLORS */
        .postcard .postcard__tagbox .green.play:hover {
            background: #79dd09;
            color: black;
        }

        .green .postcard__title:hover {
            color: #79dd09;
        }

        .green .postcard__bar {
            background-color: #79dd09;
        }

        .green::before {
            background-image: linear-gradient(-30deg, rgba(121, 221, 9, 0.1), transparent 50%);
        }

        .green:nth-child(2n)::before {
            background-image: linear-gradient(30deg, rgba(121, 221, 9, 0.1), transparent 50%);
        }

        .postcard .postcard__tagbox .blue.play:hover {
            background: #3EADA1 !important;
            color: antiquewhite;
        }

        .blue .postcard__title:hover {
            color: #285F59;
        }

        .blue .postcard__bar {
            background-color: #285F59;
        }

        .blue::before {
            background-image: linear-gradient(-30deg, rgba(0, 118, 189, 0.1), transparent 50%);
        }

        .blue:nth-child(2n)::before {
            background-image: linear-gradient(30deg, rgba(0, 118, 189, 0.1), transparent 50%);
        }

        .postcard .postcard__tagbox .red.play:hover {
            background: #B5382E !important;
            color: antiquewhite;
        }

        .red .postcard__title:hover {
            color: #E2521D;
        }

        .red .postcard__bar {
            background-color: #71140C;
        }

        .red::before {
            background-image: linear-gradient(-30deg, rgba(189, 21, 11, 0.1), transparent 50%);
        }

        .red:nth-child(2n)::before {
            background-image: linear-gradient(30deg, rgba(189, 21, 11, 0.1), transparent 50%);
        }

        .postcard .postcard__tagbox .yellow.play:hover {
            background: #bdbb49;
            color: black;
        }

        .yellow .postcard__title:hover {
            color: #bdbb49;
        }

        .yellow .postcard__bar {
            background-color: #bdbb49;
        }

        .yellow::before {
            background-image: linear-gradient(-30deg, rgba(189, 187, 73, 0.1), transparent 50%);
        }

        .yellow:nth-child(2n)::before {
            background-image: linear-gradient(30deg, rgba(189, 187, 73, 0.1), transparent 50%);
        }

        @media screen and (min-width: 769px) {
            .green::before {
                background-image: linear-gradient(-80deg, rgba(121, 221, 9, 0.1), transparent 50%);
            }

            .green:nth-child(2n)::before {
                background-image: linear-gradient(80deg, rgba(121, 221, 9, 0.1), transparent 50%);
            }

            .blue::before {
                background-image: linear-gradient(-80deg, rgba(0, 118, 189, 0.1), transparent 50%);
            }

            .blue:nth-child(2n)::before {
                background-image: linear-gradient(80deg, rgba(0, 118, 189, 0.1), transparent 50%);
            }

            .red::before {
                background-image: linear-gradient(-80deg, rgba(189, 21, 11, 0.1), transparent 50%);
            }

            .red:nth-child(2n)::before {
                background-image: linear-gradient(80deg, rgba(189, 21, 11, 0.1), transparent 50%);
            }

            .yellow::before {
                background-image: linear-gradient(-80deg, rgba(189, 187, 73, 0.1), transparent 50%);
            }

            .yellow:nth-child(2n)::before {
                background-image: linear-gradient(80deg, rgba(189, 187, 73, 0.1), transparent 50%);
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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

            <section class="light" id="services" style="margin-top: 3%; margin-bottom: 5%">
                <div class="container py-2">
                    <div class="h1 text-center text-dark" id="pageHeaderTitle" style="color: #CD7507 !important">Our Services</div>

                    <p style="text-align: center; margin-bottom: 3%; color: #71140C">Enjoy a smarter way to access knowledge and study resources with BookUnity!</p>

                    <article class="postcard light blue">
                        <a class="postcard__img_link" href="#">
                            <img class="postcard__img" src="https://th-thumbnailer.cdn-si-edu.com/sWf0xF1il7OWYO8j-PGqwBvxTAE=/1000x750/filters:no_upscale():focal(2550x1724:2551x1725)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer_public/9a/d7/9ad71c28-a69d-4bc0-b03d-37160317bb32/gettyimages-577674005.jpg" alt="Image Title" />
                        </a>
                        <div class="postcard__text t-dark">
                            <h1 class="postcard__title blue"><a href="#" style="color: #285F59">Find, Click, Borrow!</a></h1>
                            <div class="postcard__subtitle small">
                                <time datetime="2020-05-25 12:00:00">Search, pick your book, and borrow with ease.
                                </time>
                            </div>
                            <div class="postcard__bar"></div>
                            <div class="postcard__preview-txt">
                                Explore a vast collection across multiple categories, from bestsellers to academic gems. Use our smart search to quickly find the book you need and borrow it with ease—all in just a few clicks!

                            </div>
                            <ul class="postcard__tagbox">
                                <li class="tag__item play blue" style="background-color: #285F59">
                                    <a href="../Books/SearchBooks.aspx" style="color: antiquewhite"><i class="fa-solid fa-book mr-2" style="margin-right: 10px"></i>Search a book</a>
                                </li>
                            </ul>
                        </div>
                    </article>
                    <article class="postcard light red" style="margin-top: 5%">
                        <a class="postcard__img_link" href="#">
                            <img class="postcard__img" src="https://www.worthingtonlibraries.org/sites/default/files/styles/teaser_large/public/images/promotions/1466.30-39%20Worthington%20Park%20Library%20Renovation.jpg?h=a1dd1271&itok=DDsCbwml" alt="Image Title" />
                        </a>
                        <div class="postcard__text t-dark">
                            <h1 class="postcard__title red"><a href="#" style="color: #71140C">Your Perfect Study Spot Awaits!</a></h1>
                            <div class="postcard__subtitle small">
                                <time datetime="2020-05-25 12:00:00">Reserve a quiet space for focused learning.
                                </time>
                            </div>
                            <div class="postcard__bar"></div>
                            <div class="postcard__preview-txt">
                                Need a distraction-free environment? Check availability and book a study room in seconds. Plan your sessions effortlessly and focus on what truly matters.

                            </div>
                            <ul class="postcard__tagbox">
                                <li class="tag__item play red" style="background-color: #71140C">
                                    <a href="SerchingForRoom.aspx" style="color: antiquewhite"><i class="fa-solid fa-book mr-2" style="margin-right: 10px"></i>Reserve a room</a>
                                </li>
                            </ul>
                        </div>
                    </article>

                </div>
            </section>

            <!--Footer Start-->
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

        </div>
    </form>

    <!--JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>
</html>
