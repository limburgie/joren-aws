<#assign useful_info = api.query("faq").findOne()>

<section class="container g-pb-100">
	<div class="g-my-100">
		<div class="row justify-content-center">
			<div class="col-lg-10">
				<div id="accordion" class="u-accordion u-accordion-color-primary" role="tablist" aria-multiselectable="true" data-c3s-id="${useful_info.id}">
                    <#foreach faq in useful_info.getGroup("faqs")>
						<#assign i = faq?counter + 1>
						<div class="card g-brd-none rounded-0 g-mb-20">
							<div id="accordion-heading-${i}" class="g-brd-bottom g-brd-gray-light-v4 g-pa-0" role="tab">
								<h5 class="mb-0">
									<a class="d-flex justify-content-between g-color-main g-text-underline--none--hover rounded-0 g-px-30 g-py-20 collapsed" href="#accordion-body-${i}"
									   data-toggle="collapse" data-parent="#accordion" aria-expanded="false" aria-controls="accordion-body-${i}">
										${faq.getText("question")}
										<span class="u-accordion__control-icon">
										  <i class="fa fa-angle-down"></i>
										  <i class="fa fa-angle-up"></i>
										</span>
									</a>
								</h5>
							</div>
							<div id="accordion-body-${i}" class="collapse" role="tabpanel" aria-labelledby="accordion-heading-${i}" data-parent="#accordion">
								<div class="u-accordion__body g-color-gray-dark-v4 g-pa-30">
									${faq.getRichText("answer").html}
								</div>
							</div>
						</div>
                    </#foreach>
				</div>
			</div>
		</div>
	</div>
</section>