<div class="story-card-large">
	<a class="story-card-large__link" href="$Link">
		<div class="row">
			<div class="col-md-5">
				<% if $FeaturedImage %>
					<img class="story-card-large__image" src="$FeaturedImage.URL" alt="" role="presentation" />
				<% end_if %>
			</div>
			<div class="col-md-7">
				<% if $Sections %>
					<span class="section-tag" href="$Sections.First.Link">$Sections.First.Title</span>
				<% end_if %>
				<h3>$Title</h3>
				<div class="story-card-large__content">
					$Content.NoHTML.LimitCharacters(100)
				</div>
				<p><span class="read-more">Read more &rarr;</span></p>
			</div>
		</div>
	</a>
</div>