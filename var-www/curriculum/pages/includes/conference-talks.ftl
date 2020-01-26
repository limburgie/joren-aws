<section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="<@urlify "conference-talks"/>">
	<div class="w-100">
		<h2 class="mb-5">${i18n['conference-talks']}</h2>

		<#assign conferences = api.query("conference_talks").findOne()>
		<#list conferences.getGroup("talks") as item>
			<div class="resume-item d-flex flex-column flex-md-row justify-content-between mb-5">
				<div class="resume-content">
					<h3 class="mb-0">${item.getText("talk")}</h3>
					<div class="subheading mb-3">${item.getText("conference")}, ${item.getText("location")}</div>
					<#if item.getText("link")??>
						<div><i class="fab fa-youtube"></i> <a target="_blank" href="${item.getText("link")}">YouTube video</a></div>
					</#if>
				</div>
				<div class="resume-date text-md-right">
					<span class="text-primary">${item.getText("year")}</span>
				</div>
			</div>
		</#list>
	</div>
</section>