<#assign about = api.query("about").findOne()>

<section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="<@urlify "about"/>" data-c3s-id="${about.id}">
	<div class="w-100">
		<img class="img-fluid img-profile rounded-circle mb-5 d-none d-print-inline-block" src="${api.query("about").findOne().getImage("picture").url}" alt="Peter Mesotten">
		<h1 class="mb-0">
			<span class="text-primary">Peter</span> Mesotten
		</h1>
		<div class="subheading mb-5">${about.getRichText("contact_details").html}</div>

		<div id="introduction">
			${about.getRichText("introduction").html}
		</div>

		<div class="social-icons">
			<#list about.getGroup("social_links") as item>
				<a target="_blank" href="${item.getText("url")}">
					<i class="fab fa-${item.getText("icon")}"></i>
				</a>
			</#list>
		</div>
	</div>
</section>