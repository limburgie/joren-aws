<#assign therapy = api.query("therapy").findOne()>
<#assign appointment = api.query("appointment").findOne()>

<#foreach spec in therapy.getGroup("specializations")>
	<#assign odd = (spec?counter % 2 != 0)>
	<section class="g-py-100 ${odd?then('', 'g-bg-primary g-color-white')}">
		<div class="container">
			<div class="row">
				<div class="col-md-6 align-self-center g-mb-50--md g-mb-0--md ${odd?then('', 'order-1')}">
					<div class="u-heading-v2-3--bottom ${odd?then('g-brd-primary', 'g-brd-white')} g-mb-30">
						<h2 class="h4 u-heading-v2__title ${odd?then('g-color-gray-dark-v2', '')} text-uppercase g-font-weight-700">${spec.getText("specialization")}</h2>
					</div>

					<div class="g-line-height-2 g-mb-30" data-c3s-id="${therapy.id}">
						${spec.getRichText("description").html}
					</div>

					<a href="#appointment-modal" data-modal-target="#appointment-modal" data-modal-effect="fadein" class="btn ${odd?then('u-btn-primary', 'g-bg-white-opacity-0_2 g-color-white g-brd-white--hover g-color-primary--hover g-bg-white--hover')} u-shadow-v21 g-font-size-12 text-uppercase g-font-weight-600 g-rounded-50 g-py-15 g-px-25 g-mr-15 g-mb-10 g-mb-0--sm">
						<i class="icon-calendar g-pos-rel g-top-1 g-mr-5"></i> ${appointment.getText("button_label")}
					</a>
				</div>

				<div class="col-md-6 align-self-center text-center g-overflow-hidden">
					<img class="img-fluid w-75 fadeInUp u-in-viewport d-none d-md-inline" src="${spec.getImage("picture").url}" alt="${spec.getText("specialization")}" data-animation="fadeInUp" data-animation-delay="0" data-animation-duration="1000" style="animation-duration: 1000ms;">
				</div>
			</div>
		</div>
	</section>
</#foreach>