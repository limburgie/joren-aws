<#assign contact = api.query("contact").findOne()>
<#assign appointment = api.query("appointment").findOne()>

<section class="g-py-100">
	<div class="container">
		<div class="row" data-c3s-id="${contact.id}">
			<div class="col-md-5 align-self-center mb-5 mb-md-0">
				<header class="u-heading-v2-3--bottom g-brd-primary g-mb-30">
					<h2 class="h4 u-heading-v2__title g-color-gray-dark-v2 g-font-weight-700 text-uppercase">${contact.getText("title")}</h2>
				</header>
				<ul class="list-unstyled mb-0">
					<li class="g-my-30">
						<div class="media">
							<i class="d-flex g-color-primary g-font-size-20 mt-1 mr-4 icon-hotel-restaurant-235 u-line-icon-pro"></i>
							<div class="media-body">
								${contact.getRichText("location").html}
							</div>
						</div>
					</li>
					<li class="g-my-30">
						<div class="media">
							<i class="d-flex g-color-primary g-font-size-20 mt-1 mr-4 icon-communication-062 u-line-icon-pro"></i>
							<div class="media-body">
								${contact.getText("email_address")}
							</div>
						</div>
					</li>
					<li class="g-my-30">
						<div class="media">
							<i class="d-flex g-color-primary g-font-size-20 mt-1 mr-4 icon-communication-033 u-line-icon-pro"></i>
							<div class="media-body">
								${contact.getText("telephone_number")}
							</div>
						</div>
					</li>
				</ul>
				<a href="#appointment-modal" data-modal-target="#appointment-modal" data-modal-effect="fadein" class="btn u-btn-primary u-shadow-v21 g-font-size-12 text-uppercase g-font-weight-600 g-rounded-50 g-py-15 g-px-25 g-mr-15 g-mb-10 g-mb-0--sm">
					<i class="icon-calendar g-pos-rel g-top-1 g-mr-5"></i> ${appointment.getText("button_label")}
				</a>
			</div>
			<div class="col-md-6 offset-md-1">
				<iframe src="${contact.getText("google_maps_url")}" width="100%" height="${contact.getNumber("map_height").format("0")}" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
			</div>
		</div>
	</div>
</section>