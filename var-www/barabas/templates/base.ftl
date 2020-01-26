<!DOCTYPE html>
<html lang="nl">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="${site.name}">
	<meta name="author" content="Web Factor">
	<meta name="robots" content="noindex">

	<link rel="icon" href="/assets/img/favicon.png">

	<title>${site.name}</title>

	<link href="//fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Wire+One" rel="stylesheet">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="//stackpath.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
				m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', 'UA-56703465-1', 'auto');
		ga('send', 'pageview');
	</script>
	<link href="/assets/css/style.css" rel="stylesheet">
</head>

<body>

<div class="barabas container">
	<div class="row">
		<div class="col-md-4 sidebar">
			<div class="row">
				<div id="logo-wrapper" class="col-sm-4 col-md-12">
					<div id="logo">
						<a href="/">
							<img src="/assets/img/logo-alpha.png" alt="barabas" class="shadowed img-responsive hidden-xs"/>
							<img src="/assets/img/barabas-logo-full.png" alt="barabas" class="img-responsive visible-xs"/>
						</a>
					</div>
				</div>
				<div class="col-sm-8 col-md-12">
					<nav>
						<ul class="nav nav-pills nav-stacked">
							<li class="hidden-xs <#if (request.page.friendlyUrl!"") == "home">active</#if>"><a href="/home"><i class="fa fa-home fa-fw"></i> Home</a></li>
							<li class="<#if (request.page.friendlyUrl!"") == "tapas">active</#if>"><a href="/tapas"><i class="fa fa-cutlery fa-fw"></i> Tapas</a></li>
							<li class="<#if (request.page.friendlyUrl!"") == "drinks">active</#if>"><a href="/drinks"><i class="fa fa-glass fa-fw"></i> Drinks</a></li>
							<li class="<#if (request.page.friendlyUrl!"") == "contact">active</#if>"><a href="/contact"><i class="fa fa-location-arrow fa-fw"></i> Contact</a></li>
							<li><a href="https://www.facebook.com/pages/Barabas/271563499634637" target="_blank"><i class="fa fa-facebook-square fa-fw"></i> Like us!</a></li>
							<li class="<#if (request.page.friendlyUrl!"") == "jobs">active</#if>"><a href="/jobs"><i class="fa fa-briefcase fa-fw"></i> Jobs</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="col-md-8">
			${inserts.body}
		</div>
	</div>
	<div class="row">
		<footer>
			<ul>
				<li>Barabas</li>
				<li>Korenstraat 4 bus 1, 3740 Bilzen</li>
				<li><a href="tel:+3289236950">T 089/23 69 50</a></li>
				<li><a href="mailto:info@barabas-bilzen.be">info@barabas-bilzen.be</a></li>
				<li>BE 0638 939 097</li>
				<li>Ontwikkeld door <a href="http://www.web-factor.be" target="_blank">Web Factor</a></li>
			</ul>
		</footer>
	</div>
</div>
<svg height="0">
	<filter id="drop-shadow">
		<feGaussianBlur in="SourceAlpha" stdDeviation="4"/>
		<feOffset dx="5" dy="5" result="offsetblur"/>
		<feFlood flood-color="rgba(50,50,50,0.5)"/>
		<feComposite in2="offsetblur" operator="in"/>
		<feMerge>
			<feMergeNode/>
			<feMergeNode in="SourceGraphic"/>
		</feMerge>
	</filter>
</svg>
<script src="//code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>