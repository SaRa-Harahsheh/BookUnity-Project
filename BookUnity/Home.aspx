<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project_4_.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <!---->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <!--fontawesome-->
    <script src="https://kit.fontawesome.com/332a215f17.js" crossorigin="anonymous"></script>
    <!--google Fonts-->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />
    <!--Animate.css--->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" rel="stylesheet" />

    <!--My CSS-->
    <link href="Styles\Home.css" rel="stylesheet" />
    <link href="Styles\nav-footer.css" rel="stylesheet" />
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

            #hero:after {

        background: linear-gradient(to right,#cd7407B3,#285f59ea),url("https://assets.teenvogue.com/photos/5e6bffbbdee1770008c6d9bd/16:9/w_2560%2Cc_limit/GettyImages-577674005.jpg")center top no-repeat; /*image-size 1920H 1080W*/

    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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

            <!--Hero Section Start-->
            <section id="hero" class="d-flex justify-content-center align-items-center">
                <div id="heroCarousel" class="container carousel carousel-fade" data-ride="carousel">
                    <div class="carousel-item active">
                        <div class="carousel-container">
                            <h2 class="animate__animated animate__backInDown">Discover. Read. Connect.
                            </h2>
                            <p class="animate__animated animate__fadeInUp">
                                Dive into a world of stories, from timeless classics to hidden gems. Find your next great read
                        and connect with fellow book lovers.
                            </p>
                            <a href="#" class="btn hero-btn animate__animated animate__backInUp">Explore Now
                            </a>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="carousel-container">
                            <h2 class="animate__animated animate__backInDown">A Community Built on Stories
                            </h2>
                            <p class="animate__animated animate__fadeInUp">
                                Share reviews, join discussions, and exchange book recommendations with passionate readers from
                        around the world.
                            </p>
                            <a href="#" class="btn hero-btn animate__animated animate__backInUp">Join Us
                            </a>
                        </div>
                    </div>

                    <div class="carousel-item">
                        <div class="carousel-container">
                            <h2 class="animate__animated animate__backInDown">Your Next Favorite Book Awaits
                            </h2>
                            <p class="animate__animated animate__fadeInUp">
                                Browse personalized book suggestions and uncover stories that speak to your soul. Adventure is
                        just a page away!
                            </p>
                            <a href="#" class="btn hero-btn animate__animated animate__backInUp">Start Exploring
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <!--Hero Section End-->

            <!--About Section Start-->
            <section id="homeAbout">
                <img src="Images\bookshelf1.png">
                <div class="component">
                    <ul class="align">
                        <li>
                            <figure class='book'>
                                <ul class='hardcover_front'>
                                    <li>
                                        <div class="coverDesign orange">
                                            <h1>MORE ABOUT US</h1>
                                            <!-- <p>Us</p> -->
                                        </div>
                                    </li>
                                    <li></li>
                                </ul>
                                <ul class='page'>
                                    <li></li>
                                    <li>
                                        <a class="btn" href="../About.aspx">Read More</a>
                                    </li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                                <ul class='hardcover_back'>
                                    <li></li>
                                    <li></li>
                                </ul>
                                <ul class='book_spine'>
                                    <li></li>
                                    <li></li>
                                </ul>
                                <figcaption>
                                    <h2>Who We Are</h2>
                                    <span>Book Unity World</span>
                                    <p>
                                        A world built for book lovers, where stories spark connections and ideas take flight.
                                Whether you’re discovering hidden literary gems, engaging in deep discussions, or
                                sharing your latest reads, our community is a home for curious minds and passionate
                                readers.
                                    </p>
                                </figcaption>
                            </figure>
                        </li>
                    </ul>
                </div>
                <img src="Images\bookshelf2.png">
            </section>
            <!--About Section End-->

            <!--About Place Section Start-->
            <section class="grid placeGallary">
                <h2>More Than Just Books</h2>
                <main class="grid" style="--n: 3; --k: 0">
                    <article class="grid" id="a0" style="--i: 0">
                        <h3 class="c--ini fade">Cozy Atmosphere</h3>
                        <p class="c--ini fade">
                            Step into a world of knowledge where a quiet, cozy atmosphere fuels your
                    curiosity. Whether you're diving into a novel or focusing on research, our library provides the
                    perfect setting for deep reading and creativity.
                        </p>
                        <a class="nav c--ini fade" href="#a1">What
                    Else?</a>
                        <section class="grid c--fin" role="img" aria-label="photo of previously described cat"
                            style="--img: url(https://static.contractors-corp.com/media/_versions_jpg/imagecomponent/Bookshelf_Designs_of_a_cozy_home_library_dyaN__v1200x1200__.jpg); --m: 8">
                            <div class="slice" aria-hidden="true" style="--j: 0"></div>
                            <div class="slice" aria-hidden="true" style="--j: 1"></div>
                            <div class="slice" aria-hidden="true" style="--j: 2"></div>
                            <div class="slice" aria-hidden="true" style="--j: 3"></div>
                            <div class="slice" aria-hidden="true" style="--j: 4"></div>
                            <div class="slice" aria-hidden="true" style="--j: 5"></div>
                            <div class="slice" aria-hidden="true" style="--j: 6"></div>
                            <div class="slice" aria-hidden="true" style="--j: 7"></div>
                        </section>
                        <a class="det grid c--fin fade" href="#">Visit Us</a>
                    </article>
                    <article class="grid" id="a1" style="--i: 1">
                        <h3 class="c--ini fade">Book It Online</h3>
                        <p class="c--ini fade">
                            Easily browse and reserve your favorite books online. Whether you’re looking for
                    the latest releases or timeless classics, your next great read is just a few clicks away!
                        </p>
                        <a class="nav c--ini fade" href="#a2">What Else?</a>
                        <section class="grid c--fin" role="img" aria-label="photo of previously described cat"
                            style="--img: url(https://bibliolifestyle.com/wp-content/uploads/2022/02/10-Reasons-Why-Libraries-Are-Important.jpeg); --m: 8">
                            <div class="slice" aria-hidden="true" style="--j: 0"></div>
                            <div class="slice" aria-hidden="true" style="--j: 1"></div>
                            <div class="slice" aria-hidden="true" style="--j: 2"></div>
                            <div class="slice" aria-hidden="true" style="--j: 3"></div>
                            <div class="slice" aria-hidden="true" style="--j: 4"></div>
                            <div class="slice" aria-hidden="true" style="--j: 5"></div>
                            <div class="slice" aria-hidden="true" style="--j: 6"></div>
                            <div class="slice" aria-hidden="true" style="--j: 7"></div>
                        </section>
                        <a class="det grid c--fin fade" href="../Books/SearchBooks.aspx">Bowrrow a Book</a>
                    </article>
                    <article class="grid" id="a2" style="--i: 2">
                        <h3 class="c--ini fade">Room to Think</h3>
                        <p class="c--ini fade">
                            Book private meeting rooms for group studies or important discussions. Our quiet,
                    well-equipped spaces are perfect for collaborations and professional gatherings.
                        </p>
                        <a class="nav c--ini fade" href="#a0">What Else?</a>
                        <section class="grid c--fin" role="img" aria-label="photo of previously described cat"
                            style="--img: url(https://www.agati.com/wp-content/uploads/2018/01/FLP-Logan-0002.jpg); --m: 8">
                            <div class="slice" aria-hidden="true" style="--j: 0"></div>
                            <div class="slice" aria-hidden="true" style="--j: 1"></div>
                            <div class="slice" aria-hidden="true" style="--j: 2"></div>
                            <div class="slice" aria-hidden="true" style="--j: 3"></div>
                            <div class="slice" aria-hidden="true" style="--j: 4"></div>
                            <div class="slice" aria-hidden="true" style="--j: 5"></div>
                            <div class="slice" aria-hidden="true" style="--j: 6"></div>
                            <div class="slice" aria-hidden="true" style="--j: 7"></div>
                        </section>
                        <a class="det grid c--fin fade" href="SerchingForRoom.aspx">Book a Room</a>
                    </article>
                </main>
            </section>
            <!--About Place Section End-->

            <!--Testimonial Section Start-->
            <section class="testimonial">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block">
                            <ol class="carousel-indicators tabs">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">
                                    <figure>
                                        <img src="Images\tes1.jpg" width="179px" height="179px" style="border-radius: 50%;"
                                            class="img-fluid" alt="">
                                    </figure>
                                </li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1">
                                    <figure>
                                        <img src="Images\tes3.jpg" width="306px" height="306px" style="border-radius: 50%;"
                                            class="img-fluid" alt="">
                                    </figure>
                                </li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2">
                                    <figure>
                                        <img src="Images\tes2.jpg" width="179px" height="179px" style="border-radius: 50%;" class="
                                    img-fluid"
                                            alt="">
                                    </figure>
                                </li>
                            </ol>
                        </div>
                        <div class="col-lg-6 d-flex justify-content-center align-items-center">
                            <div id="carouselExampleIndicators" data-interval="false" class="carousel slide"
                                data-ride="carousel">
                                <h3>WHAT OUR CLIENTS SAY</h3>
                                <h2>TESTIMONIALS</h2>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="quote-wrapper">
                                            <p>
                                                The library is my go-to place for both studying and relaxing. The atmosphere is
                                        peaceful and inspiring, with plenty of space to focus. I love how they have cozy
                                        reading corners and private study rooms!
                                            </p>
                                            <h3>Saleh Ababneh</h3>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="quote-wrapper">
                                            <p>
                                                I've been coming here for years, and it's always a great experience. The staff is
                                        friendly, and the collection of books is impressive. Plus, the digital resources
                                        are a huge help for my research!
                                            </p>
                                            <h3>Ayman Al-Jaradat</h3>
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="quote-wrapper">
                                            <p>
                                                I adore the events the library hosts! Book clubs, author talks, and literary
                                        workshops keep me engaged, and it’s a great place to meet fellow book lovers.
                                        It’s more than just a library—it’s a community!
                                            </p>
                                            <h3>Firas Abu malloh</h3>
                                        </div>
                                    </div>
                                </div>
                                <ol class="carousel-indicators indicators">
                                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--Testimonial Section End-->

            <section class="video-background">
                <video autoplay loop muted>
                    <source src="Images\bookVideo.mp4" type="video/mp4">
                    Your browser does not support the video tag.
                </video>

                <div class="content">
                    <h1>Find Your Next Favourite Book!</h1>
                    <p>Thousands of books are waiting for you. Search now and uncover your next great read!</p>
                    <asp:Button CssClass="s" ID="borrow" OnClick="borrow_Click" runat="server" Text="Borrow A Book Now"></asp:Button>
                </div>
            </section>


            <footer>
                <div class="justify-content-center mb-0 pt-5 pb-0 row-2 px-3">
                    <div class="col-12">
                        <div class="row row-2">
                            <div class="col-sm-3 text-md-center">
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


            <!--JS-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                crossorigin="anonymous"></script>

            <script src="Scripts\Home.js"></script>
        </div>

    </form>
</body>
</html>
