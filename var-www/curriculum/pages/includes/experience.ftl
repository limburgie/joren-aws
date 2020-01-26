<section class="resume-section p-3 p-lg-5 d-flex justify-content-center" id="<@urlify "experience"/>">
	<div class="w-100">
		<h2 class="mb-5">${i18n['experience']}</h2>

		<#assign experience = api.query("experience").findOne()>

		<#list experience.getGroup("experience") as item>
			<div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
				<div class="resume-content">
					<h3 class="mb-0">${item.getText("role")}</h3>
					<div class="subheading mb-3">${item.getText("company")}</div>

					${item.getRichText("description").html}
				</div>
				<div class="resume-date text-md-right">
					<span class="text-primary">${item.getText("period")}</span>
				</div>
			</div>
		</#list>
	</div>
</section>