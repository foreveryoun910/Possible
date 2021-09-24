<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 
Template Name: Xpedia
Version: 1.0.0

-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zxx">
<!--[endif]-->

<head>
<meta charset="utf-8" />
<title>Xpedia</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta name="description" content="Xpedia" />
<meta name="keywords" content="Xpedia" />
<meta name="author" content="" />
<meta name="MobileOptimized" content="320" />
<!--Template style -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/xpedia.css" />
<!--favicon-->
<link rel="shortcut icon" type="image/png"
	href="${pageContext.request.contextPath}/resources/images/fevicon.png" />
</head>

<body>
	<!-- preloader Start -->
	<div id="preloader">
		<div id="status">
			<img
				src="${pageContext.request.contextPath}/resources/images/loader.gif"
				id="preloader_image" alt="loader">
		</div>
	</div>
	<div class="serach-header">
		<div class="searchbox">
			<button class="close">×</button>
			<form>
				<input type="search" placeholder="Search …">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
			</form>
		</div>
	</div>
	<!-- x top header_wrapper Start -->
	<div class="x_top_header_wrapper float_left">
		<div class="container">
			<div class="x_top_header_left_side_wrapper float_left">
				<p>Call Us : 0814 251 152</p>
			</div>
			<div class="x_top_header_right_side_wrapper float_left">
				<div class="x_top_header_social_icon_wrapper">
					<ul>
						<li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter-square"></i></a></li>
						<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
					</ul>
				</div>
				<div class="x_top_header_all_select_box_wrapper">
					<ul>
						<li class="language"><select class="myselect">
								<option>EN</option>
								<option>RO</option>
								<option>IT</option>
						</select> <i class="fa fa-globe"></i></li>
						<li class="usd"><select class="myselect">
								<option>USD</option>
								<option>EUR</option>
								<option>CAD</option>
						</select> <i class="fa fa-money"></i></li>
						<li class="login"><a href="login.html"><i
								class="fa fa-power-off"></i> &nbsp;&nbsp;login</a></li>
						<li class="register"><a href="register.html"><i
								class="fa fa-plus-circle"></i> &nbsp;&nbsp;register</a></li>
						<li>
							<button class="searchd">
								<i class="fa fa-search"></i>
							</button>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- x top header_wrapper End -->
	<!-- hs Navigation Start -->
	<div class="hs_navigation_header_wrapper">
		<div class="container">
			<div class="row">
				<div class=" col-xl-3 col-lg-3 col-md-3 col-sm-12 col-12">
					<div class="hs_logo_wrapper d-none d-sm-none d-xs-none d-md-block">
						<a href="index.html"> <img src="images/logo.png"
							class="img-responsive" alt="logo" title="Logo" />
						</a>
					</div>
				</div>
				<div class="col-xl-9 col-lg-9 col-md-9 col-sm-12 col-12">
					<div
						class="hs_navi_cart_wrapper  d-none d-sm-none d-xs-none d-md-block d-lg-block d-xl-block">
						<div class="dropdown-wrapper menu-button menu_button_end">
							<a class="menu-button" href="#"><i
								class="flaticon-shopping-cart"></i><span>3</span></a>
							<div class="drop-menu">
								<div class="cc_cart_wrapper1">
									<div class="cc_cart_img_wrapper">
										<img src="images/cart_img.jpg" alt="cart_img" />
									</div>
									<div class="cc_cart_cont_wrapper">
										<h4>
											<a href="#">Car</a>
										</h4>
										<p>Quantity : 2 × $45</p>
										<h5>$90</h5>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
								</div>
								<div class="cc_cart_wrapper1 cc_cart_wrapper2">
									<div class="cc_cart_img_wrapper">
										<img src="images/cart_img.jpg" alt="cart_img" />
									</div>
									<div class="cc_cart_cont_wrapper">
										<h4>
											<a href="#">Car</a>
										</h4>
										<p>Quantity : 2 × $45</p>
										<h5>$90</h5>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
								</div>
								<div class="cc_cart_wrapper1">
									<div class="cc_cart_img_wrapper">
										<img src="images/cart_img.jpg" alt="cart_img" />
									</div>
									<div class="cc_cart_cont_wrapper">
										<h4>
											<a href="#">Car</a>
										</h4>
										<p>Quantity : 2 × $45</p>
										<h5>$90</h5>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
									<div class="checkout_btn_resto">
										<a href="car_checkout.html">Checkout</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<nav class="hs_main_menu d-none d-sm-none d-xs-none d-md-block">
						<ul>
							<li>
								<div class="dropdown-wrapper menu-button">
									<a class="menu-button" href="#">Home</a>
									<div class="drop-menu">
										<a class="menu-button" href="index.html">Home-I</a> <a
											class="menu-button" href="index_II.html">Home-II</a>
									</div>
								</div>
							</li>
							<li>
								<div class="dropdown-wrapper menu-button">
									<a class="menu-button" href="#">Car</a>
									<div class="drop-menu">
										<a class="menu-button" href="car_accessories.html">Car-Accessories</a>
										<a class="menu-button" href="car_booking.html">Car-Booking</a>
										<a class="menu-button" href="car_booking_done.html">Car-Booking-Done</a>
										<a class="menu-button" href="car_checkout.html">Car-Checkout</a>
										<a class="menu-button" href="car_detail_left.html">
											Car-Detail-Left</a> <a class="menu-button"
											href="car_detail_right.html"> Car-Detail-Right</a>
									</div>
								</div>
							</li>
							<li><a class="menu-button single_menu" href="about.html">About</a>
							</li>
							<li><a class="menu-button single_menu" href="team.html">Out
									Team </a></li>
							<li><a class="menu-button single_menu" href="services.html">services
							</a></li>
							<li>
								<div class="dropdown-wrapper menu-button">
									<a class="menu-button" href="#">Blog</a>
									<div class="drop-menu">
										<a class="menu-button" href="blog_category.html">Blog-Categories</a>
										<a class="menu-button" href="blog_single.html">Blog-Single</a>
									</div>
								</div>
							</li>
							<li><a class="menu-button single_menu" href="contact.html">Contact
							</a></li>
						</ul>
					</nav>
					<header
						class="mobail_menu d-none d-block d-xs-block d-sm-block d-md-none d-lg-none d-xl-none">
						<div class="container-fluid">
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-6">
									<div class="hs_logo">
										<a href="index.html"> <img src="images/logo.png"
											alt="Logo" title="Logo">
										</a>
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-6">
									<div class="cd-dropdown-wrapper">
										<a class="house_toggle" href="#0"> <svg version="1.1"
												id="Capa_1" xmlns="http://www.w3.org/2000/svg"
												xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
												width="511.63px" height="511.631px"
												viewBox="0 0 511.63 511.631"
												style="enable-background: new 0 0 511.63 511.631;"
												xml:space="preserve">
												<g>
													<g>
														<path
													d="M493.356,274.088H18.274c-4.952,0-9.233,1.811-12.851,5.428C1.809,283.129,0,287.417,0,292.362v36.545
																	c0,4.948,1.809,9.236,5.424,12.847c3.621,3.617,7.904,5.432,12.851,5.432h475.082c4.944,0,9.232-1.814,12.85-5.432
																	c3.614-3.61,5.425-7.898,5.425-12.847v-36.545c0-4.945-1.811-9.233-5.425-12.847C502.588,275.895,498.3,274.088,493.356,274.088z" />
														<path
													d="M493.356,383.721H18.274c-4.952,0-9.233,1.81-12.851,5.427C1.809,392.762,0,397.046,0,401.994v36.546
																	c0,4.948,1.809,9.232,5.424,12.854c3.621,3.61,7.904,5.421,12.851,5.421h475.082c4.944,0,9.232-1.811,12.85-5.421
																	c3.614-3.621,5.425-7.905,5.425-12.854v-36.546c0-4.948-1.811-9.232-5.425-12.847C502.588,385.53,498.3,383.721,493.356,383.721z" />
														<path
													d="M506.206,60.241c-3.617-3.612-7.905-5.424-12.85-5.424H18.274c-4.952,0-9.233,1.812-12.851,5.424
																	C1.809,63.858,0,68.143,0,73.091v36.547c0,4.948,1.809,9.229,5.424,12.847c3.621,3.616,7.904,5.424,12.851,5.424h475.082
																	c4.944,0,9.232-1.809,12.85-5.424c3.614-3.617,5.425-7.898,5.425-12.847V73.091C511.63,68.143,509.82,63.861,506.206,60.241z" />
														<path
													d="M493.356,164.456H18.274c-4.952,0-9.233,1.807-12.851,5.424C1.809,173.495,0,177.778,0,182.727v36.547
																	c0,4.947,1.809,9.233,5.424,12.845c3.621,3.617,7.904,5.429,12.851,5.429h475.082c4.944,0,9.232-1.812,12.85-5.429
																	c3.614-3.612,5.425-7.898,5.425-12.845v-36.547c0-4.952-1.811-9.231-5.425-12.847C502.588,166.263,498.3,164.456,493.356,164.456z
																	" />
													</g>
												</g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
												<g></g>
											</svg>
										</a>
										<!-- .cd-dropdown -->
									</div>
									<nav class="cd-dropdown">
										<h2>
											<a href="index.html">Xpedia</a>
										</h2>
										<a href="#0" class="cd-close">Close</a>
										<ul class="cd-dropdown-content">
											<li>
												<form class="cd-search">
													<input type="search" placeholder="Search...">
												</form>
											</li>
											<li class="has-children"><a href="#">Home</a>
												<ul class="cd-secondary-dropdown is-hidden">
													<li class="go-back"><a href="#0">Menu</a></li>
													<li><a href="index.html">Home-I</a></li>
													<!-- .has-children -->
													<li><a href="index_II.html">Home_II</a></li>
													<!-- .has-children -->
												</ul> <!-- .cd-secondary-dropdown --></li>
											<li class="has-children"><a href="#">Car</a>
												<ul class="cd-secondary-dropdown is-hidden">
													<li class="go-back"><a href="#0">Menu</a></li>
													<li><a href="car_accessories.html">Car-Accessories</a>
													</li>
													<li><a href="car_booking.html">Car-Booking</a></li>
													<li><a href="car_booking_done.html">Car-Booking-Done</a>
													</li>
													<li><a href="car_checkout.html">Car-Checkout</a></li>
													<li><a href="car_detail_left.html">
															Car-Detail-Left</a></li>
													<li><a href="car_detail_right.html">
															Car-Detail-Right</a></li>
													<!-- .has-children -->
												</ul> <!-- .cd-secondary-dropdown --></li>
											<li><a href="about.html">About</a></li>
											<li><a href="team.html">Our Team</a></li>
											<li><a href="services.html">Services</a></li>
											<li class="has-children"><a href="#">Blog</a>
												<ul class="cd-secondary-dropdown is-hidden">
													<li class="go-back"><a href="#0">Menu</a></li>
													<li><a href="blog_category.html">Blog Categories</a></li>
													<!-- .has-children -->
													<li><a href="blog_single.html">Blog Single</a></li>
													<!-- .has-children -->
												</ul> <!-- .cd-secondary-dropdown --></li>
											<li><a href="contact.html">Contact</a></li>
										</ul>
										<!-- .cd-dropdown-content -->
									</nav>
								</div>
							</div>
						</div>
						<!-- .cd-dropdown-wrapper -->
					</header>
				</div>
			</div>
		</div>
	</div>
	<!-- hs Navigation End -->
	<!-- btc tittle Wrapper Start -->
	<div class="btc_tittle_main_wrapper">
		<div class="btc_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_left_heading">
						<h1>Blog Categories</h1>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 full_width">
					<div class="btc_tittle_right_heading">
						<div class="btc_tittle_right_cont_wrapper">
							<ul>
								<li><a href="#">Home</a> <i class="fa fa-angle-right"></i>
								</li>
								<li>Blog</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- btc tittle Wrapper End -->
	<!-- x blog main and sidebar Wrapper Start -->
	<div class="x_blog_sidebar_main_wrapper float_left padding_tb_100">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
					<div class="x_blog_left_side_wrapper float_left">
						<div class="row">
							<div class="col-md-12">
								<div class="lr_bc_first_box_main_wrapper">
									<div class="lr_bc_first_box_img_wrapper">
										<img src="images/bc1.jpg" alt="blog_img">
									</div>
									<div class="lr_bc_first_box_img_cont_wrapper">
										<h2>Autoweek in review: Everything you missed Sept. 11-15</h2>
										<ul>
											<li><i class="fa fa-calendar"></i>&nbsp; <a href="#">September
													19, 2017</a></li>
											<li><i class="fa fa-user-o"></i>&nbsp; <a href="#">by
													Admin</a></li>
											<li><i class="fa fa-comments-o"></i>&nbsp; <a href="#">04
													comments</a></li>
										</ul>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do mod tempor incididunt ut labore et dolore magna
											aliqua. d minim veniam, quis nostrud exercitation ullamco
											laboris Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
										<span><a href="#">Read More &nbsp;<i
												class="fa fa-angle-double-right"></i></a></span>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div
									class="lr_bc_first_box_main_wrapper lr_bc_first_box_main_wrapper2">
									<div class="lr_bc_slider_first_wrapper">
										<div class="owl-carousel owl-theme">
											<div class="item">
												<div class="lr_bc_slider_img_wrapper">
													<img src="images/bc2.jpg" alt="fresh_food_img">
												</div>
											</div>
											<div class="item">
												<div class="lr_bc_slider_img_wrapper">
													<img src="images/bc3.jpg" alt="fresh_food_img">
												</div>
											</div>
											<div class="item">
												<div class="lr_bc_slider_img_wrapper">
													<img src="images/bc4.jpg" alt="fresh_food_img">
												</div>
											</div>
										</div>
									</div>
									<div class="lr_bc_first_box_img_cont_wrapper">
										<h2>Rakish Tokyo concept signals hope for Mitsubishi's
											lineup</h2>
										<ul>
											<li><i class="fa fa-calendar"></i>&nbsp; <a href="#">September
													19, 2017</a></li>
											<li><i class="fa fa-user-o"></i>&nbsp; <a href="#">by
													Admin</a></li>
											<li><i class="fa fa-comments-o"></i>&nbsp; <a href="#">04
													comments</a></li>
										</ul>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do mod tempor incididunt ut labore et dolore magna
											aliqua. d minim veniam, quis nostrud exercitation ullamco
											laboris Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
										<span><a href="#">Read More &nbsp;<i
												class="fa fa-angle-double-right"></i></a></span>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div
									class="lr_bc_first_box_main_wrapper lr_bc_first_box_main_wrapper2">
									<div class="hs_blog_box1_img_wrapper">
										<img src="images/bc3.jpg" class="lr_bc_zoom_img"
											alt="blog_img">
										<div class="prs_ms_scene_img_overlay">
											<ul>
												<li><a class="test-popup-link button" rel='external'
													href='https://www.youtube.com/embed/ryzOXAO0Ss0'
													title='title'> <img src="images/play.png"
														alt="play_icon">
												</a></li>
											</ul>
										</div>
									</div>
									<div class="lr_bc_first_box_img_cont_wrapper">
										<h2>Dinan BMW S2 M4 first drive: Not for everyone's
											lineup</h2>
										<ul>
											<li><i class="fa fa-calendar"></i>&nbsp; <a href="#">September
													19, 2017</a></li>
											<li><i class="fa fa-user-o"></i>&nbsp; <a href="#">by
													Admin</a></li>
											<li><i class="fa fa-comments-o"></i>&nbsp; <a href="#">04
													comments</a></li>
										</ul>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do mod tempor incididunt ut labore et dolore magna
											aliqua. d minim veniam, quis nostrud exercitation ullamco
											laboris Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
										<span><a href="#">Read More &nbsp;<i
												class="fa fa-angle-double-right"></i></a></span>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div
									class="lr_bc_first_box_main_wrapper lr_bc_first_box_main_wrapper2">
									<div class="lr_bc_first_box_img_wrapper">
										<img src="images/bc4.jpg" alt="blog_img">
									</div>
									<div class="lr_bc_first_box_img_cont_wrapper">
										<h2>Autoweek in review: Everything you missed Sept. 11-15</h2>
										<ul>
											<li><i class="fa fa-calendar"></i>&nbsp; <a href="#">September
													19, 2017</a></li>
											<li><i class="fa fa-user-o"></i>&nbsp; <a href="#">by
													Admin</a></li>
											<li><i class="fa fa-comments-o"></i>&nbsp; <a href="#">04
													comments</a></li>
										</ul>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do mod tempor incididunt ut labore et dolore magna
											aliqua. d minim veniam, quis nostrud exercitation ullamco
											laboris Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore.</p>
										<span><a href="#">Read More &nbsp;<i
												class="fa fa-angle-double-right"></i></a></span>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div
									class="pager_wrapper prs_blog_pagi_wrapper blog_pager_wrapper">
									<ul class="pagination">
										<li><a href="#"><i class="flaticon-left-arrow"></i></a></li>
										<li class="btc_shop_pagi"><a href="#">01</a></li>
										<li class="btc_shop_pagi"><a href="#">02</a></li>
										<li class="btc_third_pegi btc_shop_pagi"><a href="#">03</a>
										</li>
										<li class="hidden-xs btc_shop_pagi"><a href="#">...</a></li>
										<li><a href="#"><i class="flaticon-right-arrow"></i></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
					<div class="x_blog_right_side_wrapper float_left">
						<div class="row">
							<div class="col-md-12">
								<div
									class="jp_rightside_job_categories_wrapper jp_blog_right_box_search">
									<div class="jp_rightside_job_categories_heading">
										<h4>Search</h4>
									</div>
									<div class="jp_blog_right_search_wrapper">
										<input type="text" placeholder="Search">
										<button type="submit">
											<i class="fa fa-search"></i>
										</button>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div
									class="jp_rightside_job_categories_wrapper jp_rightside_job_categories_wrapper2">
									<div class="jp_rightside_job_categories_heading">
										<h4>Categories</h4>
									</div>
									<div class="jp_rightside_job_categories_content">
										<ul>
											<li><i class="fa fa-long-arrow-right"></i> &nbsp;&nbsp;<a
												href="#">Car Rental (22) </a></li>
											<li><i class="fa fa-long-arrow-right"></i> <a href="#">
													&nbsp;&nbsp;New Cars Model (35)</a></li>
											<li><i class="fa fa-long-arrow-right"></i> <a href="#">
													&nbsp;&nbsp;Hotels (145) </a></li>
											<li><i class="fa fa-long-arrow-right"></i> <a href="#">
													&nbsp;&nbsp;Trips (21)</a></li>
											<li><i class="fa fa-long-arrow-right"></i> <a href="#">
													&nbsp;&nbsp;Others (541)</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div
									class="jp_rightside_job_categories_wrapper jp_rightside_job_categories_wrapper2">
									<div class="jp_rightside_job_categories_heading">
										<h4>Latest Post</h4>
									</div>
									<div class="jp_rightside_career_main_content">
										<div class="jp_rightside_career_content_wrapper">
											<div class="jp_rightside_career_img">
												<img src="images/bs1.jpg" alt="career_img" />
											</div>
											<div class="jp_rightside_career_img_cont">
												<h4>
													<a href="#">Image Blog Post Formate</a>
												</h4>
												<p>
													<i class="fa fa-calendar-o"></i> &nbsp;20 OCT, 2017
												</p>
											</div>
										</div>
										<div class="jp_rightside_career_content_wrapper">
											<div class="jp_rightside_career_img">
												<img src="images/bs2.jpg" alt="career_img" />
											</div>
											<div class="jp_rightside_career_img_cont">
												<h4>
													<a href="#">Image Blog Post Formate</a>
												</h4>
												<p>
													<i class="fa fa-calendar-o"></i> &nbsp;20 OCT, 2017
												</p>
											</div>
										</div>
										<div class="jp_rightside_career_content_wrapper">
											<div class="jp_rightside_career_img">
												<img src="images/bs3.jpg" alt="career_img" />
											</div>
											<div class="jp_rightside_career_img_cont">
												<h4>
													<a href="#">Image Blog Post Formate</a>
												</h4>
												<p>
													<i class="fa fa-calendar-o"></i> &nbsp;20 OCT, 2017
												</p>
											</div>
										</div>
										<div class="jp_rightside_career_content_wrapper">
											<div class="jp_rightside_career_img">
												<img src="images/bs4.jpg" alt="career_img" />
											</div>
											<div class="jp_rightside_career_img_cont">
												<h4>
													<a href="#">Image Blog Post Formate</a>
												</h4>
												<p>
													<i class="fa fa-calendar-o"></i> &nbsp;20 OCT, 2017
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div
									class="jp_rightside_job_categories_wrapper jp_rightside_job_categories_wrapper2">
									<div class="jp_rightside_job_categories_heading">
										<h4>Archives</h4>
									</div>
									<div class="jp_rightside_job_categories_content">
										<ul>
											<li><i class="fa fa-long-arrow-right"></i> &nbsp;&nbsp;<a
												href="#">January 2018 </a></li>
											<li><i class="fa fa-long-arrow-right"></i> <a href="#">
													&nbsp;&nbsp;February 2018</a></li>
											<li><i class="fa fa-long-arrow-right"></i> <a href="#">
													&nbsp;&nbsp;March 2018 </a></li>
											<li><i class="fa fa-long-arrow-right"></i> <a href="#">
													&nbsp;&nbsp;April 2018</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div
									class="jp_rightside_job_categories_wrapper jp_rightside_job_categories_wrapper2">
									<div class="jp_rightside_job_categories_heading">
										<h4>Tag Cloud</h4>
									</div>
									<div class="blog_category_side_menu">
										<ul>
											<li><a href="#">Car</a></li>
											<li><a href="#">Rental</a></li>
											<li><a href="#">Drive</a></li>
											<li><a href="#">Insurance</a></li>
											<li><a href="#">Offer</a></li>
											<li><a href="#">Car</a></li>
											<li><a href="#">Rental</a></li>
											<li><a href="#">Drive</a></li>
											<li><a href="#">Money</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- x blog main and sidebar Wrapper End -->
	<!-- x news latter Wrapper Start -->
	<div class="x_news_letter_main_wrapper">
		<div class="container">
			<div class="x_news_contact_wrapper">
				<img src="images/nl1.png" alt="news_img">
				<h4>
					Call Us <br> <span>+1 800 123 4567</span>
				</h4>
			</div>
			<div class="x_news_contact_second_wrapper">
				<h4>Newsletter</h4>
			</div>
			<div class="x_news_contact_search_wrapper">
				<input type="text" placeholder="Email Address">
				<button>
					read more <i class="fa fa-arrow-right"></i>
				</button>
			</div>
		</div>
	</div>
	<!-- x news latter Wrapper End -->
	<!-- x footer Wrapper Start -->
	<div class="x_footer_top_main_wrapper float_left">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
					<div class="x_footer_top_left float_left">
						<img src="images/footer_logo.png" alt="logo">
					</div>
				</div>
				<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
					<div class="x_footer_top_right float_left">
						<div class="x_footer_top_title_box x_footer_top_title_box1">
							<div class="x_footer_top_title_box_icon_cont">
								<i class="flaticon-pie-chart"></i>
								<h3>latest News</h3>
							</div>
						</div>
						<div class="x_footer_top_title_box">
							<div class="x_footer_top_title_box_icon_cont">
								<i class="flaticon-phone-call"></i>
								<h3>Contact our Office</h3>
							</div>
						</div>
						<div class="x_footer_top_title_box">
							<div
								class="x_footer_top_title_box_icon_cont x_footer_top_title_box_icon_cont_first">
								<i class="flaticon-home-page"></i>
								<h3>Get Appointment</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- x footer Wrapper End -->
	<!-- x footer Wrapper Start -->
	<div class="x_footer_bottom_main_wrapper float_left">
		<div class="container">
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
					<div class="x_footer_bottom_box_wrapper float_left">
						<h3>About Us</h3>
						<p>Consectetur adipisicing elit, sed do eiusmod tempor
							incididunt ut labore et dolore magna aliqua.</p>
						<span><a href="#">Read More &nbsp;<i
								class="fa fa-angle-double-right"></i></a></span>
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
					<div class="x_footer_bottom_box_wrapper_second float_left">
						<h3>Information</h3>
						<ul>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; About</a></li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; Service</a></li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; Terms and Conditions</a></li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; Become a Driver</a></li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; Best Price Guarantee</a></li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; Privacy & Cookies Policy</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
					<div class="x_footer_bottom_box_wrapper_second float_left">
						<h3>Customer Support</h3>
						<ul>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; FAQ</a></li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; Payment Option</a></li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; Booking Tips</a></li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; How it words ?</a></li>
							<li><a href="#"><i class="fa fa-long-arrow-right"></i>
									&nbsp; Contact Us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12">
					<div class="x_footer_bottom_box_wrapper_third float_left">
						<h3>Have Questions?</h3>
						<div class="x_footer_bottom_icon_section float_left">
							<div class="x_footer_bottom_icon">
								<i class="flaticon-phone-call"></i>
							</div>
							<div class="x_footer_bottom_icon_cont">
								<h4>Toll Free caling in world</h4>
								<p>808 - 111 - 9999</p>
							</div>
						</div>
						<div
							class="x_footer_bottom_icon_section x_footer_bottom_icon_section2 float_left">
							<div class="x_footer_bottom_icon x_footer_bottom_icon2">
								<i class="flaticon-mail-send"></i>
							</div>
							<div class="x_footer_bottom_icon_cont">
								<h4>Email Us</h4>
								<p>
									<a href="#">listing@example.com</a>
								</p>
							</div>
						</div>
						<div
							class="x_footer_bottom_icon_section x_footer_bottom_icon_section2 float_left">
							<div class="x_footer_bottom_icon x_footer_bottom_icon3">
								<i class="fa fa-map-marker"></i>
							</div>
							<div class="x_footer_bottom_icon_cont x_footer_bottom_icon_cont2">
								<h4>
									<a href="#">View On Map</a>
								</h4>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="x_copyr_main_wrapper float_left">
		<a href="javascript:" id="return-to-top"><i class="fa fa-arrow-up"></i></a>
		<div class="container">
			<p>Copyright © 2018 Expedia. All rights reserved.</p>
		</div>
	</div>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/modernizr.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/select2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.menu-aim.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/own-menu.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.countTo.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.inview.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bxslider.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/xpedia.js"></script>
	<!-- custom js-->
</body>

</html>