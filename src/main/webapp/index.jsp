<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>DriveGo — Premium Car Rentals</title>

    <meta name="description"
          content="DriveGo - Easy, affordable and premium car rentals. Book your perfect car for your next journey.">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap"
        rel="stylesheet"
    >

    <!-- Font Awesome -->
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
    >

    <style>

        /* =========================================================
           GLOBAL
        ========================================================= */

        :root {
            --primary: #111827;
            --primary-light: #1f2937;

            --accent: #ff5a36;
            --accent-dark: #e54827;

            --secondary: #667085;

            --background: #f6f7f9;
            --surface: #ffffff;
            --surface-light: #f1f3f6;

            --border: #e5e7eb;

            --success: #16a34a;
            --warning: #f59e0b;
            --danger: #ef4444;

            --radius: 18px;

            --shadow:
                0 10px 30px rgba(17, 24, 39, 0.07);

            --shadow-hover:
                0 20px 50px rgba(17, 24, 39, 0.13);

            --container: 1240px;
        }


        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }


        html {
            scroll-behavior: smooth;
        }


        body {
            font-family:
                Inter,
                system-ui,
                -apple-system,
                BlinkMacSystemFont,
                "Segoe UI",
                sans-serif;

            background: var(--background);
            color: var(--primary);

            line-height: 1.6;
        }


        button,
        input,
        select {
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
            display: block;
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

            z-index: 1000;

            background:
                rgba(255, 255, 255, 0.95);

            backdrop-filter: blur(15px);

            border-bottom:
                1px solid rgba(17, 24, 39, 0.07);
        }


        .header-inner {
            min-height: 74px;

            display: flex;
            align-items: center;

            gap: 30px;
        }


        .brand {
            font-family: Poppins, sans-serif;

            font-size: 24px;
            font-weight: 800;

            letter-spacing: -0.04em;

            white-space: nowrap;
        }


        .brand-icon {
            display: inline-flex;

            width: 38px;
            height: 38px;

            align-items: center;
            justify-content: center;

            margin-right: 7px;

            border-radius: 10px;

            background: var(--accent);

            color: white;

            font-size: 17px;
        }


        .brand span {
            color: var(--accent);
        }


        .main-nav {
            flex: 1;
        }


        .main-nav ul {
            display: flex;

            align-items: center;

            gap: 5px;

            list-style: none;
        }


        .main-nav a {
            display: flex;

            align-items: center;

            gap: 7px;

            padding: 10px 13px;

            border-radius: 10px;

            color: #475467;

            font-size: 14px;

            font-weight: 600;

            transition: 0.2s;
        }


        .main-nav a:hover {
            background: var(--surface-light);

            color: var(--accent);
        }


        .header-actions {
            display: flex;

            align-items: center;

            gap: 8px;
        }


        .icon-btn {
            width: 42px;
            height: 42px;

            border: 0;

            background: transparent;

            border-radius: 10px;

            display: grid;
            place-items: center;

            color: #475467;

            transition: 0.2s;
        }


        .icon-btn:hover {
            background: var(--surface-light);

            color: var(--accent);
        }


        .login-btn {
            min-height: 42px;

            padding: 0 17px;

            border: 1px solid var(--border);

            border-radius: 10px;

            background: white;

            color: var(--primary);

            font-weight: 700;
        }


        .login-btn:hover {
            border-color: var(--accent);

            color: var(--accent);
        }


        .mobile-toggle {
            display: none;

            width: 42px;
            height: 42px;

            border: 0;

            background: transparent;

            font-size: 20px;
        }


        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            position: relative;

            min-height: 600px;

            display: flex;
            align-items: center;

            overflow: hidden;

            color: white;

            background:
                linear-gradient(
                    90deg,
                    rgba(7, 12, 22, 0.94),
                    rgba(7, 12, 22, 0.70),
                    rgba(7, 12, 22, 0.18)
                ),
                url(
                    "https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1800&q=90"
                )
                center / cover;
        }


        .hero-content {
            padding: 75px 0;
        }


        .hero-badge {
            display: inline-flex;

            align-items: center;

            gap: 8px;

            padding: 8px 13px;

            margin-bottom: 20px;

            border:
                1px solid rgba(255,255,255,0.22);

            border-radius: 999px;

            background:
                rgba(255,255,255,0.10);

            font-size: 12px;

            font-weight: 700;
        }


        .hero h1 {
            max-width: 720px;

            margin-bottom: 18px;

            font-family: Poppins, sans-serif;

            font-size:
                clamp(40px, 6vw, 68px);

            line-height: 1.05;

            letter-spacing: -0.05em;
        }


        .hero h1 span {
            color: #ff7555;
        }


        .hero-description {
            max-width: 610px;

            margin-bottom: 30px;

            color:
                rgba(255,255,255,0.84);

            font-size: 17px;
        }


        /* =========================================================
           SEARCH BOX
        ========================================================= */

        .booking-search {
            max-width: 1050px;

            padding: 18px;

            margin-top: 25px;

            border-radius: 18px;

            background:
                rgba(255,255,255,0.98);

            box-shadow:
                0 20px 60px rgba(0,0,0,0.22);

            color: var(--primary);
        }


        .search-grid {
            display: grid;

            grid-template-columns:
                1.2fr
                1fr
                1fr
                1fr
                auto;

            gap: 10px;
        }


        .search-field {
            min-height: 62px;

            padding: 9px 13px;

            border:
                1px solid var(--border);

            border-radius: 12px;

            background: white;
        }


        .search-field label {
            display: block;

            margin-bottom: 3px;

            color: var(--secondary);

            font-size: 11px;

            font-weight: 700;

            text-transform: uppercase;
        }


        .search-field input,
        .search-field select {
            width: 100%;

            border: 0;

            outline: none;

            background: transparent;

            color: var(--primary);

            font-size: 14px;

            font-weight: 600;
        }


        .search-button {
            min-width: 120px;

            border: 0;

            border-radius: 12px;

            background: var(--accent);

            color: white;

            font-weight: 800;

            transition: 0.2s;
        }


        .search-button:hover {
            background: var(--accent-dark);

            transform: translateY(-1px);
        }


        /* =========================================================
           BUTTONS
        ========================================================= */

        .btn {
            min-height: 46px;

            display: inline-flex;

            align-items: center;
            justify-content: center;

            gap: 8px;

            padding: 0 20px;

            border-radius: 11px;

            border: 1px solid transparent;

            font-weight: 700;

            transition: 0.2s;
        }


        .btn-primary {
            background: var(--accent);

            color: white;

            box-shadow:
                0 8px 20px rgba(255,90,54,0.24);
        }


        .btn-primary:hover {
            background: var(--accent-dark);

            transform: translateY(-2px);
        }


        .btn-dark {
            background: var(--primary);

            color: white;
        }


        .btn-dark:hover {
            background: var(--primary-light);

            transform: translateY(-2px);
        }


        .btn-outline {
            background: white;

            border-color: var(--border);

            color: var(--primary);
        }


        .btn-outline:hover {
            border-color: var(--accent);

            color: var(--accent);
        }


        /* =========================================================
           TRUST BAR
        ========================================================= */

        .trust-bar {
            background: white;

            border-bottom:
                1px solid var(--border);
        }


        .trust-inner {
            min-height: 88px;

            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 20px;

            align-items: center;
        }


        .trust-item {
            display: flex;

            align-items: center;

            justify-content: center;

            gap: 12px;
        }


        .trust-icon {
            width: 42px;
            height: 42px;

            display: grid;
            place-items: center;

            border-radius: 11px;

            background: #fff0eb;

            color: var(--accent);
        }


        .trust-item strong {
            display: block;

            font-size: 14px;
        }


        .trust-item span {
            display: block;

            color: var(--secondary);

            font-size: 12px;
        }


        /* =========================================================
           SECTIONS
        ========================================================= */

        .section {
            padding: 72px 0;
        }


        .section-header {
            display: flex;

            align-items: flex-end;

            justify-content: space-between;

            gap: 20px;

            margin-bottom: 30px;
        }


        .section-title {
            margin-bottom: 6px;

            font-family: Poppins, sans-serif;

            font-size: 31px;

            line-height: 1.15;

            letter-spacing: -0.04em;
        }


        .section-subtitle {
            color: var(--secondary);

            font-size: 14px;
        }


        /* =========================================================
           CATEGORIES
        ========================================================= */

        .categories {
            display: grid;

            grid-template-columns:
                repeat(5, 1fr);

            gap: 16px;
        }


        .category-card {
            padding: 24px 15px;

            text-align: center;

            background: white;

            border:
                1px solid var(--border);

            border-radius: 16px;

            cursor: pointer;

            transition: 0.25s;
        }


        .category-card:hover {
            transform: translateY(-5px);

            box-shadow: var(--shadow-hover);

            border-color:
                #ffc7b9;
        }


        .category-icon {
            width: 58px;
            height: 58px;

            margin: 0 auto 13px;

            display: grid;
            place-items: center;

            border-radius: 16px;

            background: #fff0eb;

            color: var(--accent);

            font-size: 23px;
        }


        .category-card h4 {
            margin-bottom: 3px;

            font-size: 15px;
        }


        .category-card p {
            color: var(--secondary);

            font-size: 12px;
        }


        /* =========================================================
           CAR GRID
        ========================================================= */

        .cars {
            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 20px;
        }


        .car-card {
            position: relative;

            overflow: hidden;

            background: white;

            border:
                1px solid var(--border);

            border-radius: 18px;

            transition: 0.25s;
        }


        .car-card:hover {
            transform: translateY(-5px);

            box-shadow: var(--shadow-hover);
        }


        .car-image {
            position: relative;

            overflow: hidden;

            background: #eef0f3;
        }


        .car-image img {
            width: 100%;

            height: 235px;

            object-fit: cover;

            transition: 0.35s;
        }


        .car-card:hover .car-image img {
            transform: scale(1.04);
        }


        .car-badge {
            position: absolute;

            top: 13px;
            left: 13px;

            z-index: 2;

            padding: 6px 10px;

            border-radius: 999px;

            background: white;

            box-shadow:
                0 5px 15px rgba(0,0,0,0.08);

            font-size: 11px;

            font-weight: 800;
        }


        .car-badge.popular {
            background: #fff0eb;

            color: var(--accent);
        }


        .favorite {
            position: absolute;

            top: 12px;
            right: 12px;

            z-index: 3;

            width: 38px;
            height: 38px;

            display: grid;
            place-items: center;

            border: 0;

            border-radius: 50%;

            background: white;

            color: #667085;

            box-shadow:
                0 5px 15px rgba(0,0,0,0.10);

            transition: 0.2s;
        }


        .favorite:hover,
        .favorite.active {
            color: var(--danger);

            transform: scale(1.08);
        }


        .car-body {
            padding: 18px;
        }


        .car-top {
            display: flex;

            align-items: flex-start;

            justify-content: space-between;

            gap: 10px;

            margin-bottom: 8px;
        }


        .car-name {
            font-family: Poppins, sans-serif;

            font-size: 19px;

            line-height: 1.2;
        }


        .car-type {
            margin-top: 4px;

            color: var(--secondary);

            font-size: 12px;
        }


        .rating {
            white-space: nowrap;

            color: #f59e0b;

            font-size: 12px;
        }


        .rating span {
            color: var(--secondary);

            margin-left: 3px;
        }


        .car-specs {
            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 8px;

            padding: 14px 0;

            margin: 12px 0;

            border-top:
                1px solid var(--border);

            border-bottom:
                1px solid var(--border);
        }


        .spec {
            text-align: center;

            color: var(--secondary);

            font-size: 11px;
        }


        .spec i {
            display: block;

            margin-bottom: 4px;

            color: var(--primary);

            font-size: 14px;
        }


        .car-footer {
            display: flex;

            align-items: center;

            justify-content: space-between;

            gap: 10px;
        }


        .price strong {
            font-size: 21px;
        }


        .price span {
            color: var(--secondary);

            font-size: 11px;
        }


        .rent-btn {
            min-height: 40px;

            padding: 0 15px;

            border: 0;

            border-radius: 9px;

            background: var(--primary);

            color: white;

            font-size: 13px;

            font-weight: 700;
        }


        .rent-btn:hover {
            background: var(--accent);
        }


        /* =========================================================
           DEAL SECTION
        ========================================================= */

        .deal-section {
            padding: 72px 0;
        }


        .deal {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            overflow: hidden;

            border-radius: 24px;

            background: var(--primary);

            color: white;
        }


        .deal-content {
            padding: 55px;
        }


        .deal-tag {
            display: inline-block;

            padding: 6px 10px;

            margin-bottom: 16px;

            border-radius: 999px;

            background: rgba(255,255,255,0.1);

            color: #ff9b83;

            font-size: 11px;

            font-weight: 800;
        }


        .deal h2 {
            margin-bottom: 15px;

            font-family: Poppins, sans-serif;

            font-size: 37px;

            line-height: 1.1;
        }


        .deal p {
            margin-bottom: 25px;

            color:
                rgba(255,255,255,0.72);

            font-size: 14px;
        }


        .deal-features {
            display: flex;

            flex-wrap: wrap;

            gap: 10px;

            margin-bottom: 28px;
        }


        .deal-feature {
            padding: 7px 10px;

            border-radius: 8px;

            background:
                rgba(255,255,255,0.08);

            font-size: 11px;
        }


        .deal-image {
            min-height: 390px;

            background:
                url(
                    "https://images.unsplash.com/photo-1555215695-3004980ad54e?auto=format&fit=crop&w=1200&q=85"
                )
                center / cover;
        }


        /* =========================================================
           LOCATIONS
        ========================================================= */

        .locations {
            display: grid;

            grid-template-columns:
                repeat(4, 1fr);

            gap: 18px;
        }


        .location-card {
            position: relative;

            min-height: 210px;

            overflow: hidden;

            border-radius: 17px;

            color: white;

            background-size: cover;

            background-position: center;

            display: flex;

            align-items: flex-end;

            padding: 20px;

            transition: 0.25s;
        }


        .location-card:hover {
            transform: translateY(-4px);
        }


        .location-card::before {
            content: "";

            position: absolute;

            inset: 0;

            background:
                linear-gradient(
                    transparent 20%,
                    rgba(0,0,0,0.82)
                );
        }


        .location-content {
            position: relative;

            z-index: 2;
        }


        .location-content h3 {
            font-family: Poppins, sans-serif;

            font-size: 19px;
        }


        .location-content p {
            color:
                rgba(255,255,255,0.75);

            font-size: 12px;
        }


        .location-1 {
            background-image:
                url("https://images.unsplash.com/photo-1570168007204-dfb528c6958f?auto=format&fit=crop&w=800&q=80");
        }


        .location-2 {
            background-image:
                url("https://images.unsplash.com/photo-1566552881560-0be862a7c445?auto=format&fit=crop&w=800&q=80");
        }


        .location-3 {
            background-image:
                url("https://images.unsplash.com/photo-1599661046289-e31897846e41?auto=format&fit=crop&w=800&q=80");
        }


        .location-4 {
            background-image:
                url("https://images.unsplash.com/photo-1532664189809-02133fee698d?auto=format&fit=crop&w=800&q=80");
        }


        /* =========================================================
           WHY US
        ========================================================= */

        .why-grid {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 50px;

            align-items: center;
        }


        .why-image {
            min-height: 470px;

            border-radius: 22px;

            background:
                url(
                    "https://images.unsplash.com/photo-1511919884226-fd3cad34687c?auto=format&fit=crop&w=1200&q=85"
                )
                center / cover;
        }


        .benefits {
            display: grid;

            gap: 22px;

            margin-top: 28px;
        }


        .benefit {
            display: flex;

            gap: 15px;
        }


        .benefit-icon {
            flex: 0 0 auto;

            width: 46px;
            height: 46px;

            display: grid;
            place-items: center;

            border-radius: 12px;

            background: #fff0eb;

            color: var(--accent);
        }


        .benefit h4 {
            margin-bottom: 3px;

            font-size: 15px;
        }


        .benefit p {
            color: var(--secondary);

            font-size: 13px;
        }


        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .testimonials {
            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 18px;
        }


        .testimonial {
            padding: 25px;

            background: white;

            border:
                1px solid var(--border);

            border-radius: 17px;
        }


        .testimonial-stars {
            margin-bottom: 13px;

            color: #f59e0b;

            font-size: 13px;
        }


        .testimonial p {
            margin-bottom: 20px;

            color: #475467;

            font-size: 14px;
        }


        .customer {
            display: flex;

            align-items: center;

            gap: 11px;
        }


        .customer-avatar {
            width: 40px;
            height: 40px;

            display: grid;
            place-items: center;

            border-radius: 50%;

            background: #eef0f3;

            color: var(--primary);

            font-weight: 800;
        }


        .customer strong {
            display: block;

            font-size: 13px;
        }


        .customer span {
            color: var(--secondary);

            font-size: 11px;
        }


        /* =========================================================
           CTA
        ========================================================= */

        .cta {
            padding: 65px 30px;

            border-radius: 24px;

            text-align: center;

            background:
                linear-gradient(
                    135deg,
                    #111827,
                    #263244
                );

            color: white;
        }


        .cta h2 {
            margin-bottom: 10px;

            font-family: Poppins, sans-serif;

            font-size: 35px;
        }


        .cta p {
            max-width: 600px;

            margin: 0 auto 24px;

            color:
                rgba(255,255,255,0.70);
        }


        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            padding: 60px 0 25px;

            background: #0b1120;

            color: white;
        }


        .footer-grid {
            display: grid;

            grid-template-columns:
                1.5fr
                1fr
                1fr
                1fr;

            gap: 40px;

            padding-bottom: 40px;

            border-bottom:
                1px solid rgba(255,255,255,0.09);
        }


        .footer-brand p {
            max-width: 330px;

            margin-top: 14px;

            color:
                rgba(255,255,255,0.58);

            font-size: 13px;
        }


        .footer-column h4 {
            margin-bottom: 15px;

            font-size: 14px;
        }


        .footer-column ul {
            list-style: none;
        }


        .footer-column li {
            margin-bottom: 9px;
        }


        .footer-column a {
            color:
                rgba(255,255,255,0.60);

            font-size: 13px;

            transition: 0.2s;
        }


        .footer-column a:hover {
            color: white;
        }


        .footer-bottom {
            display: flex;

            justify-content: space-between;

            gap: 20px;

            padding-top: 22px;

            color:
                rgba(255,255,255,0.45);

            font-size: 12px;
        }


        /* =========================================================
           MODAL
        ========================================================= */

        .modal-overlay {
            position: fixed;

            inset: 0;

            z-index: 5000;

            display: none;

            align-items: center;
            justify-content: center;

            padding: 20px;

            background:
                rgba(0,0,0,0.62);

            backdrop-filter: blur(5px);
        }


        .modal-overlay.show {
            display: flex;
        }


        .modal {
            width: min(520px, 100%);

            max-height: 90vh;

            overflow-y: auto;

            padding: 28px;

            border-radius: 20px;

            background: white;

            box-shadow:
                0 30px 80px rgba(0,0,0,0.25);

            animation:
                modalIn 0.25s ease;
        }


        @keyframes modalIn {
            from {
                opacity: 0;
                transform: translateY(20px) scale(0.97);
            }

            to {
                opacity: 1;
                transform: translateY(0) scale(1);
            }
        }


        .modal-header {
            display: flex;

            align-items: center;

            justify-content: space-between;

            margin-bottom: 20px;
        }


        .modal-header h2 {
            font-family: Poppins, sans-serif;

            font-size: 23px;
        }


        .modal-close {
            width: 36px;
            height: 36px;

            border: 0;

            border-radius: 9px;

            background: var(--surface-light);

            color: var(--secondary);
        }


        .modal-close:hover {
            color: var(--danger);
        }


        .form-grid {
            display: grid;

            grid-template-columns:
                1fr 1fr;

            gap: 13px;
        }


        .form-group {
            margin-bottom: 13px;
        }


        .form-group.full {
            grid-column: 1 / -1;
        }


        .form-group label {
            display: block;

            margin-bottom: 6px;

            font-size: 12px;

            font-weight: 700;
        }


        .form-group input,
        .form-group select {
            width: 100%;

            height: 45px;

            padding: 0 12px;

            border:
                1px solid var(--border);

            border-radius: 9px;

            outline: none;
        }


        .form-group input:focus,
        .form-group select:focus {
            border-color: var(--accent);

            box-shadow:
                0 0 0 3px rgba(255,90,54,0.10);
        }


        .modal-submit {
            width: 100%;

            min-height: 47px;

            margin-top: 5px;

            border: 0;

            border-radius: 10px;

            background: var(--accent);

            color: white;

            font-weight: 800;
        }


        .modal-submit:hover {
            background: var(--accent-dark);
        }


        /* =========================================================
           TOAST
        ========================================================= */

        .toast {
            position: fixed;

            right: 22px;
            bottom: 22px;

            z-index: 8000;

            min-width: 280px;

            padding: 15px 18px;

            border-radius: 12px;

            background: #111827;

            color: white;

            box-shadow:
                0 15px 40px rgba(0,0,0,0.20);

            transform:
                translateY(100px);

            opacity: 0;

            pointer-events: none;

            transition: 0.3s;
        }


        .toast.show {
            transform:
                translateY(0);

            opacity: 1;
        }


        .toast i {
            margin-right: 8px;

            color: #4ade80;
        }


        /* =========================================================
           EMPTY STATE
        ========================================================= */

        .empty {
            grid-column: 1 / -1;

            padding: 60px 20px;

            text-align: center;

            background: white;

            border:
                1px dashed #d0d5dd;

            border-radius: 17px;
        }


        .empty i {
            margin-bottom: 10px;

            color: var(--accent);

            font-size: 32px;
        }


        .empty h3 {
            margin-bottom: 5px;
        }


        .empty p {
            color: var(--secondary);

            font-size: 13px;
        }


        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 1050px) {

            .main-nav {
                display: none;
            }


            .mobile-toggle {
                display: block;
            }


            .header-inner {
                gap: 12px;
            }


            .header-actions {
                margin-left: auto;
            }


            .search-grid {
                grid-template-columns:
                    1fr 1fr;
            }


            .search-button {
                min-height: 55px;
            }


            .categories {
                grid-template-columns:
                    repeat(3, 1fr);
            }


            .cars {
                grid-template-columns:
                    repeat(2, 1fr);
            }


            .locations {
                grid-template-columns:
                    repeat(2, 1fr);
            }
        }


        @media (max-width: 700px) {

            .container {
                width:
                    min(
                        calc(100% - 24px),
                        var(--container)
                    );
            }


            .hero {
                min-height: auto;
            }


            .hero-content {
                padding: 60px 0;
            }


            .hero h1 {
                font-size: 42px;
            }


            .booking-search {
                padding: 12px;
            }


            .search-grid {
                grid-template-columns: 1fr;
            }


            .trust-inner {
                grid-template-columns:
                    repeat(2, 1fr);

                padding: 18px 0;
            }


            .trust-item {
                justify-content: flex-start;
            }


            .section {
                padding: 55px 0;
            }


            .section-header {
                align-items: flex-start;

                flex-direction: column;
            }


            .categories {
                grid-template-columns:
                    repeat(2, 1fr);
            }


            .cars {
                grid-template-columns: 1fr;
            }


            .deal {
                grid-template-columns: 1fr;
            }


            .deal-content {
                padding: 35px 25px;
            }


            .deal h2 {
                font-size: 30px;
            }


            .deal-image {
                min-height: 270px;
            }


            .locations {
                grid-template-columns: 1fr;
            }


            .why-grid {
                grid-template-columns: 1fr;

                gap: 30px;
            }


            .why-image {
                min-height: 320px;
            }


            .testimonials {
                grid-template-columns: 1fr;
            }


            .footer-grid {
                grid-template-columns:
                    1fr 1fr;
            }


            .footer-bottom {
                flex-direction: column;
            }


            .login-btn {
                display: none;
            }


            .brand {
                font-size: 20px;
            }
        }


        @media (max-width: 450px) {

            .categories {
                grid-template-columns: 1fr;
            }


            .trust-inner {
                grid-template-columns: 1fr;
            }


            .form-grid {
                grid-template-columns: 1fr;
            }


            .form-group.full {
                grid-column: auto;
            }


            .footer-grid {
                grid-template-columns: 1fr;
            }


            .hero h1 {
                font-size: 36px;
            }
        }

    </style>
</head>


<body>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

    <div class="container header-inner">

        <a href="#home" class="brand">

            <span class="brand-icon">
                <i class="fa-solid fa-car"></i>
            </span>

            Drive<span>Go</span>

        </a>


        <nav class="main-nav">

            <ul>

                <li>
                    <a href="#home">
                        <i class="fa-solid fa-house"></i>
                        Home
                    </a>
                </li>

                <li>
                    <a href="#cars">
                        <i class="fa-solid fa-car-side"></i>
                        Cars
                    </a>
                </li>

                <li>
                    <a href="#locations">
                        <i class="fa-solid fa-location-dot"></i>
                        Locations
                    </a>
                </li>

                <li>
                    <a href="#deals">
                        <i class="fa-solid fa-tag"></i>
                        Deals
                    </a>
                </li>

                <li>
                    <a href="#about">
                        <i class="fa-solid fa-circle-info"></i>
                        About
                    </a>
                </li>

            </ul>

        </nav>


        <div class="header-actions">

            <button
                class="icon-btn"
                title="Wishlist"
                onclick="showToast('Wishlist is ready!')"
            >
                <i class="fa-regular fa-heart"></i>
            </button>


            <button
                class="icon-btn"
                title="Notifications"
                onclick="showToast('No new notifications')"
            >
                <i class="fa-regular fa-bell"></i>
            </button>


            <button
                class="login-btn"
                onclick="openLogin()"
            >
                Sign In
            </button>


            <button
                class="mobile-toggle"
                onclick="toggleMobileMenu()"
            >
                <i class="fa-solid fa-bars"></i>
            </button>

        </div>

    </div>


    <!-- MOBILE MENU -->

    <div id="mobileMenu" style="display:none;">

        <div class="container">

            <nav>

                <ul style="
                    list-style:none;
                    padding:10px 0 15px;
                ">

                    <li>
                        <a
                            href="#home"
                            onclick="closeMobileMenu()"
                            style="display:block;padding:10px;"
                        >
                            Home
                        </a>
                    </li>

                    <li>
                        <a
                            href="#cars"
                            onclick="closeMobileMenu()"
                            style="display:block;padding:10px;"
                        >
                            Cars
                        </a>
                    </li>

                    <li>
                        <a
                            href="#locations"
                            onclick="closeMobileMenu()"
                            style="display:block;padding:10px;"
                        >
                            Locations
                        </a>
                    </li>

                    <li>
                        <a
                            href="#deals"
                            onclick="closeMobileMenu()"
                            style="display:block;padding:10px;"
                        >
                            Deals
                        </a>
                    </li>

                    <li>
                        <a
                            href="#about"
                            onclick="closeMobileMenu()"
                            style="display:block;padding:10px;"
                        >
                            About
                        </a>
                    </li>

                </ul>

            </nav>

        </div>

    </div>

</header>



<!-- =========================================================
     HERO
========================================================= -->

<section class="hero" id="home">

    <div class="container">

        <div class="hero-content">

            <div class="hero-badge">

                <i class="fa-solid fa-bolt"></i>

                Premium cars. Simple booking.

            </div>


            <h1>

                Your journey starts
                <span>with the right car.</span>

            </h1>


            <p class="hero-description">

                Rent premium, reliable cars at affordable prices.
                Pick your car, choose your location and hit the road
                without the hassle.

            </p>


            <!-- BOOKING SEARCH -->

            <div class="booking-search">

                <div class="search-grid">

                    <div class="search-field">

                        <label>
                            Pickup Location
                        </label>

                        <select id="pickupLocation">

                            <option value="">
                                Select location
                            </option>

                            <option>
                                Hyderabad
                            </option>

                            <option>
                                Bangalore
                            </option>

                            <option>
                                Mumbai
                            </option>

                            <option>
                                Chennai
                            </option>

                            <option>
                                Delhi
                            </option>

                        </select>

                    </div>


                    <div class="search-field">

                        <label>
                            Pickup Date
                        </label>

                        <input
                            type="date"
                            id="pickupDate"
                        >

                    </div>


                    <div class="search-field">

                        <label>
                            Pickup Time
                        </label>

                        <input
                            type="time"
                            id="pickupTime"
                            value="10:00"
                        >

                    </div>


                    <div class="search-field">

                        <label>
                            Car Type
                        </label>

                        <select id="searchCategory">

                            <option value="all">
                                All cars
                            </option>

                            <option value="Luxury">
                                Luxury
                            </option>

                            <option value="SUV">
                                SUV
                            </option>

                            <option value="Sedan">
                                Sedan
                            </option>

                            <option value="Electric">
                                Electric
                            </option>

                            <option value="Economy">
                                Economy
                            </option>

                        </select>

                    </div>


                    <button
                        class="search-button"
                        onclick="searchCars()"
                    >

                        <i class="fa-solid fa-magnifying-glass"></i>

                        Search Cars

                    </button>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     TRUST BAR
========================================================= -->

<section class="trust-bar">

    <div class="container trust-inner">

        <div class="trust-item">

            <div class="trust-icon">
                <i class="fa-solid fa-shield-halved"></i>
            </div>

            <div>
                <strong>Fully Insured</strong>
                <span>Drive with confidence</span>
            </div>

        </div>


        <div class="trust-item">

            <div class="trust-icon">
                <i class="fa-solid fa-indian-rupee-sign"></i>
            </div>

            <div>
                <strong>Best Prices</strong>
                <span>No hidden charges</span>
            </div>

        </div>


        <div class="trust-item">

            <div class="trust-icon">
                <i class="fa-solid fa-headset"></i>
            </div>

            <div>
                <strong>24/7 Support</strong>
                <span>We're always here</span>
            </div>

        </div>


        <div class="trust-item">

            <div class="trust-icon">
                <i class="fa-solid fa-clock"></i>
            </div>

            <div>
                <strong>Quick Booking</strong>
                <span>Book in minutes</span>
            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     CATEGORIES
========================================================= -->

<section class="section">

    <div class="container">

        <div class="section-header">

            <div>

                <h2 class="section-title">
                    Find the perfect ride
                </h2>

                <p class="section-subtitle">
                    Choose a category that fits your journey.
                </p>

            </div>

        </div>


        <div class="categories">

            <div
                class="category-card"
                onclick="filterCars('Economy')"
            >

                <div class="category-icon">
                    <i class="fa-solid fa-car"></i>
                </div>

                <h4>
                    Economy
                </h4>

                <p>
                    Budget-friendly rides
                </p>

            </div>


            <div
                class="category-card"
                onclick="filterCars('Sedan')"
            >

                <div class="category-icon">
                    <i class="fa-solid fa-car-side"></i>
                </div>

                <h4>
                    Sedan
                </h4>

                <p>
                    Comfort for every trip
                </p>

            </div>


            <div
                class="category-card"
                onclick="filterCars('SUV')"
            >

                <div class="category-icon">
                    <i class="fa-solid fa-truck"></i>
                </div>

                <h4>
                    SUV
                </h4>

                <p>
                    Space for the family
                </p>

            </div>


            <div
                class="category-card"
                onclick="filterCars('Luxury')"
            >

                <div class="category-icon">
                    <i class="fa-solid fa-gem"></i>
                </div>

                <h4>
                    Luxury
                </h4>

                <p>
                    Premium driving experience
                </p>

            </div>


            <div
                class="category-card"
                onclick="filterCars('Electric')"
            >

                <div class="category-icon">
                    <i class="fa-solid fa-bolt"></i>
                </div>

                <h4>
                    Electric
                </h4>

                <p>
                    Smarter and greener
                </p>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     CARS
========================================================= -->

<section class="section" id="cars">

    <div class="container">

        <div class="section-header">

            <div>

                <h2 class="section-title">
                    Popular cars
                </h2>

                <p class="section-subtitle">
                    Handpicked cars ready for your next adventure.
                </p>

            </div>


            <button
                class="btn btn-outline"
                onclick="filterCars('all')"
            >

                View all cars

                <i class="fa-solid fa-arrow-right"></i>

            </button>

        </div>


        <div
            class="cars"
            id="carGrid"
        >

        </div>

    </div>

</section>



<!-- =========================================================
     DEAL
========================================================= -->

<section class="deal-section" id="deals">

    <div class="container">

        <div class="deal">

            <div class="deal-content">

                <span class="deal-tag">
                    WEEKEND SPECIAL
                </span>


                <h2>
                    Make your weekend unforgettable.
                </h2>


                <p>
                    Get up to 25% off selected premium cars.
                    Perfect for weekend getaways, road trips
                    and city escapes.
                </p>


                <div class="deal-features">

                    <span class="deal-feature">
                        <i class="fa-solid fa-check"></i>
                        Free cancellation
                    </span>

                    <span class="deal-feature">
                        <i class="fa-solid fa-check"></i>
                        Unlimited kilometres
                    </span>

                    <span class="deal-feature">
                        <i class="fa-solid fa-check"></i>
                        Roadside assistance
                    </span>

                </div>


                <button
                    class="btn btn-primary"
                    onclick="scrollToCars()"
                >

                    Explore weekend cars

                    <i class="fa-solid fa-arrow-right"></i>

                </button>

            </div>


            <div class="deal-image"></div>

        </div>

    </div>

</section>



<!-- =========================================================
     LOCATIONS
========================================================= -->

<section class="section" id="locations">

    <div class="container">

        <div class="section-header">

            <div>

                <h2 class="section-title">
                    Popular rental locations
                </h2>

                <p class="section-subtitle">
                    Pick up your car from convenient locations.
                </p>

            </div>

        </div>


        <div class="locations">

            <div class="location-card location-1">

                <div class="location-content">

                    <h3>
                        Hyderabad
                    </h3>

                    <p>
                        12+ pickup locations
                    </p>

                </div>

            </div>


            <div class="location-card location-2">

                <div class="location-content">

                    <h3>
                        Bangalore
                    </h3>

                    <p>
                        18+ pickup locations
                    </p>

                </div>

            </div>


            <div class="location-card location-3">

                <div class="location-content">

                    <h3>
                        Mumbai
                    </h3>

                    <p>
                        15+ pickup locations
                    </p>

                </div>

            </div>


            <div class="location-card location-4">

                <div class="location-content">

                    <h3>
                        Delhi
                    </h3>

                    <p>
                        20+ pickup locations
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     WHY DRIVEGO
========================================================= -->

<section
    class="section"
    id="about"
    style="background:white;"
>

    <div class="container">

        <div class="why-grid">

            <div class="why-image"></div>


            <div>

                <h2 class="section-title">
                    Renting a car should be simple.
                </h2>


                <p class="section-subtitle">
                    DriveGo makes it easy to find, book and
                    enjoy the right car for every journey.
                </p>


                <div class="benefits">

                    <div class="benefit">

                        <div class="benefit-icon">

                            <i class="fa-solid fa-car"></i>

                        </div>

                        <div>

                            <h4>
                                Wide range of cars
                            </h4>

                            <p>
                                From affordable hatchbacks to
                                premium luxury cars, choose from
                                a wide range of well-maintained vehicles.
                            </p>

                        </div>

                    </div>


                    <div class="benefit">

                        <div class="benefit-icon">

                            <i class="fa-solid fa-indian-rupee-sign"></i>

                        </div>

                        <div>

                            <h4>
                                Transparent pricing
                            </h4>

                            <p>
                                Know exactly what you're paying.
                                No surprise charges at checkout.
                            </p>

                        </div>

                    </div>


                    <div class="benefit">

                        <div class="benefit-icon">

                            <i class="fa-solid fa-location-dot"></i>

                        </div>

                        <div>

                            <h4>
                                Convenient pickup
                            </h4>

                            <p>
                                Pick up your car from multiple
                                locations across major cities.
                            </p>

                        </div>

                    </div>


                    <div class="benefit">

                        <div class="benefit-icon">

                            <i class="fa-solid fa-headset"></i>

                        </div>

                        <div>

                            <h4>
                                24/7 customer support
                            </h4>

                            <p>
                                Our support team is available
                                whenever you need assistance.
                            </p>

                        </div>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     TESTIMONIALS
========================================================= -->

<section class="section">

    <div class="container">

        <div class="section-header">

            <div>

                <h2 class="section-title">
                    What our customers say
                </h2>

                <p class="section-subtitle">
                    Thousands of happy journeys start with DriveGo.
                </p>

            </div>

        </div>


        <div class="testimonials">

            <div class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p>
                    "The booking process was incredibly simple.
                    The car was clean, comfortable and ready
                    exactly on time."
                </p>

                <div class="customer">

                    <div class="customer-avatar">
                        AK
                    </div>

                    <div>

                        <strong>
                            Arjun Kumar
                        </strong>

                        <span>
                            Hyderabad
                        </span>

                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p>
                    "Great selection of cars and very transparent
                    pricing. I used DriveGo for a Bangalore road
                    trip and had a great experience."
                </p>

                <div class="customer">

                    <div class="customer-avatar">
                        RS
                    </div>

                    <div>

                        <strong>
                            Rahul Sharma
                        </strong>

                        <span>
                            Bangalore
                        </span>

                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p>
                    "Customer support was excellent. They helped
                    me change my pickup time within minutes."
                </p>

                <div class="customer">

                    <div class="customer-avatar">
                        PN
                    </div>

                    <div>

                        <strong>
                            Priya Nair
                        </strong>

                        <span>
                            Mumbai
                        </span>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     CTA
========================================================= -->

<section class="section">

    <div class="container">

        <div class="cta">

            <h2>
                Ready to hit the road?
            </h2>

            <p>
                Choose your car, select your dates and
                start your journey today.
            </p>

            <button
                class="btn btn-primary"
                onclick="scrollToCars()"
            >

                Browse available cars

                <i class="fa-solid fa-arrow-right"></i>

            </button>

        </div>

    </div>

</section>



<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#home" class="brand">

                    <span class="brand-icon">
                        <i class="fa-solid fa-car"></i>
                    </span>

                    Drive<span>Go</span>

                </a>


                <p>
                    Premium car rentals made simple.
                    Find your perfect ride and enjoy
                    every kilometre of your journey.
                </p>

            </div>


            <div class="footer-column">

                <h4>
                    Company
                </h4>

                <ul>

                    <li>
                        <a href="#about">
                            About us
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Careers
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Press
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Blog
                        </a>
                    </li>

                </ul>

            </div>


            <div class="footer-column">

                <h4>
                    Support
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            Help center
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Contact us
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Cancellation
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            Rental policy
                        </a>
                    </li>

                </ul>

            </div>


            <div class="footer-column">

                <h4>
                    Follow us
                </h4>

                <ul>

                    <li>
                        <a href="#">
                            <i class="fa-brands fa-instagram"></i>
                            Instagram
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <i class="fa-brands fa-facebook"></i>
                            Facebook
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <i class="fa-brands fa-x-twitter"></i>
                            Twitter
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <i class="fa-brands fa-linkedin"></i>
                            LinkedIn
                        </a>
                    </li>

                </ul>

            </div>

        </div>


        <div class="footer-bottom">

            <span>
                © 2026 DriveGo. All rights reserved.
            </span>

            <span>
                Privacy · Terms · Cookies
            </span>

        </div>

    </div>

</footer>



<!-- =========================================================
     BOOKING MODAL
========================================================= -->

<div
    class="modal-overlay"
    id="bookingModal"
>

    <div class="modal">

        <div class="modal-header">

            <h2>
                Book your car
            </h2>

            <button
                class="modal-close"
                onclick="closeModal()"
            >

                <i class="fa-solid fa-xmark"></i>

            </button>

        </div>


        <div id="selectedCarInfo"
             style="
                padding:13px;
                margin-bottom:18px;
                border-radius:10px;
                background:#f6f7f9;
             "
        >
        </div>


        <form
            id="bookingForm"
            onsubmit="submitBooking(event)"
        >

            <div class="form-grid">

                <div class="form-group">

                    <label>
                        First Name
                    </label>

                    <input
                        type="text"
                        required
                        placeholder="Enter first name"
                    >

                </div>


                <div class="form-group">

                    <label>
                        Last Name
                    </label>

                    <input
                        type="text"
                        required
                        placeholder="Enter last name"
                    >

                </div>


                <div class="form-group">

                    <label>
                        Phone
                    </label>

                    <input
                        type="tel"
                        required
                        placeholder="+91 9876543210"
                    >

                </div>


                <div class="form-group">

                    <label>
                        Email
                    </label>

                    <input
                        type="email"
                        required
                        placeholder="you@example.com"
                    >

                </div>


                <div class="form-group">

                    <label>
                        Pickup Date
                    </label>

                    <input
                        type="date"
                        id="modalPickupDate"
                        required
                    >

                </div>


                <div class="form-group">

                    <label>
                        Return Date
                    </label>

                    <input
                        type="date"
                        required
                    >

                </div>


                <div class="form-group full">

                    <label>
                        Pickup Location
                    </label>

                    <select required>

                        <option value="">
                            Select pickup location
                        </option>

                        <option>
                            Hyderabad
                        </option>

                        <option>
                            Bangalore
                        </option>

                        <option>
                            Mumbai
                        </option>

                        <option>
                            Chennai
                        </option>

                        <option>
                            Delhi
                        </option>

                    </select>

                </div>

            </div>


            <button
                type="submit"
                class="modal-submit"
            >

                Confirm Booking

                <i class="fa-solid fa-arrow-right"></i>

            </button>

        </form>

    </div>

</div>



<!-- =========================================================
     LOGIN MODAL
========================================================= -->

<div
    class="modal-overlay"
    id="loginModal"
>

    <div class="modal">

        <div class="modal-header">

            <h2>
                Welcome back
            </h2>

            <button
                class="modal-close"
                onclick="closeLogin()"
            >

                <i class="fa-solid fa-xmark"></i>

            </button>

        </div>


        <form
            onsubmit="loginUser(event)"
        >

            <div class="form-group">

                <label>
                    Email
                </label>

                <input
                    type="email"
                    required
                    placeholder="Enter your email"
                >

            </div>


            <div class="form-group">

                <label>
                    Password
                </label>

                <input
                    type="password"
                    required
                    placeholder="Enter your password"
                >

            </div>


            <button
                type="submit"
                class="modal-submit"
            >

                Sign In

            </button>

        </form>

    </div>

</div>



<!-- =========================================================
     TOAST
========================================================= -->

<div
    class="toast"
    id="toast"
>

    <i class="fa-solid fa-circle-check"></i>

    <span id="toastMessage">
        Success
    </span>

</div>



<script>

    /* =========================================================
       CAR DATA
    ========================================================= */

    const cars = [

        {
            id: 1,

            name: "Toyota Camry",

            type: "Sedan",

            category: "Sedan",

            price: 2499,

            rating: 4.8,

            reviews: 142,

            transmission: "Automatic",

            seats: 5,

            fuel: "Petrol",

            image:
                "https://images.unsplash.com/photo-1621007947382-bb3c3994e3fb?auto=format&fit=crop&w=900&q=85",

            badge: "Popular"
        },


        {
            id: 2,

            name: "BMW 5 Series",

            type: "Luxury Sedan",

            category: "Luxury",

            price: 6499,

            rating: 4.9,

            reviews: 98,

            transmission: "Automatic",

            seats: 5,

            fuel: "Petrol",

            image:
                "https://images.unsplash.com/photo-1555215695-3004980ad54e?auto=format&fit=crop&w=900&q=85",

            badge: "Premium"
        },


        {
            id: 3,

            name: "Toyota Fortuner",

            type: "Premium SUV",

            category: "SUV",

            price: 4499,

            rating: 4.8,

            reviews: 186,

            transmission: "Automatic",

            seats: 7,

            fuel: "Diesel",

            image:
                "https://images.unsplash.com/photo-1519641471654-76ce0107ad1b?auto=format&fit=crop&w=900&q=85",

            badge: "Best Seller"
        },


        {
            id: 4,

            name: "Tesla Model 3",

            type: "Electric Sedan",

            category: "Electric",

            price: 5299,

            rating: 4.9,

            reviews: 74,

            transmission: "Automatic",

            seats: 5,

            fuel: "Electric",

            image:
                "https://images.unsplash.com/photo-1560958089-b8a1929cea89?auto=format&fit=crop&w=900&q=85",

            badge: "Electric"
        },


        {
            id: 5,

            name: "Hyundai Creta",

            type: "Compact SUV",

            category: "SUV",

            price: 2299,

            rating: 4.7,

            reviews: 211,

            transmission: "Automatic",

            seats: 5,

            fuel: "Petrol",

            image:
                "https://images.unsplash.com/photo-1606664515524-ed2f786a0bd6?auto=format&fit=crop&w=900&q=85",

            badge: "Value Pick"
        },


        {
            id: 6,

            name: "Mercedes C-Class",

            type: "Luxury Sedan",

            category: "Luxury",

            price: 7299,

            rating: 4.9,

            reviews: 61,

            transmission: "Automatic",

            seats: 5,

            fuel: "Petrol",

            image:
                "https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?auto=format&fit=crop&w=900&q=85",

            badge: "Luxury"
        },


        {
            id: 7,

            name: "Maruti Swift",

            type: "Economy Hatchback",

            category: "Economy",

            price: 1499,

            rating: 4.6,

            reviews: 324,

            transmission: "Manual",

            seats: 5,

            fuel: "Petrol",

            image:
                "https://images.unsplash.com/photo-1542362567-b07e54358753?auto=format&fit=crop&w=900&q=85",

            badge: "Budget"
        },


        {
            id: 8,

            name: "Kia Seltos",

            type: "Premium SUV",

            category: "SUV",

            price: 2799,

            rating: 4.8,

            reviews: 165,

            transmission: "Automatic",

            seats: 5,

            fuel: "Petrol",

            image:
                "https://images.unsplash.com/photo-1606016159991-dfe4f2746ad5?auto=format&fit=crop&w=900&q=85",

            badge: "Popular"
        },


        {
            id: 9,

            name: "Honda City",

            type: "Premium Sedan",

            category: "Sedan",

            price: 1999,

            rating: 4.7,

            reviews: 245,

            transmission: "Automatic",

            seats: 5,

            fuel: "Petrol",

            image:
                "https://images.unsplash.com/photo-1590362891991-f776e747a588?auto=format&fit=crop&w=900&q=85",

            badge: "Value Pick"
        }

    ];



    /* =========================================================
       RENDER CARS
    ========================================================= */

    function renderCars(list = cars) {

        const grid =
            document.getElementById("carGrid");


        if (!list.length) {

            grid.innerHTML = `

                <div class="empty">

                    <i class="fa-solid fa-car-side"></i>

                    <h3>
                        No cars found
                    </h3>

                    <p>
                        Try another car category.
                    </p>

                </div>

            `;

            return;
        }


        grid.innerHTML =
            list.map(car => `

                <article
                    class="car-card"
                    data-category="${car.category}"
                >

                    <div class="car-image">

                        <img
                            src="${car.image}"
                            alt="${car.name}"
                            loading="lazy"
                        >

                        <span
                            class="car-badge popular"
                        >
                            ${car.badge}
                        </span>


                        <button
                            class="favorite"
                            onclick="toggleFavorite(this, '${car.name}')"
                            aria-label="Add to wishlist"
                        >

                            <i class="fa-regular fa-heart"></i>

                        </button>

                    </div>


                    <div class="car-body">

                        <div class="car-top">

                            <div>

                                <h3 class="car-name">
                                    ${car.name}
                                </h3>

                                <p class="car-type">
                                    ${car.type}
                                </p>

                            </div>


                            <div class="rating">

                                <i class="fa-solid fa-star"></i>

                                ${car.rating}

                                <span>
                                    (${car.reviews})
                                </span>

                            </div>

                        </div>


                        <div class="car-specs">

                            <div class="spec">

                                <i class="fa-solid fa-gears"></i>

                                ${car.transmission}

                            </div>


                            <div class="spec">

                                <i class="fa-solid fa-user-group"></i>

                                ${car.seats} seats

                            </div>


                            <div class="spec">

                                <i class="fa-solid fa-gas-pump"></i>

                                ${car.fuel}

                            </div>

                        </div>


                        <div class="car-footer">

                            <div class="price">

                                <strong>
                                    ₹${car.price.toLocaleString("en-IN")}
                                </strong>

                                <span>
                                    / day
                                </span>

                            </div>


                            <button
                                class="rent-btn"
                                onclick="openBooking(${car.id})"
                            >

                                Rent now

                                <i class="fa-solid fa-arrow-right"></i>

                            </button>

                        </div>

                    </div>

                </article>

            `).join("");

    }



    /* =========================================================
       FILTER CARS
    ========================================================= */

    function filterCars(category) {

        let filtered;


        if (
            !category ||
            category.toLowerCase() === "all"
        ) {

            filtered = cars;

        } else {

            filtered =
                cars.filter(
                    car =>
                        car.category.toLowerCase() ===
                        category.toLowerCase()
                );

        }


        renderCars(filtered);


        document
            .getElementById("cars")
            .scrollIntoView({
                behavior: "smooth"
            });

    }



    /* =========================================================
       SEARCH
    ========================================================= */

    function searchCars() {

        const location =
            document
                .getElementById("pickupLocation")
                .value;

        const category =
            document
                .getElementById("searchCategory")
                .value;

        const date =
            document
                .getElementById("pickupDate")
                .value;


        if (!location) {

            showToast(
                "Please select a pickup location."
            );

            return;
        }


        if (!date) {

            showToast(
                "Please select your pickup date."
            );

            return;
        }


        let filtered =
            category === "all"
                ? cars
                : cars.filter(
                    car =>
                        car.category === category
                );


        renderCars(filtered);


        document
            .getElementById("cars")
            .scrollIntoView({
                behavior: "smooth"
            });


        showToast(
            `${filtered.length} cars available in ${location}`
        );

    }



    /* =========================================================
       FAVORITE
    ========================================================= */

    function toggleFavorite(button, carName) {

        button.classList.toggle("active");


        const icon =
            button.querySelector("i");


        if (
            button.classList.contains("active")
        ) {

            icon.classList.remove(
                "fa-regular"
            );

            icon.classList.add(
                "fa-solid"
            );

            showToast(
                `${carName} added to wishlist`
            );

        } else {

            icon.classList.remove(
                "fa-solid"
            );

            icon.classList.add(
                "fa-regular"
            );

            showToast(
                `${carName} removed from wishlist`
            );

        }

    }



    /* =========================================================
       BOOKING MODAL
    ========================================================= */

    let selectedCar = null;


    function openBooking(carId) {

        selectedCar =
            cars.find(
                car => car.id === carId
            );


        if (!selectedCar) return;


        document
            .getElementById("selectedCarInfo")
            .innerHTML = `

                <strong>
                    ${selectedCar.name}
                </strong>

                <div
                    style="
                        margin-top:4px;
                        color:#667085;
                        font-size:12px;
                    "
                >

                    ${selectedCar.type}
                    ·
                    ₹${selectedCar.price.toLocaleString("en-IN")}/day

                </div>

            `;


        document
            .getElementById("bookingModal")
            .classList.add("show");


        document.body.style.overflow =
            "hidden";


        const today =
            new Date()
                .toISOString()
                .split("T")[0];


        document
            .getElementById("modalPickupDate")
            .min = today;

    }



    function closeModal() {

        document
            .getElementById("bookingModal")
            .classList.remove("show");


        document.body.style.overflow =
            "";

    }



    function submitBooking(event) {

        event.preventDefault();


        if (!selectedCar) return;


        closeModal();


        event.target.reset();


        showToast(
            `Booking request submitted for ${selectedCar.name}!`
        );

    }



    /* =========================================================
       LOGIN
    ========================================================= */

    function openLogin() {

        document
            .getElementById("loginModal")
            .classList.add("show");


        document.body.style.overflow =
            "hidden";

    }


    function closeLogin() {

        document
            .getElementById("loginModal")
            .classList.remove("show");


        document.body.style.overflow =
            "";

    }


    function loginUser(event) {

        event.preventDefault();


        closeLogin();


        event.target.reset();


        showToast(
            "Sign in successful!"
        );

    }



    /* =========================================================
       TOAST
    ========================================================= */

    let toastTimer;


    function showToast(message) {

        const toast =
            document.getElementById("toast");


        document
            .getElementById("toastMessage")
            .textContent = message;


        toast.classList.add("show");


        clearTimeout(toastTimer);


        toastTimer =
            setTimeout(
                () => {

                    toast.classList.remove(
                        "show"
                    );

                },
                3000
            );

    }



    /* =========================================================
       MOBILE MENU
    ========================================================= */

    function toggleMobileMenu() {

        const menu =
            document.getElementById("mobileMenu");


        if (
            menu.style.display === "none" ||
            menu.style.display === ""
        ) {

            menu.style.display = "block";

        } else {

            menu.style.display = "none";

        }

    }


    function closeMobileMenu() {

        document
            .getElementById("mobileMenu")
            .style.display = "none";

    }



    /* =========================================================
       SCROLL TO CARS
    ========================================================= */

    function scrollToCars() {

        document
            .getElementById("cars")
            .scrollIntoView({
                behavior: "smooth"
            });

    }



    /* =========================================================
       CLOSE MODALS WHEN CLICKING OUTSIDE
    ========================================================= */

    document
        .getElementById("bookingModal")
        .addEventListener(
            "click",
            function(event) {

                if (
                    event.target === this
                ) {

                    closeModal();

                }

            }
        );


    document
        .getElementById("loginModal")
        .addEventListener(
            "click",
            function(event) {

                if (
                    event.target === this
                ) {

                    closeLogin();

                }

            }
        );



    /* =========================================================
       ESCAPE KEY
    ========================================================= */

    document.addEventListener(
        "keydown",
        function(event) {

            if (
                event.key === "Escape"
            ) {

                closeModal();

                closeLogin();

            }

        }
    );



    /* =========================================================
       SET MIN DATE
    ========================================================= */

    const today =
        new Date()
            .toISOString()
            .split("T")[0];


    document
        .getElementById("pickupDate")
        .min = today;



    /* =========================================================
       INITIAL RENDER
    ========================================================= */

    renderCars();

</script>


</body>
</html>
