<section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="<@urlify "certifications"/>">
	<div class="w-100">
		<h2 class="mb-5">${i18n['certifications']}</h2>

		<#assign certifications = api.query("certifications").findOne()>
		<#list certifications.getGroup("certifications") as item>
			<div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
				<div class="resume-content">
					<div class="subheading mb-3">${item.getText("certificate")}</div>
					<div>
						<a target="_blank" href="${item.getText("url")}">${i18n["verify"]}</a> (${i18n["code"]}: ${item.getText("verification_code")})
					</div>
				</div>
				<div class="resume-date text-md-right">
					<span class="text-primary">${item.getText("year")}</span>
				</div>
			</div>
		</#list>
	</div>
</section>