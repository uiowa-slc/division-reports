
<h3 class="" id="RelatedStoriesSection">Related Stories</h3>

<% loop $Sections %>
<div class="container">
		<div class="row">
			<% loop Stories.limit(3) %>
				<div class="col">
					<p>$Title</p>
				</div>
			<% end_loop %>
		</div>
	</div>
<% end_loop %>


<% if $RelatedStories %>
<section class="relatedstories" aria-labelledby="RelatedStoriesSection">
	<div class="container">
		<div class="row">
			<div class="col">
				<div class="tilter-container">
					<% loop $RelatedStories.limit(2) %>
						<a href="$Link" class="tilter tilter--1 tilter--scale">
							<div class="tilter__figure">
								<div style="background: #fff">
									<div class="tilter__image-container">
										<img class="tilter__image" src="$FeaturedImage.CroppedFocusedImage(550,350).URL" <% if $FeaturedImageCaption %>alt="$FeaturedImageCaption" <% else %>alt="$Title"<% end_if %> />
										<div class="tilter__deco tilter__deco--shine"><div></div></div>
									</div>

									<div class="tilter__caption">
										<h3 class="tilter__title">$Title</h3>
										<div class="story-card-medium__summary">
											<% if $Summary %>
												<p>$Summary.NoHTML.LimitCharacters(120)</p>
											<% else %>
												<p>$Content.NoHTML.LimitCharacters(120)</p>
											<% end_if %>
										</div>
									</div>
								</div>
							</div>
							<span class="be tilter__deco--lines">
								<% if $Sections %>
									<span class="section-tag tilter__description" href="$Sections.First.Link">$Sections.First.Title</span>
								<% end_if %>
							</span>
						</a>
					<% end_loop %>
				</div>
			</div>
		</div>
	</div>
</section>
<% end_if %>