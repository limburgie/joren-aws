<!DOCTYPE html>
<!--[if IE 8]>
<html lang="en" class="ie8">
<![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9">
<![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<title>INR Diary</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="INR Diary">
	<meta name="author" content="Peter Mesotten">
	<link rel="shortcut icon" type="image/png" href="../assets/images/logo/logo.png">
	<link href="//fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel='stylesheet' type='text/css'>
	<link href="//fonts.googleapis.com/css?family=Covered+By+Your+Grace" rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/assets/plugins/font-awesome/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="/assets/plugins/flexslider/flexslider.css">
	<link rel="stylesheet" href="/assets/plugins/animate-css/animate.min.css">
	<link id="theme-style" rel="stylesheet" href="/assets/css/styles.css">
	<!--[if lt IE 9]>
	<script src="//oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="//oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body data-spy="scroll">

<header id="top" class="header navbar-fixed-top">
	<div class="container">
		<h1 class="logo pull-left">
			<a class="scrollto" href="template.ftl#promo">
				<img id="logo-image" class="logo-image" src="../assets/images/logo/logo.png" alt="Logo">
				<span class="logo-title">INR Diary</span>
			</a>
		</h1>
		<nav id="main-nav" class="main-nav navbar-right" role="navigation">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse" id="navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active nav-item sr-only"><a class="scrollto" href="#promo">Home</a></li>
					<li class="nav-item"><a class="scrollto" href="#features">Features</a></li>
					<li class="nav-item"><a class="scrollto" href="#story">Story</a></li>
					<li class="nav-item"><a class="scrollto" href="#testimonials">Testimonials</a></li>
					<li class="nav-item last"><a class="scrollto" href="#contact">Contact</a></li>
				</ul>
			</div>
		</nav>
	</div>
</header>

<section id="promo" class="promo section offset-header has-pattern">
	<div class="container">
		<div class="row">
			<#assign promo = api.query("promo").findOne()>
			<div class="overview col-md-8 col-sm-12 col-xs-12">
				<h2 class="title">${promo.getText("title")}</h2>
				<ul class="summary">
					<#list promo.getGroup("highlights") as highlight>
						<li>${highlight.getText("highlight")}</li>
					</#list>
				</ul>
				<div class="download-area">
					<ul class="btn-group list-inline">
						<li class="android-btn">
							<a href="https://play.google.com/store/apps/details?id=be.webfactor.inrdiary" target="_blank">
								Get it from Google Play
							</a>
						</li>
					</ul>
				</div>
			</div>

			<#assign screenshotList = api.query("screenshot_overview").findOne()>
			<div class="phone android android-black col-md-4 col-sm-12 col-xs-12 ">
				<div class="android-holder phone-holder">
					<div class="android-holder-inner">
						<div class="slider flexslider">
							<ul class="slides">
								<#list screenshotList.getGroup("screenshots") as screenshot>
									<li><img src="${screenshot.getImage("screenshot").url}" alt="${screenshot.getImage("screenshot").alt}"/></li>
								</#list>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<#assign features = api.query("feature").orderByAsc("weight").findAll()>
<section id="features" class="features section">
	<div class="container">
		<div class="row">
			<h2 class="title text-center sr-only">Features</h2>
			<#list features as feature>
				<div class="item col-md-3 col-sm-6 col-xs-12 text-center">
					<div class="icon">
						<i class="fa fa-${feature.getText("icon_id")}"></i>
					</div>
					<div class="content">
						<h3 class="title">${feature.getText("title")}</h3>
						<p>${feature.getText("description")}</p>
					</div>
				</div>
			</#list>
		</div>
	</div>
</section>

<section id="story" class="story section has-pattern">
	<div class="container">
		<div class="row">
			<#assign story = api.query("story").findOne()>
			<div class="content col-md-6 col-sm-6 col-xs-12 text-center">
				<h2 class="title">${story.getText("title")}</h2>
				<#list story.getGroup("paragraphs") as paragraph>
					<p>${paragraph.getText("paragraph")}</p>
				</#list>
			</div>

			<#assign team = api.query("team").findOne()>
			<div class="team col-md-5 col-sm-5 col-md-offset-1 col-sm-offset-1 col-xs-12">
				<div class="row">
					<#list team.getGroup("members") as member>
						<div class="member col-md-6 text-center">
							<img class="img-circle" src="${member.getImage("picture").url}" alt="${member.getImage("picture").alt}"/>
							<p class="name">${member.getText("name")}</p>
							<p class="title">${member.getText("role")}</p>
							<ul class="connect list-inline">
								<#if member.getText("twitter_handle")?has_content>
									<li><a href="https://www.twitter.com/${member.getText("twitter_handle")}" target="_blank"><i class="fab fa-twitter"></i></a></li>
								</#if>
								<#if member.getText("linkedin_account")?has_content>
									<li><a href="https://be.linkedin.com/in/${member.getText("linkedin_account")}" target="_blank"><i class="fab fa-linkedin"></i></a></li>
								</#if>
								<#if member.getText("github_account")?has_content>
									<li><a href="https://github.com/${member.getText("github_account")}" target="_blank"><i class="fab fa-github"></i></a></li>
								</#if>
								<li class="row-end"><a href="mailto:${member.getText("email_address")}" target="_blank"><i class="fa fa-envelope"></i></a></li>
							</ul>
						</div>
					</#list>
				</div>
			</div>
		</div>
	</div>
</section>

<#assign testimonials = api.query("testimonial").findRandom(12)>

<section id="testimonials" class="testimonials section">
	<div class="container">
		<div class="row">
			<h2 class="title text-center">What do people think?</h2>
			<#list testimonials as testimonial>
				<div class="item col-md-4 col-sm-4">
					<div class="quote-box">
						<i class="fa fa-quote-left"></i>
						<blockquote class="quote">
							${testimonial.getText("testimonial")}
						</blockquote>
					</div>
					<div class="people row">
						<img class="img-circle user-pic col-md-5 col-sm-5 col-xs-12 col-md-offset-1 col-sm-offset-1" src="${testimonial.getImage("picture").url}"/>
						<p class="details pull-left">
							<span class="name">${testimonial.getText("name")}</span>
							<span class="title">${testimonial.getText("country")}</span>
						</p>
					</div>
				</div>
			</#list>
		</div>
	</div>
</section>

<section id="contact" class="contact section has-pattern">
	<div class="container">
		<div class="row text-center">
			<h2 class="title">Contact us</h2>
			<div class="intro col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
				<p>We’d love to hear from you. Please let us know if you have any questions or feedback.</p>
				<ul class="list-unstyled contact-details">
					<li><i class="fa fa-envelope"></i><a href="mailto:peter@inrdiary.com" target="_blank">peter@inrdiary.com</a></li>
				</ul>
			</div>
		</div>
		<div class="row text-center">
			<div class="contact-form col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
				<form class="form" action="mailto:peter@inrdiary.com" target="_top">
					<div class="form-group message">
						<label class="sr-only" for="message">Message</label>
						<textarea id="message" name="body" class="form-control" rows="6" placeholder="Message:"></textarea>
					</div>
					<input type="hidden" name="subject" value="INR Diary feedback"/>
					<input type="hidden" name="su" value="INR Diary feedback"/>
					<button type="submit" class="btn btn-lg btn-theme">Send Message</button>
				</form>
			</div>
		</div>
		<div class="text-center">
			<ul class="social-icons list-inline">
				<li><a href="https://www.twitter.com/inrdiary" target="_blank"><i class="fab fa-twitter"></i></a></li>
				<li><a href="https://www.facebook.com/inrdiary" target="_blank"><i class="fab fa-facebook"></i></a></li>
			</ul>
		</div>
	</div>
</section>

<footer class="footer">
	<div class="container">
		<small class="copyright pull-left">Copyright &copy; ${.now?string('yyyy')} INR Diary</small>
	</div>
</footer>

<script type="text/javascript" src="/assets/plugins/jquery-1.12.3.min.js"></script>
<script type="text/javascript" src="/assets/plugins/isMobile/isMobile.min.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery-inview/jquery.inview.min.js"></script>
<script type="text/javascript" src="/assets/plugins/FitVids/jquery.fitvids.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery-scrollTo/jquery.scrollTo.min.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery-placeholder/jquery.placeholder.js"></script>
<script type="text/javascript" src="/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="/assets/plugins/jquery-match-height/jquery.matchHeight-min.js"></script>
<script type="text/javascript" src="/assets/js/main.js"></script>
<!--[if !IE]>-->
<script type="text/javascript" src="/assets/js/animations.js"></script>
<!--<![endif]-->

</body>
</html>