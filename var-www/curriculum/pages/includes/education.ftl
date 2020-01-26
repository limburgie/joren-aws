<section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="<@urlify "education"/>">
	<div class="w-100">
		<h2 class="mb-5">${i18n['education']}</h2>

		<#assign education = api.query("education").findOne()>
		<#list education.getGroup("education") as item>
			<div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
				<div class="resume-content">
					<h3 class="mb-0">${item.getText("institution")}</h3>
					<div class="subheading mb-3">${item.getText("diploma")}</div>
					<#if item.getRichText("description")??>
						<div>${item.getRichText("description").html}</div>
					</#if>
				</div>
				<div class="resume-date text-md-right">
					<span class="text-primary">${item.getText("period")}</span>
				</div>
			</div>
		</#list>
	</div>
</section>