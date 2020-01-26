<#assign therapist = api.query("therapist").findOne()>

<section class="container g-pt-100 g-pb-40">
	<figure class="row" data-c3s-id="${therapist.id}">
		<!-- Figure Image -->
		<div class="col-md-8 offset-md-2 col-lg-4 offset-lg-0 g-mb-50 align-self-center">
			<img class="w-100" src="${therapist.getImage("picture").url}" alt="${therapist.getImage("picture").alt}">
		</div>
		<!-- End Figure Image -->

		<!-- Figure Body -->
		<div class="col-lg-7 offset-lg-1">
			<div class="d-flex justify-content-between g-mb-10">
				<div class="g-mb-20">
					<h4 class="h5 g-mb-5">${therapist.getText("name")}</h4>
					<em class="d-block g-font-style-normal g-font-size-default text-uppercase g-color-primary">${therapist.getText("subtitle")}</em>
				</div>
			</div>

			<!-- Figure Info -->
			<div class="g-mb-50">

				<ul class="list-unstyled g-font-size-normal mb-0">
					<#foreach spec in therapist.getGroup("specializations")>
						<li class="mb-3">
							<i class="d-inline-block g-color-primary mr-2 fa fa-check"></i>
							${spec.getText("specialization")}
						</li>
					</#foreach>
				</ul>
			</div>
		</div>
	</figure>
</section>