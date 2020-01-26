<!DOCTYPE html>
<html lang="${request.locale.language}">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="${i18n['cv-of-peter-mesotten']}">
	<meta name="author" content="Peter Mesotten">

	<title>${i18n['cv-of-peter-mesotten']}</title>

	<link href="/assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
	<link href="/assets/css/fontawesome-all.min.css" rel="stylesheet">
	<link href="/assets/css/resume.css" rel="stylesheet">
</head>

<body id="page-top">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
	<a class="navbar-brand js-scroll-trigger" href="#page-top">
		<span class="d-block d-lg-none">Peter Mesotten</span>
		<span class="d-none d-lg-block">
        <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="${api.query("about").findOne().getImage("picture").url}" alt="Peter Mesotten">
      </span>
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link js-scroll-trigger" href="#<@urlify "about"/>">${i18n['about']}</a>
			</li>
			<li class="nav-item">
				<a class="nav-link js-scroll-trigger" href="#<@urlify "experience"/>">${i18n['experience']}</a>
			</li>
			<li class="nav-item">
				<a class="nav-link js-scroll-trigger" href="#<@urlify "education"/>">${i18n['education']}</a>
			</li>
			<li class="nav-item">
				<a class="nav-link js-scroll-trigger" href="#<@urlify "skills"/>">${i18n['skills']}</a>
			</li>
			<li class="nav-item">
				<a class="nav-link js-scroll-trigger" href="#<@urlify "interests"/>">${i18n['interests']}</a>
			</li>
			<li class="nav-item">
				<a class="nav-link js-scroll-trigger" href="#<@urlify "conference-talks"/>">${i18n['conference-talks']}</a>
			</li>
			<li class="nav-item">
				<a class="nav-link js-scroll-trigger" href="#<@urlify "certifications"/>">${i18n['certifications']}</a>
			</li>
			<li class="nav-item">
				<#assign langLabel = (request.locale.language == 'nl')?then('EN', 'NL')/>
				<#assign langUrl = (request.locale.language == 'nl')?then('en_GB', 'nl_BE')/>
				<a class="nav-link" href="/lang/${langUrl}">[${langLabel}]</a>
			</li>
		</ul>
	</div>
</nav>

<div class="container-fluid p-0">
	<#include "/pages/includes/about.ftl">

	<hr class="m-0">

	<#include "/pages/includes/experience.ftl">

	<hr class="m-0">

	<#include "/pages/includes/education.ftl">

	<hr class="m-0">

	<#include "/pages/includes/skills.ftl">

	<hr class="m-0">

	<#include "/pages/includes/interests.ftl">

	<hr class="m-0">

	<#include "/pages/includes/conference-talks.ftl">

	<hr class="m-0">

	<#include "/pages/includes/certifications.ftl">
</div>

<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/js/bootstrap.bundle.min.js"></script>
<script src="/assets/js/jquery.easing.min.js"></script>
<script src="/assets/js/resume.js"></script>

</body>

</html>

<#macro urlify title>${i18n[title]?lower_case?replace(" ", "-")}</#macro>