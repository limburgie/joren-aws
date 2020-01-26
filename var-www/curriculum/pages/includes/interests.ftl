<section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="<@urlify "interests"/>">
	<div class="w-100">
		<h2 class="mb-5">${i18n['interests']}</h2>
		${api.query("interests").findOne().getRichText("interests").html}
	</div>
</section>