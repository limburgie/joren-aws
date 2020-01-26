<!DOCTYPE html>
<html lang="nl">
<head>
	<title>${i18n['site-title']}</title>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<meta name="robots" content="noindex">

	<link rel="shortcut icon" href="/assets/images/favicon.ico">

	<!-- Google Fonts -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800">

	<!-- CSS Global Compulsory -->
	<link rel="stylesheet" href="/assets/vendor/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" href="/assets/vendor/icon-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="/assets/vendor/icon-line/css/simple-line-icons.css">
	<link rel="stylesheet" href="/assets/vendor/icon-etlinefont/style.css">
	<link rel="stylesheet" href="/assets/vendor/icon-line-pro/style.css">
	<link rel="stylesheet" href="/assets/vendor/icon-hs/style.css">
	<link rel="stylesheet" href="/assets/vendor/animate.css">
	<link rel="stylesheet" href="/assets/vendor/hamburgers/hamburgers.min.css">
	<link rel="stylesheet" href="/assets/vendor/custombox/custombox.min.css">

	<!-- CSS Unify -->
	<link rel="stylesheet" href="/assets/css/unify-core.css">
	<link rel="stylesheet" href="/assets/css/unify-components.css">
	<link rel="stylesheet" href="/assets/css/unify-globals.css">

	<!-- CSS Customization -->
	<link rel="stylesheet" href="/assets/css/custom.css">
</head>

<body>

<#assign appointment = api.query("appointment").findOne()>

<main>
	<!-- Header -->
	<header id="js-header" class="u-header u-header--sticky-top g-font-size-12">
		<div class="u-header__section u-header__section--light g-bg-white g-transition-0_3 g-py-10">
			<nav class="js-mega-menu navbar navbar-expand-lg hs-menu-initialized hs-menu-horizontal">
				<div class="container">
					<!-- Responsive Toggle Button -->
					<button class="navbar-toggler navbar-toggler-right btn g-line-height-1 g-brd-none g-pa-0 g-pos-abs g-top-15 g-right-0" type="button" aria-label="Menu" aria-expanded="false"
							aria-controls="navBar" data-toggle="collapse" data-target="#navBar">
						<span class="hamburger hamburger--slider">
							<span class="hamburger-box">
								<span class="hamburger-inner"></span>
							</span>
						</span>
					</button>
					<!-- End Responsive Toggle Button -->

					<!-- Logo -->
					<a href="/" class="navbar-brand d-flex">
						<img src="/assets/images/logo-small-hq.png" alt="${i18n['site-title']}" height="64" width="240"/>
					</a>
					<!-- End Logo -->

					<!-- Navigation -->
					<div class="collapse navbar-collapse align-items-center flex-sm-row g-pt-10 g-pt-5--lg g-mr-40--lg" id="navBar">
						<ul class="navbar-nav text-uppercase g-pos-rel g-font-weight-600 ml-auto">
							<#foreach page in site.pages>
								<li class="nav-item g-mx-10--lg g-mx-15--xl">
									<a href="${page.friendlyUrl}" class="nav-link g-py-7 g-px-0">${page.name}</a>
								</li>
							</#foreach>
						</ul>
					</div>

					<div class="d-inline-block g-hidden-md-down g-pos-rel g-valign-middle g-pl-30 g-pl-0--lg">
						<a class="btn u-btn-outline-primary text-uppercase g-py-10 g-px-15 g-font-size-13" href="#appointment-modal" data-modal-target="#appointment-modal" data-modal-effect="fadein">${appointment.getText("button_label")}</a>
					</div>
				</div>
			</nav>
		</div>
	</header>

	<div class="g-mt-100">
		${inserts.contents}
	</div>

	<section id="above-footer" class="g-bg-primary g-color-white g-pa-30" data-c3s-id="${appointment.id}">
		<div class="d-md-flex justify-content-md-center text-center">
			<div class="align-self-md-center">
				<p class="lead g-font-weight-400 g-mr-20--md g-mb-15 g-mb-0--md">${appointment.getText("footer_text")}</p>
			</div>
			<div class="align-self-md-center">
				<a class="btn btn-lg u-btn-white text-uppercase g-font-weight-600 g-font-size-13" href="#appointment-modal" data-modal-target="#appointment-modal" data-modal-effect="fadein">${appointment.getText("button_label")}</a>
			</div>
		</div>
	</section>

	<footer class="g-bg-gray-dark-v1 g-color-white-opacity-0_8 g-py-20">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center text-md-left g-mb-10 g-mb-0--md">
					<small class="g-font-size-default">&copy; ${.now?string('yyyy')} Web Factor</small>
				</div>
			</div>
		</div>
	</footer>
</main>

<div id="appointment-modal" class="text-left g-max-width-600 g-bg-white g-overflow-y-auto g-pa-20 g-rounded-10" style="display: none;">
	<button type="button" class="close" onclick="Custombox.modal.close();">
		<i class="hs-icon hs-icon-close"></i>
	</button>
	<h4 class="g-mb-20">${appointment.getText("button_label")}</h4>
	${appointment.getRichText("introduction").html}
	<a href="${appointment.getText("url")}" target="_blank" class="btn u-btn-primary u-shadow-v21 g-font-size-12 text-uppercase g-font-weight-600 g-rounded-50 g-py-15 g-px-25 g-mr-15 g-mb-20">
		<i class="icon-calendar g-pos-rel g-top-1 g-mr-5"></i> ${appointment.getText("button_label")}
	</a>
	<div data-c3s-id="${appointment.id}">${appointment.getRichText("disclaimer").html}</div>
</div>

<!-- JS Global Compulsory -->
<script src="/assets/vendor/jquery/jquery.min.js"></script>
<script src="/assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
<script src="/assets/vendor/popper.js/popper.min.js"></script>
<script src="/assets/vendor/bootstrap/bootstrap.min.js"></script>

<!-- JS Implementing Plugins -->
<script src="/assets/vendor/custombox/custombox.min.js"></script>

<!-- JS Unify -->
<script src="/assets/js/hs.core.js"></script>
<script src="/assets/js/helpers/hs.hamburgers.js"></script>
<script src="/assets/js/components/hs.header.js"></script>
<script src="/assets/js/components/hs.tabs.js"></script>
<script src="/assets/js/components/hs.modal-window.js"></script>

<!-- JS Customization -->
<script src="/assets/js/custom.js"></script>

<!-- JS Plugins Init. -->
<script>
	$(document).on('ready', function () {
		// initialization of tabs
		$.HSCore.components.HSTabs.init('[role="tablist"]');

		$('.carousel').carousel({
			interval: 5000
		});

		$.HSCore.components.HSModalWindow.init('[data-modal-target]');
	});

	$(window).on('load', function () {
		$.HSCore.components.HSHeader.init($('#js-header'));
		$.HSCore.helpers.HSHamburgers.init('.hamburger');
	});

	$(window).on('resize', function () {
		setTimeout(function () {
			$.HSCore.components.HSTabs.init('[role="tablist"]');
		}, 200);
	});
</script>
</body>
</html>