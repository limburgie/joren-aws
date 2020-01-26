<#assign homepage = api.query("homepage").findOne()>

<div>
	<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel" data-c3s-id="${homepage.id}">
		<div class="carousel-inner">
			<#foreach pic in homepage.getGroup("banner_pictures")>
				<div class="carousel-item ${pic?is_first?then('active', '')}">
					<img class="d-block w-100" src="${pic.getImage("banner_picture").url}" alt="${pic.getImage("banner_picture").alt}"/>
				</div>
			</#foreach>
		</div>
	</div>
</div>

<section class="1g-bg-secondary g-py-100">
	<div class="container" data-c3s-id="${homepage.id}">
		<div class="row">
			<div class="col-lg-6 align-self-center g-line-height-2">
				<header class="u-heading-v2-3--bottom g-brd-primary g-mb-30">
					<h2 class="h4 u-heading-v2__title g-color-gray-dark-v2 g-font-weight-700 text-uppercase">${homepage.getText("title")}</h2>
				</header>

				${homepage.getRichText("introduction").html}
			</div>

			<div class="col-lg-5 offset-lg-1 g-bg-img-hero g-pos-rel" style="background-image: url(${homepage.getImage("picture").url});">
				<div class="g-absolute-centered text-center w-100 g-px-40">

				</div>
			</div>
		</div>
	</div>
</section>