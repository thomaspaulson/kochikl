    <div class="main-banner">
        <% if $FeaturedImage %>
            $FeaturedImage
        <% else %>    
            <img src="$ThemeDir/images/main-banner.png">
        <% end_if %>
        <div class="text-wrapper"> 
            <h1>$Title</h1>  
            $Summary
        </div>
    </div>    

