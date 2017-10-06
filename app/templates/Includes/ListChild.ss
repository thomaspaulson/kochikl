    <div class="row">
        <% loop $RandomChilds %>
            <div class="large-4 medium-4 columns">
                <div class="article-wrapper">
                    <div class="image-holder">
                        <a title="Read more about '$Title'..." href="$Link">
                            $FeaturedImage.CroppedImage(368,212)
                        </a>
                    </div>
                    <div class="text-holder">
                        <h3><a title="Read more about '$Title'..." href="$Link">$Title</a></h3>
                        <% if $Summary %>$Summary<% else %><p>$Excerpt(20)<p><% end_if %>
                        <div class="readmore $Top.BackgroundClass white-text slide-up">Read more &gt;</div>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div> <!-- div class="row" -->

