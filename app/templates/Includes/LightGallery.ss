    <div class="row">        	
        <div class="small-12 medium-12 large-12 columns">
            
            <% if $GalleryCount > 2 %>
            <div class="featured-image-items" id="lightgallery">        
                <% loop $EarliestGalleryImages %>
                    <figure>       
                    <% if $First %>
                    <a rel="lg-gallery" data-index="$Index($Pos)" href="$Image.URL" title="My Caption" class="lightbox-item featured-item">      		       	                    
                        $Image.CroppedImage(735,465)
                    </a>                           
                    <% else %>
                    <a rel="lg-gallery" data-index="$Index($Pos)" href="$Image.URL" title="My Caption" class="lightbox-item">      		       	                    
                        $Image.CroppedImage(360,230)
                    </a>                                               
                    <% end_if %>
                    </figure>       
                <% end_loop %>
            </div>              
            <% else %>    
            <div class="featured-single-image">                     
                <figure>                    
                    <a rel="lg-gallery" data-index="0" href="$FeaturedImage.URL" title="My Caption" class="lightbox-item">                    		       	                    
                        $FeaturedImage.CroppedImage(735,465)
                    </a>       
                </figure>
            </div>              
            <% end_if %>
        </div>
     </div>      
    <script>
    var gallery;
    gallery = [
                <% if $GalleryImages %>
                    <% loop $GalleryImages %>
                {
                    "src": '{$Image.URL}',
                    'thumb': '$Image.CroppedImage(360,230).URL',
                    'subHtml': '<h4>$Title</h4>'
                }                    
                    <% if not $Last %>,<% end_if %> 
                    <% end_loop %>
                <% else %>    
                {
                    "src": '{$FeaturedImage.URL}',
                    'thumb': '$FeaturedImage.CroppedImage(360,230).URL',
                    'subHtml': '<h4>$Top.Title</h4>'
                }
                <% end_if %>                
                ];
    </script>    

