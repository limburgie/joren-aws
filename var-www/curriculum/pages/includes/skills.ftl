<section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="<@urlify "skills"/>">
	<div class="w-100">
		<h2 class="mb-5">${i18n['skills']}</h2>

		<#assign skills = api.query("skills").findOne()>

		<div class="subheading mb-3">${i18n['platforms']}</div>
		<ul class="fa-ul mb-5">
			<#list skills.getGroup("platforms") as item>
				<li>
					<i class="fa-li fa fa-check"></i> ${item.getText("platform")}
				</li>
			</#list>
		</ul>

		<div class="subheading mb-3">${i18n['frameworks-and-tools']}</div>
		<ul class="fa-ul mb-0">
			<#list skills.getGroup("frameworks_and_tools") as item>
				<li>
					<i class="fa-li fa fa-check"></i> <strong>${item.getText("category")}</strong>: ${item.getText("tools")}
				</li>
			</#list>
		</ul>
	</div>
</section>