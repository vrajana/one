<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Modern E-Commerce - I am Learning Devops</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap"
        rel="stylesheet"
    >

    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    >

    <style>

        /* =========================================================
           GLOBAL
        ========================================================= */

        :root {
            --primary: #111827;
            --secondary: #667085;
            --accent: #635bff;
            --accent-dark: #5148d9;

            --background: #f7f8fc;
            --surface: #ffffff;
            --surface-light: #f1f4f9;

            --border: #e6e9ef;

            --success: #16a34a;
            --danger: #ef4444;
            --warning: #f59e0b;

            --radius: 18px;

            --shadow:
                0 10px 30px rgba(17, 24, 39, 0.07);

            --shadow-hover:
                0 18px 50px rgba(17, 24, 39, 0.12);

            --container: 1240px;
        }


        * {
            box-sizing: border-box;
        }


        html {
            scroll-behavior: smooth;
        }


        body {
            margin: 0;

            font-family:
                Inter,
                system-ui,
                -apple-system,
                BlinkMacSystemFont,
                "Segoe UI",
                sans-serif;

            background: var(--background);

            color: var(--primary);

            line-height: 1.5;
        }


        button,
        input {
            font: inherit;
        }


        button {
            cursor: pointer;
        }


        a {
            text-decoration: none;
            color: inherit;
        }


        img {
            max-width: 100%;
        }


        .container {
            width: min(
                calc(100% - 32px),
                var(--container)
            );

            margin: auto;
        }


        .muted {
            color: var(--secondary);
        }



        /* =========================================================
           HEADER
        ========================================================= */

        header {
            position: sticky;

            top: 0;

            z-index: 100;

            background:
                rgba(255, 255, 255, 0.94);

            backdrop-filter:
                blur(18px);

            border-bottom:
                1px solid rgba(17, 24, 39, 0.07);
        }


        .header-inner {
            min-height: 72px;

            display: flex;

            align-items: center;

            gap: 24px;
        }


        .brand {
            font-family: Poppins, sans-serif;

            font-size: 22px;

            font-weight: 800;

            letter-spacing: -0.04em;

            white-space: nowrap;
        }


        .brand .accent {
            color: var(--accent);
        }


        .main-nav {
            flex: 1;
        }


        .main-nav ul {
            display: flex;

            align-items: center;

            gap: 4px;

            list-style: none;

            padding: 0;

            margin: 0;
        }


        .main-nav a {
            display: flex;

            align-items: center;

            gap: 8px;

            padding: 10px 13px;

            border-radius: 10px;

            color: #475467;

            font-size: 14px;

            font-weight: 600;

            transition: 0.2s;
        }


        .main-nav a:hover {
            background: var(--surface-light);

            color: var(--primary);
        }


        .search {
            width: 300px;

            display: flex;

            align-items: center;

            gap: 9px;

            padding: 10px 13px;

            background: var(--surface-light);

            border: 1px solid transparent;

            border-radius: 12px;

            transition: 0.2s;
        }


        .search:focus-within {
            background: white;

            border-color: #cfd3ff;

            box-shadow:
                0 0 0 4px rgba(99, 91, 255, 0.09);
        }


        .search input {
            width: 100%;

            border: 0;

            outline: none;

            background: transparent;

            font-size: 14px;
        }


        .icon-btn {
            width: 40px;

            height: 40px;

            display: grid;

            place-items: center;

            border: 0;

            background: transparent;

            border-radius: 10px;

            color: #475467;

            transition: 0.2s;
        }


        .icon-btn:hover {
            background: var(--surface-light);

            color: var(--accent);
        }


        .header-actions {
            display: flex;

            align-items: center;

            gap: 3px;
        }


        .cart {
            position: relative;

            width: 42px;

            height: 42px;

            display: grid;

            place-items: center;

            border-radius: 10px;
        }


        .cart:hover {
            background: var(--surface-light);
        }


        .cart-count {
            position: absolute;

            top: 1px;

            right: 0;

            min-width: 19px;

            height: 19px;

            padding: 0 5px;

            display: grid;

            place-items: center;

            background: var(--accent);

            color: white;

            border-radius: 999px;

            font-size: 10px;

            font-weight: 800;

            border: 2px solid white;
        }


        .mobile-toggle {
            display: none;

            width: 40px;

            height: 40px;

            border: 0;

            background: transparent;

            font-size: 18px;
        }



        /* =========================================================
           MOBILE MENU
        ========================================================= */

        #mobileMenu {
            background: white;

            border-top:
                1px solid var(--border);
        }


        .mobile-menu-list {
            list-style: none;

            padding: 12px 0;

            margin: 0;

            display: flex;

            flex-direction: column;

            gap: 4px;
        }


        .mobile-menu-link {
            display: block;

            padding: 12px;

            border-radius: 10px;

            font-weight: 600;

            color: #475467;
        }


        .mobile-menu-link:hover {
            background: var(--surface-light);

            color: var(--accent);
        }



        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            width: min(
                calc(100% - 32px),
                var(--container)
            );

            min-height: 500px;

            margin: 22px auto 0;

            display: flex;

            align-items: center;

            border-radius: 28px;

            overflow: hidden;

            color: white;

            background:
                linear-gradient(
                    90deg,
                    rgba(8, 15, 31, 0.86),
                    rgba(8, 15, 31, 0.58),
                    rgba(8, 15, 31, 0.18)
                ),
                url(
                    "https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85"
                )
                center / cover;
        }


        .hero-content {
            padding: 64px;
        }


        .hero-badge {
            display: inline-flex;

            align-items: center;

            gap: 7px;

            padding: 7px 11px;

            margin-bottom: 18px;

            border-radius: 999px;

            background:
                rgba(255, 255, 255, 0.13);

            border:
                1px solid rgba(255, 255, 255, 0.18);

            font-size: 12px;

            font-weight: 700;
        }


        .hero h1 {
            max-width: 720px;

            margin: 0 0 18px;

            font-family: Poppins, sans-serif;

            font-size: clamp(36px, 5vw, 58px);

            line-height: 1.05;

            letter-spacing: -0.045em;
        }


        .hero p {
            max-width: 650px;

            margin: 0 0 28px;

            color:
                rgba(255, 255, 255, 0.86);

            font-size: 17px;
        }


        .hero-actions {
            display: flex;

            align-items: center;

            gap: 10px;

            flex-wrap: wrap;
        }



        /* =========================================================
           BUTTONS
        ========================================================= */

        .btn {
            min-height: 46px;

            display: inline-flex;

            align-items: center;

            justify-content: center;

            gap: 9px;

            padding: 0 19px;

            border-radius: 12px;

            border: 1px solid transparent;

            font-weight: 700;

            transition: 0.2s ease;
        }


        .btn-primary {
            background: var(--accent);

            color: white;

            box-shadow:
                0 8px 20px rgba(99, 91, 255, 0.25);
        }


        .btn-primary:hover {
            background: var(--accent-dark);

            transform: translateY(-1px);
        }


        .btn-ghost {
            background:
                rgba(255, 255, 255, 0.10);

            border-color:
                rgba(255, 255, 255, 0.25);

            color: white;
        }


        .btn-ghost:hover {
            background:
                rgba(255, 255, 255, 0.18);
        }



        /* =========================================================
           SECTION
        ========================================================= */

        .section {
            padding: 62px 0;
        }


        .section-header {
            display: flex;

            align-items: flex-end;

            justify-content: space-between;

            gap: 20px;

            margin-bottom: 25px;
        }


        .section-title {
            margin: 0 0 5px;

            font-family: Poppins, sans-serif;

            font-size: 30px;

            letter-spacing: -0.035em;
        }


        .section-subtitle {
            margin: 0;

            color: var(--secondary);
        }



        /* =========================================================
           CATEGORIES
        ========================================================= */

        .categories {
            display: grid;

            grid-template-columns:
                repeat(6, 1fr);

            gap: 18px;
        }


        .cat-card {
            padding: 22px 14px;

            text-align: center;

            background: white;

            border:
                1px solid var(--border);

            border-radius: 16px;

            cursor: pointer;

            box-shadow:
                0 4px 16px rgba(17, 24, 39, 0.03);

            transition: 0.2s ease;
        }


        .cat-card:hover {
            transform: translateY(-4px);

            border-color: #d7d4ff;

            box-shadow: var(--shadow);
        }


        .cat-icon {
            width: 52px;

            height: 52px;

            display: grid;

            place-items: center;

            margin: 0 auto 12px;

            border-radius: 15px;

            background: #eeecff;

            color: var(--accent);

            font-size: 22px;
        }


        .cat-card h4 {
            margin: 0;

            font-size: 14px;
        }


        .cat-card p {
            margin: 4px 0 0;

            font-size: 12px;
        }



        /* =========================================================
           PRODUCTS
        ========================================================= */

        .products {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 18px;
        }


        .product {
            position: relative;

            display: flex;

            flex-direction: column;

            overflow: hidden;

            background: white;

            border:
                1px solid var(--border);

            border-radius: 18px;

            box-shadow:
                0 4px 16px rgba(17, 24, 39, 0.03);

            transition: 0.2s ease;
        }


        .product:hover {
            transform: translateY(-4px);

            box-shadow: var(--shadow-hover);

            border-color: #dfe2eb;
        }


        .product-image-wrapper {
            position: relative;

            background: #f2f4f7;

            overflow: hidden;
        }


        .product img {
            width: 100%;

            height: 235px;

            object-fit: cover;

            display: block;

            transition: 0.3s;
        }


        .product:hover img {
            transform: scale(1.04);
        }


        .product-badge {
            position: absolute;

            top: 12px;

            left: 12px;

            z-index: 2;

            padding: 6px 9px;

            border-radius: 999px;

            background: white;

            color: #344054;

            font-size: 11px;

            font-weight: 800;

            box-shadow:
                0 4px 12px rgba(0, 0, 0, 0.08);
        }


        .product-badge.sale {
            background: #fff0f0;

            color: #dc2626;
        }


        .product-badge.new {
            background: #ecfdf3;

            color: #15803d;
        }


        .product-body {
            padding: 16px;

            display: flex;

            flex-direction: column;

            gap: 8px;

            flex: 1;
        }


        .product-title {
            margin: 0;

            font-size: 16px;
        }


        .product-category {
            color: var(--secondary);

            font-size: 13px;

            text-transform: capitalize;
        }


        .price-row {
            display: flex;

            align-items: flex-end;

            justify-content: space-between;

            gap: 8px;

            margin-top: auto;

            padding-top: 8px;
        }


        .price {
            font-size: 19px;

            font-weight: 800;
        }


        .old-price {
            margin-left: 4px;

            color: #98a2b3;

            text-decoration: line-through;

            font-size: 12px;
        }


        .rating {
            color: #f59e0b;

            font-size: 12px;

            white-space: nowrap;
        }


        .review-count {
            color: var(--secondary);

            font-size: 11px;
        }


        .product-footer {
            display: flex;

            gap: 8px;

            padding:
                0 16px 16px;
        }


        .add-btn {
            flex: 1;

            min-height: 42px;

            border: 0;

            border-radius: 10px;

            background: var(--primary);

            color: white;

            font-weight: 700;

            transition: 0.2s;
        }


        .add-btn:hover {
            background: #273142;
        }


        .wish-btn {
            width: 42px;

            border:
                1px solid var(--border);

            border-radius: 10px;

            background: white;

            color: #667085;

            transition: 0.2s;
        }


        .wish-btn:hover {
            color: var(--danger);

            border-color: #fecaca;

            background: #fff7f7;
        }



        /* =========================================================
           EMPTY SEARCH
        ========================================================= */

        .empty-state {
            grid-column: 1 / -1;

            padding: 55px 20px;

            text-align: center;

            background: white;

            border:
                1px dashed #d0d5dd;

            border-radius: 18px;
        }


        .empty-state i {
            margin-bottom: 12px;

            color: var(--accent);

            font-size: 30px;
        }



        /* =========================================================
           DEAL
        ========================================================= */

        .deal {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            overflow: hidden;

            background: white;

            border:
                1px solid var(--border);

            border-radius: 22px;

            box-shadow: var(--shadow);
        }


        .deal-image {
            width: 100%;

            height: 100%;

            min-height: 350px;

            object-fit: cover;
        }


        .deal-content {
            padding: 42px;

            display: flex;

            flex-direction: column;

            justify-content: center;
        }


        .deal-label {
            color: var(--accent);

            font-size: 13px;

            font-weight: 800;

            text-transform: uppercase;

            letter-spacing: 0.08em;
        }


        .deal h3 {
            margin: 7px 0;

            font-family: Poppins, sans-serif;

            font-size: 32px;

            letter-spacing: -0.035em;
        }


        .timer {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 8px;

            margin: 22px 0;
        }


        .time-box {
            padding: 12px 8px;

            text-align: center;

            border-radius: 10px;

            background: #111827;

            color: white;
        }


        .time-number {
            font-size: 20px;

            font-weight: 800;
        }


        .time-label {
            font-size: 11px;

            opacity: 0.75;
        }


        .deal-price {
            font-size: 28px;

            font-weight: 800;
        }


        .deal-discount {
            display: inline-block;

            margin-left: 8px;

            padding: 5px 9px;

            border-radius: 999px;

            background: #fff0f0;

            color: #dc2626;

            font-size: 12px;

            font-weight: 800;
        }



        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .testimonials {
            display: grid;

            grid-template-columns:
                repeat(2, 1fr);

            gap: 18px;
        }


        .testimonial {
            padding: 24px;

            background: white;

            border:
                1px solid var(--border);

            border-radius: 18px;

            box-shadow:
                0 4px 16px rgba(17, 24, 39, 0.03);
        }


        .testimonial-text {
            color: #475467;

            line-height: 1.65;
        }


        .testimonial-user {
            display: flex;

            align-items: center;

            gap: 10px;
        }


        .testimonial-user img {
            width: 42px;

            height: 42px;

            border-radius: 50%;

            object-fit: cover;
        }


        .user-name {
            font-weight: 700;
        }


        .user-type {
            color: var(--secondary);

            font-size: 12px;
        }



        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter {
            padding: 48px;

            text-align: center;

            color: white;

            background:
                linear-gradient(
                    135deg,
                    #171c2d,
                    #272a4a
                );

            border-radius: 22px;

            box-shadow: var(--shadow);
        }


        .newsletter h3 {
            margin: 0 0 6px;

            font-family: Poppins, sans-serif;

            font-size: 30px;
        }


        .newsletter p {
            margin: 0 0 22px;

            color: #c7ccda;
        }


        .newsletter-form {
            display: flex;

            justify-content: center;

            gap: 8px;

            flex-wrap: wrap;
        }


        .newsletter input {
            width: 320px;

            height: 46px;

            padding: 0 15px;

            border: 0;

            outline: none;

            border-radius: 11px;
        }



        /* =========================================================
           ABOUT
        ========================================================= */

        .about-card {
            padding: 45px;

            text-align: center;

            background: white;

            border:
                1px solid var(--border);

            border-radius: 22px;
        }


        .about-card h3 {
            margin: 0 0 10px;

            font-family: Poppins, sans-serif;

            font-size: 28px;
        }


        .about-card p {
            max-width: 700px;

            margin: auto;

            color: var(--secondary);
        }



        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            margin-top: 20px;

            padding: 45px 0 25px;

            background: white;

            border-top:
                1px solid var(--border);
        }


        .footer-grid {
            display: grid;

            grid-template-columns:
                2fr 1fr 1fr;

            gap: 50px;
        }


        .footer-title {
            margin-bottom: 10px;

            font-weight: 800;

            font-size: 18px;
        }


        .footer-text {
            max-width: 360px;

            color: var(--secondary);

            font-size: 14px;
        }


        .footer-heading {
            margin-bottom: 10px;

            font-weight: 700;
        }


        .footer-links {
            display: flex;

            flex-direction: column;

            gap: 7px;

            color: var(--secondary);

            font-size: 14px;
        }


        .footer-links a:hover {
            color: var(--accent);
        }


        .social-links {
            display: flex;

            gap: 7px;

            margin-top: 15px;
        }


        .copyright {
            margin-top: 35px;

            padding-top: 20px;

            text-align: center;

            border-top:
                1px solid var(--border);

            color: var(--secondary);

            font-size: 13px;
        }



        /* =========================================================
           TOAST
        ========================================================= */

        .toast {
            position: fixed;

            right: 20px;

            bottom: 20px;

            z-index: 200;

            padding: 13px 16px;

            background: #111827;

            color: white;

            border-radius: 12px;

            box-shadow: var(--shadow-hover);

            font-size: 14px;

            font-weight: 600;

            transform:
                translateY(20px);

            opacity: 0;

            pointer-events: none;

            transition: 0.25s;
        }


        .toast.show {
            transform:
                translateY(0);

            opacity: 1;
        }



        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media(max-width:1100px) {

            .main-nav {
                display: none;
            }


            .mobile-toggle {
                display: grid;

                place-items: center;
            }


            .categories {
                grid-template-columns:
                    repeat(3, 1fr);
            }


            .products {
                grid-template-columns:
                    repeat(3, 1fr);
            }


            .search {
                width: 280px;
            }
        }


        @media(max-width:760px) {

            .container {
                width:
                    calc(100% - 24px);
            }


            .header-inner {
                gap: 8px;
            }


            .search {
                flex: 1;

                width: auto;
            }


            .header-actions .account-btn,
            .header-actions .wishlist-btn {
                display: none;
            }


            .hero {
                width:
                    calc(100% - 24px);

                min-height: 460px;

                border-radius: 20px;
            }


            .hero-content {
                padding: 32px 24px;
            }


            .hero h1 {
                font-size: 38px;
            }


            .hero p {
                font-size: 15px;
            }


            .section {
                padding: 44px 0;
            }


            .products {
                grid-template-columns:
                    repeat(2, 1fr);
            }


            .deal {
                grid-template-columns: 1fr;
            }


            .deal-image {
                height: 260px;

                min-height: 0;
            }


            .deal-content {
                padding: 28px;
            }


            .testimonials {
                grid-template-columns: 1fr;
            }


            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }


        @media(max-width:520px) {

            .brand {
                font-size: 19px;
            }


            .search {
                display: none;
            }


            .categories {
                grid-template-columns:
                    repeat(2, 1fr);
            }


            .products {
                grid-template-columns:
                    repeat(2, 1fr);
            }


            .cat-card {
                padding: 16px 8px;
            }


            .cat-icon {
                width: 44px;

                height: 44px;

                font-size: 18px;
            }


            .product img {
                height: 180px;
            }


            .product-body {
                padding: 12px;
            }


            .product-footer {
                padding:
                    0 12px 12px;
            }


            .product-title {
                font-size: 14px;
            }


            .price {
                font-size: 17px;
            }


            .rating {
                font-size: 10px;
            }


            .hero h1 {
                font-size: 32px;
            }


            .hero-actions {
                flex-direction: column;

                align-items: stretch;
            }


            .btn {
                width: 100%;
            }


            .newsletter {
                padding: 32px 20px;
            }


            .newsletter-form {
                flex-direction: column;
            }


            .newsletter input,
            .newsletter .btn {
                width: 100%;
            }


            .footer-grid {
                grid-template-columns: 1fr;
            }
        }

    </style>
</head>


<body>

    <!-- =========================================================
         TOAST
    ========================================================== -->

    <div
        class="toast"
        id="toast"
        role="status"
        aria-live="polite">
    </div>



    <!-- =========================================================
         HEADER
    ========================================================== -->

    <header>

        <div class="container header-inner">

            <button
                class="mobile-toggle"
                id="mobileToggle"
                aria-label="Open menu">

                <i class="fas fa-bars"></i>

            </button>


            <a
                class="brand"
                href="#">

                Nexus<span class="accent">Shop</span>

            </a>


            <nav
                class="main-nav"
                id="mainNav">

                <ul>

                    <li>
                        <a href="#">
                            <i class="fas fa-home"></i>
                            Home
                        </a>
                    </li>


                    <li>
                        <a
                            href="#cat-title"
                            id="catMenuBtn">

                            <i class="fas fa-th-large"></i>
                            Categories

                        </a>
                    </li>


                    <li>
                        <a href="#prod-title">

                            <i class="fas fa-fire"></i>
                            Trending

                        </a>
                    </li>


                    <li>
                        <a href="#deals">

                            <i class="fas fa-tag"></i>
                            Deals

                        </a>
                    </li>


                    <li>
                        <a href="#about">

                            <i class="fas fa-info-circle"></i>
                            About

                        </a>
                    </li>

                </ul>

            </nav>



            <!-- SEARCH -->

            <div
                class="search"
                role="search">

                <i
                    class="fas fa-search"
                    style="color:#98a2b3">
                </i>


                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products">


                <button
                    class="icon-btn"
                    id="searchBtn"
                    aria-label="Search">

                    <i class="fas fa-arrow-right"></i>

                </button>

            </div>



            <!-- ACTIONS -->

            <div class="header-actions">

                <a
                    class="icon-btn account-btn"
                    title="Account"
                    href="#">

                    <i class="far fa-user"></i>

                </a>


                <a
                    class="icon-btn wishlist-btn"
                    title="Wishlist"
                    href="#">

                    <i class="far fa-heart"></i>

                </a>


                <a
                    class="cart"
                    href="#"
                    id="cartBtn"
                    title="View cart">

                    <i class="fas fa-shopping-cart"></i>

                    <span
                        class="cart-count"
                        id="cartCount">

                        0

                    </span>

                </a>

            </div>

        </div>



        <!-- MOBILE MENU -->

        <div
            id="mobileMenu"
            style="display:none">

            <div class="container">

                <ul class="mobile-menu-list">

                    <li>
                        <a
                            class="mobile-menu-link"
                            href="#">

                            Home

                        </a>
                    </li>


                    <li>
                        <a
                            class="mobile-menu-link"
                            href="#cat-title">

                            Categories

                        </a>
                    </li>


                    <li>
                        <a
                            class="mobile-menu-link"
                            href="#prod-title">

                            Trending

                        </a>
                    </li>


                    <li>
                        <a
                            class="mobile-menu-link"
                            href="#deals">

                            Deals

                        </a>
                    </li>


                    <li>
                        <a
                            class="mobile-menu-link"
                            href="#about">

                            About

                        </a>
                    </li>

                </ul>

            </div>

        </div>

    </header>



    <!-- =========================================================
         MAIN
    ========================================================== -->

    <main>


        <!-- =====================================================
             HERO
        ====================================================== -->

        <section class="hero">

            <div class="container hero-content">

                <div class="hero-badge">

                    <i class="fas fa-sparkles"></i>

                    New collection is here

                </div>


                <h1>
                    Shop smarter.
                    Live better.
                </h1>


                <p>

                    Discover products people love,
                    compare your options and find
                    great deals — all in one simple
                    shopping experience.

                </p>


                <div class="hero-actions">

                    <button
                        class="btn btn-primary"
                        id="shopNow">

                        Shop Now

                        <i class="fas fa-arrow-right"></i>

                    </button>


                    <button
                        class="btn btn-ghost"
                        id="exploreDeals">

                        Explore Deals

                    </button>

                </div>

            </div>

        </section>



        <!-- =====================================================
             CATEGORIES
        ====================================================== -->

        <section
            class="section container"
            aria-labelledby="cat-title">

            <div class="section-header">

                <div>

                    <h2
                        class="section-title"
                        id="cat-title">

                        Shop by Category

                    </h2>


                    <p class="section-subtitle">

                        Find exactly what you're looking for.

                    </p>

                </div>

            </div>


            <div
                class="categories"
                id="categoriesGrid">

            </div>

        </section>



        <!-- =====================================================
             PRODUCTS
        ====================================================== -->

        <section
            class="section container"
            aria-labelledby="prod-title">

            <div class="section-header">

                <div>

                    <h2
                        class="section-title"
                        id="prod-title">

                        Popular Right Now

                    </h2>


                    <p class="section-subtitle">

                        Handpicked products worth checking out.

                    </p>

                </div>

            </div>


            <div
                class="products"
                id="productsGrid">

            </div>

        </section>



        <!-- =====================================================
             DEAL
        ====================================================== -->

        <section
            class="section container"
            id="deals"
            aria-labelledby="deals-title">

            <div class="section-header">

                <div>

                    <h2
                        class="section-title"
                        id="deals-title">

                        Deal of the Day

                    </h2>


                    <p class="section-subtitle">

                        A great deal for a limited time.

                    </p>

                </div>

            </div>


            <div class="deal">


                <img
                    class="deal-image"
                    src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85"
                    alt="MacBook Air">


                <div class="deal-content">

                    <div class="deal-label">

                        Limited time offer

                    </div>


                    <h3>
                        MacBook Air M2
                    </h3>


                    <p class="muted">

                        Thin, light and powerful —
                        now with M2 performance.

                    </p>



                    <div class="timer">

                        <div class="time-box">

                            <div
                                class="time-number"
                                id="dealDays">

                                0

                            </div>

                            <div class="time-label">
                                Days
                            </div>

                        </div>


                        <div class="time-box">

                            <div
                                class="time-number"
                                id="dealHours">

                                00

                            </div>

                            <div class="time-label">
                                Hours
                            </div>

                        </div>


                        <div class="time-box">

                            <div
                                class="time-number"
                                id="dealMinutes">

                                00

                            </div>

                            <div class="time-label">
                                Minutes
                            </div>

                        </div>


                        <div class="time-box">

                            <div
                                class="time-number"
                                id="dealSeconds">

                                00

                            </div>

                            <div class="time-label">
                                Seconds
                            </div>

                        </div>

                    </div>



                    <div>

                        <span class="deal-price">
                            $999
                        </span>


                        <span class="old-price">
                            $1,199
                        </span>


                        <span class="deal-discount">
                            -17%
                        </span>

                    </div>


                    <p>

                        Only <strong>12</strong>
                        items left at this price!

                    </p>


                    <button
                        class="btn btn-primary"
                        id="buyDeal">

                        Buy Now

                        <i class="fas fa-arrow-right"></i>

                    </button>

                </div>

            </div>

        </section>



        <!-- =====================================================
             TESTIMONIALS
        ====================================================== -->

        <section
            class="section container"
            aria-labelledby="test-title">

            <div class="section-header">

                <div>

                    <h2
                        class="section-title"
                        id="test-title">

                        What our customers say

                    </h2>


                    <p class="section-subtitle">

                        Real reviews from verified buyers.

                    </p>

                </div>

            </div>


            <div class="testimonials">


                <div class="testimonial">

                    <div class="rating">
                        ★★★★★
                    </div>


                    <p class="testimonial-text">

                        "Fast shipping and excellent
                        customer support. The product
                        exceeded my expectations!"

                    </p>


                    <div class="testimonial-user">

                        <img
                            src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                            alt="Ava Martin">


                        <div>

                            <div class="user-name">
                                Ava Martin
                            </div>

                            <div class="user-type">
                                Verified buyer
                            </div>

                        </div>

                    </div>

                </div>



                <div class="testimonial">

                    <div class="rating">
                        ★★★★☆
                    </div>


                    <p class="testimonial-text">

                        "Great selection and the checkout
                        was smooth. Will shop again."

                    </p>


                    <div class="testimonial-user">

                        <img
                            src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=100&q=80"
                            alt="Michael Lee">


                        <div>

                            <div class="user-name">
                                Michael Lee
                            </div>

                            <div class="user-type">
                                Frequent buyer
                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </section>



        <!-- =====================================================
             NEWSLETTER
        ====================================================== -->

        <section
            class="section container">

            <div class="newsletter">

                <h3>
                    Get deals & new arrivals
                </h3>


                <p>

                    Join our list for exclusive
                    offers, new arrivals and useful updates.

                </p>


                <form
                    class="newsletter-form"
                    id="newsletterForm">

                    <input
                        id="newsletterEmail"
                        type="email"
                        placeholder="Enter your email"
                        required>


                    <button
                        class="btn btn-primary"
                        id="subscribeBtn">

                        Subscribe

                    </button>

                </form>


                <div
                    id="newsletterMsg"
                    style="
                        margin-top:10px;
                        display:none;
                        font-size:14px;
                    ">

                </div>

            </div>

        </section>



        <!-- =====================================================
             ABOUT
        ====================================================== -->

        <section
            class="section container"
            id="about">

            <div class="about-card">

                <h3>
                    Everything you need,
                    in one place.
                </h3>


                <p>

                    NexusShop is a simple e-commerce
                    experience designed around easy
                    discovery, clear pricing and a
                    friction-free shopping journey.

                </p>

            </div>

        </section>

    </main>



    <!-- =========================================================
         FOOTER
    ========================================================== -->

    <footer>

        <div class="container footer-grid">


            <div>

                <div class="footer-title">

                    NexusShop

                </div>


                <p class="footer-text">

                    A modern e-commerce experience
                    built for simple discovery,
                    great products and easy shopping.

                </p>


                <div class="social-links">

                    <a
                        class="icon-btn"
                        href="#"
                        aria-label="Facebook">

                        <i class="fab fa-facebook"></i>

                    </a>


                    <a
                        class="icon-btn"
                        href="#"
                        aria-label="Twitter">

                        <i class="fab fa-twitter"></i>

                    </a>


                    <a
                        class="icon-btn"
                        href="#"
                        aria-label="Instagram">

                        <i class="fab fa-instagram"></i>

                    </a>

                </div>

            </div>



            <div>

                <div class="footer-heading">
                    Company
                </div>


                <div class="footer-links">

                    <a href="#about">
                        About
                    </a>

                    <a href="#">
                        Careers
                    </a>

                    <a href="#">
                        Press
                    </a>

                </div>

            </div>



            <div>

                <div class="footer-heading">
                    Support
                </div>


                <div class="footer-links">

                    <a href="#">
                        Help Center
                    </a>

                    <a href="#">
                        Shipping & Returns
                    </a>

                    <a href="#">
                        Contact
                    </a>

                </div>

            </div>

        </div>


        <div class="container copyright">

            ©
            <span id="year"></span>
            NexusShop.
            All rights reserved.

        </div>

    </footer>



    <!-- =========================================================
         JAVASCRIPT
    ========================================================== -->

    <script>

        /* =======================================================
           DATA
        ======================================================= */

        const CATEGORIES = [

            {
                id: "phones",
                name: "Smartphones",
                icon: "fa-mobile-alt"
            },

            {
                id: "laptops",
                name: "Laptops",
                icon: "fa-laptop"
            },

            {
                id: "clothing",
                name: "Clothing",
                icon: "fa-tshirt"
            },

            {
                id: "gadgets",
                name: "Gadgets",
                icon: "fa-headphones"
            },

            {
                id: "footwear",
                name: "Footwear",
                icon: "fa-shoe-prints"
            },

            {
                id: "accessories",
                name: "Accessories",
                icon: "fa-watch"
            }

        ];



        const PRODUCTS = [

            {
                id: 1,
                title: "iPhone 14 Pro Max",
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: "New",
                img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80",
                category: "phones"
            },

            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80",
                category: "laptops"
            },

            {
                id: 3,
                title: "Apple Watch Series 8",
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: "-25%",
                img: "https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80",
                category: "accessories"
            },

            {
                id: 4,
                title: "Nike Air Max 270",
                price: 150,
                rating: 4,
                reviews: 53,
                img: "https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80",
                category: "footwear"
            },

            {
                id: 5,
                title: "Sony A7 IV Camera",
                price: 2499,
                rating: 5,
                reviews: 42,
                img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80",
                category: "gadgets"
            },

            {
                id: 6,
                title: "Chanel No. 5",
                price: 120,
                rating: 5,
                reviews: 189,
                img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80",
                category: "accessories"
            },

            {
                id: 7,
                title: "Travel Backpack",
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: "https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80",
                category: "accessories"
            },

            {
                id: 8,
                title: "Sony WH-1000XM5",
                price: 399,
                rating: 5,
                reviews: 156,
                img: "https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80",
                category: "gadgets"
            }

        ];



        /* =======================================================
           DOM
        ======================================================= */

        const categoriesGrid =
            document.getElementById("categoriesGrid");

        const productsGrid =
            document.getElementById("productsGrid");

        const cartCountEl =
            document.getElementById("cartCount");

        const searchInput =
            document.getElementById("searchInput");

        const toast =
            document.getElementById("toast");



        let cartCount = 0;



        /* =======================================================
           TOAST
        ======================================================= */

        function showToast(message) {

            toast.textContent = message;

            toast.classList.add("show");

            clearTimeout(window.toastTimer);

            window.toastTimer =
                setTimeout(() => {

                    toast.classList.remove("show");

                }, 2200);

        }



        /* =======================================================
           ESCAPE HTML
        ======================================================= */

        function escapeHtml(text) {

            return String(text).replace(
                /[&<>"']/g,

                function (character) {

                    return {

                        "&": "&amp;",
                        "<": "&lt;",
                        ">": "&gt;",
                        '"': "&quot;",
                        "'": "&#39;"

                    }[character];

                }
            );

        }



        /* =======================================================
           CATEGORIES
        ======================================================= */

        function renderCategories() {

            categoriesGrid.innerHTML = "";

            CATEGORIES.forEach(category => {

                const element =
                    document.createElement("div");

                element.className = "cat-card";

                element.innerHTML = `

                    <div class="cat-icon">

                        <i class="fas ${category.icon}"></i>

                    </div>

                    <h4>
                        ${escapeHtml(category.name)}
                    </h4>

                    <p class="muted">
                        Explore products
                    </p>

                `;


                element.addEventListener(
                    "click",
                    () => {

                        searchInput.value =
                            category.name;

                        filterProducts(
                            category.name
                        );

                        document
                            .getElementById("prod-title")
                            .scrollIntoView({
                                behavior: "smooth",
                                block: "start"
                            });

                    }
                );


                categoriesGrid.appendChild(element);

            });

        }



        /* =======================================================
           PRODUCTS
        ======================================================= */

        function renderProducts(list) {

            productsGrid.innerHTML = "";


            if (!list.length) {

                productsGrid.innerHTML = `

                    <div class="empty-state">

                        <i class="fas fa-search"></i>

                        <h3>
                            No products found
                        </h3>

                        <p class="muted">

                            Try a different product
                            name or category.

                        </p>

                    </div>

                `;

                return;

            }



            list.forEach(product => {

                const element =
                    document.createElement("article");

                element.className = "product";


                const badge =
                    product.badge
                        ? `

                            <div class="
                                product-badge
                                ${
                                    product.badge.startsWith("-")
                                        ? "sale"
                                        : "new"
                                }
                            ">

                                ${escapeHtml(product.badge)}

                            </div>

                        `
                        : "";



                const oldPrice =
                    product.oldPrice
                        ? `

                            <span class="old-price">

                                $
                                ${product.oldPrice.toLocaleString()}

                            </span>

                        `
                        : "";



                const stars =
                    "★".repeat(
                        Math.round(product.rating)
                    );



                element.innerHTML = `

                    <div class="product-image-wrapper">

                        ${badge}

                        <img
                            src="${product.img}"
                            alt="${escapeHtml(product.title)}"
                            loading="lazy"
                        >

                    </div>


                    <div class="product-body">

                        <h3 class="product-title">

                            ${escapeHtml(product.title)}

                        </h3>


                        <div class="product-category">

                            ${escapeHtml(product.category)}

                        </div>


                        <div class="price-row">

                            <div>

                                <div class="price">

                                    $
                                    ${product.price.toLocaleString()}

                                    ${oldPrice}

                                </div>

                            </div>


                            <div class="rating">

                                ${stars}

                                <span class="review-count">

                                    (${product.reviews})

                                </span>

                            </div>

                        </div>

                    </div>


                    <div class="product-footer">

                        <button
                            class="add-btn"
                            data-id="${product.id}">

                            <i class="fas fa-cart-plus"></i>

                            Add to Cart

                        </button>


                        <button
                            class="wish-btn"
                            aria-label="Add to wishlist">

                            <i class="far fa-heart"></i>

                        </button>

                    </div>

                `;


                productsGrid.appendChild(element);

            });



            attachProductListeners();

        }



        /* =======================================================
           PRODUCT LISTENERS
        ======================================================= */

        function attachProductListeners() {

            document
                .querySelectorAll(".add-btn")
                .forEach(button => {

                    button.addEventListener(
                        "click",
                        () => {

                            const id =
                                Number(
                                    button.dataset.id
                                );

                            addToCart(id);

                        }
                    );

                });



            document
                .querySelectorAll(".wish-btn")
                .forEach(button => {

                    button.addEventListener(
                        "click",
                        () => {

                            const icon =
                                button.querySelector("i");

                            const active =
                                icon.classList.contains(
                                    "fas"
                                );


                            if (active) {

                                icon.className =
                                    "far fa-heart";

                                button.style.color = "";

                                showToast(
                                    "Removed from wishlist"
                                );

                            } else {

                                icon.className =
                                    "fas fa-heart";

                                button.style.color =
                                    "var(--danger)";

                                showToast(
                                    "Added to wishlist"
                                );

                            }

                        }
                    );

                });

        }



        /* =======================================================
           CART
        ======================================================= */

        function addToCart(productId) {

            const product =
                PRODUCTS.find(
                    item =>
                        item.id === productId
                );


            if (!product) {
                return;
            }


            cartCount++;

            cartCountEl.textContent =
                cartCount;


            const button =
                document.querySelector(
                    `.add-btn[data-id="${productId}"]`
                );


            if (button) {

                const original =
                    button.innerHTML;


                button.innerHTML = `

                    <i class="fas fa-check"></i>

                    Added

                `;


                button.disabled = true;


                showToast(
                    `${product.title} added to cart`
                );


                setTimeout(() => {

                    button.innerHTML =
                        original;

                    button.disabled = false;

                }, 1200);

            }

        }



        function updateCartCount() {

            cartCountEl.textContent =
                cartCount;

        }



        /* =======================================================
           SEARCH
        ======================================================= */

        function filterProducts(query) {

            const q =
                String(query || "")
                    .trim()
                    .toLowerCase();


            if (!q) {

                renderProducts(PRODUCTS);

                return;

            }


            const filtered =
                PRODUCTS.filter(product =>

                    product.title
                        .toLowerCase()
                        .includes(q)

                    ||

                    product.category
                        .toLowerCase()
                        .includes(q)

                );


            renderProducts(filtered);

        }



        document
            .getElementById("searchBtn")
            .addEventListener(
                "click",
                () => {

                    filterProducts(
                        searchInput.value
                    );

                }
            );


        searchInput.addEventListener(
            "keydown",
            event => {

                if (event.key === "Enter") {

                    filterProducts(
                        event.target.value
                    );

                }

            }
        );


        searchInput.addEventListener(
            "input",
            event => {

                filterProducts(
                    event.target.value
                );

            }
        );



        /* =======================================================
           MOBILE MENU
        ======================================================= */

        const mobileToggle =
            document.getElementById(
                "mobileToggle"
            );

        const mobileMenu =
            document.getElementById(
                "mobileMenu"
            );


        mobileToggle.addEventListener(
            "click",
            () => {

                const isOpen =
                    mobileMenu.style.display ===
                    "block";


                mobileMenu.style.display =
                    isOpen
                        ? "none"
                        : "block";


                mobileToggle.innerHTML =
                    isOpen

                        ? `<i class="fas fa-bars"></i>`

                        : `<i class="fas fa-times"></i>`;

            }
        );



        /* =======================================================
           CATEGORY NAVIGATION
        ======================================================= */

        document
            .getElementById("catMenuBtn")
            .addEventListener(
                "click",
                event => {

                    event.preventDefault();

                    document
                        .getElementById("cat-title")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                }
            );



        /* =======================================================
           SHOP NOW
        ======================================================= */

        document
            .getElementById("shopNow")
            .addEventListener(
                "click",
                () => {

                    document
                        .getElementById("prod-title")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                }
            );



        /* =======================================================
           DEAL BUTTON
        ======================================================= */

        document
            .getElementById("exploreDeals")
            .addEventListener(
                "click",
                () => {

                    document
                        .getElementById("deals")
                        .scrollIntoView({
                            behavior: "smooth"
                        });

                }
            );


        document
            .getElementById("buyDeal")
            .addEventListener(
                "click",
                () => {

                    cartCount++;

                    updateCartCount();

                    showToast(
                        "Deal added to cart"
                    );

                }
            );



        /* =======================================================
           NEWSLETTER
        ======================================================= */

        document
            .getElementById("newsletterForm")
            .addEventListener(
                "submit",
                event => {

                    event.preventDefault();


                    const email =
                        document
                            .getElementById(
                                "newsletterEmail"
                            )
                            .value
                            .trim();


                    const message =
                        document
                            .getElementById(
                                "newsletterMsg"
                            );


                    if (
                        !email ||
                        !email.includes("@")
                    ) {

                        message.style.display =
                            "block";

                        message.style.color =
                            "#ffb3b3";

                        message.textContent =
                            "Please enter a valid email address.";

                        return;

                    }


                    message.style.display =
                        "block";

                    message.style.color =
                        "#cce7ff";

                    message.textContent =
                        "Thanks! You are subscribed.";


                    document
                        .getElementById(
                            "newsletterEmail"
                        )
                        .value = "";


                    setTimeout(() => {

                        message.style.display =
                            "none";

                    }, 3000);

                }
            );



        /* =======================================================
           COUNTDOWN TIMER
        ======================================================= */

        (function setupDealTimer() {

            const now =
                new Date();


            const target =
                new Date(
                    now.getTime()
                    +
                    (
                        24 * 60 + 36
                    )
                    *
                    60
                    *
                    1000
                );


            function tick() {

                const difference =
                    target - new Date();


                if (difference <= 0) {

                    clearInterval(timer);

                    return;

                }


                const days =
                    Math.floor(
                        difference /
                        (
                            24 *
                            60 *
                            60 *
                            1000
                        )
                    );


                const hours =
                    Math.floor(
                        (
                            difference %
                            (
                                24 *
                                60 *
                                60 *
                                1000
                            )
                        )
                        /
                        (
                            60 *
                            60 *
                            1000
                        )
                    );


                const minutes =
                    Math.floor(
                        (
                            difference %
                            (
                                60 *
                                60 *
                                1000
                            )
                        )
                        /
                        (
                            60 *
                            1000
                        )
                    );


                const seconds =
                    Math.floor(
                        (
                            difference %
                            (
                                60 *
                                1000
                            )
                        )
                        /
                        1000
                    );


                document
                    .getElementById("dealDays")
                    .textContent =
                    days;


                document
                    .getElementById("dealHours")
                    .textContent =
                    String(hours)
                        .padStart(2, "0");


                document
                    .getElementById("dealMinutes")
                    .textContent =
                    String(minutes)
                        .padStart(2, "0");


                document
                    .getElementById("dealSeconds")
                    .textContent =
                    String(seconds)
                        .padStart(2, "0");

            }


            tick();


            const timer =
                setInterval(
                    tick,
                    1000
                );

        })();



        /* =======================================================
           INITIALIZATION
        ======================================================= */

        (function init() {

            renderCategories();

            renderProducts(PRODUCTS);

            updateCartCount();


            document
                .getElementById("year")
                .textContent =
                new Date()
                    .getFullYear();

        })();

    </script>

</body>
</html>
