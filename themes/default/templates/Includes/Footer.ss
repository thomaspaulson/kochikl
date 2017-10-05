	<div class="footer">
        <div class="footer-primary">    
            <%-- $BlockArea(Footer) --%>
            
            <div class="row small-up-2 medium-up-3 large-up-6">                
                  <div class="column column-block">
                    <h5><a href="plan-your-trip/">Plan trip to kochi</a></h5>
                    <ul>
                        <li><a href="plan-your-trip/getting-here/">Getting here</a></li>
                        <li><a href="plan-your-trip/getting-around/">Getting around</a></li>
                        <li><a href="plan-your-trip/essential-information/faq-frequently-asked-questions/#visa-on-arrival">Visa on arrival</a></li>                        
                        <li><a href="plan-your-trip/maps-and-guides/">Maps & Guide</a></li>                                            
                        <li><a href="plan-your-trip/guided-tours/">Guided tours</a></li>
                    </ul>
                </div>                    
                  <div class="column column-block">
                      <h5><a href="sight-n-activities/">See &amp; do</a></h5>
                    <ul>
                        <li><a href="sight-n-activities/type/active-and-adventure">Active & adventure</a></li>                    
                        <li><a href="sight-n-activities/type/arts%2C-culture-and-heritage">Arts, culture & heritage</a></li>
                        <li><a href="sight-n-activities/type/children-and-families">Children & families</a></li>
                        <li><a href="sight-n-activities/type/guided-tours">Guided tours</a></li>
                        <li><a href="sight-n-activities/type/parks%2C-walks-and-wildlife">Parks, walks & wildlife</a></li>
                    </ul>
                </div>    
                  <div class="column column-block">
                      <h5><a href="#">Events</a></h5>
                    <ul>
                    
                        <li><a href="#">Central Kochi</a></li>
                       	<li><a href="#">West Kochi</a></li>
                        <li><a href="#">East Kochi</a></li>
                        <li><a href="#">North Kochi</a></li>
                        <li><a href="#">South Kochi</a></li>
                    
                    </ul>
                </div>    
                <div class="column column-block">
                    <h5><a href="where-to-stay/">Where to stay</a></h5>
                    <ul>
                        <li><a href="where-to-stay/type/homestay">Homestay</a></li>
                        <li><a href="where-to-stay/type/hotel">Hotel</a></li>                        
                        <li><a href="where-to-stay/type/bed-and-breakfast">Bed & breakfast</a></li>
                        <li><a href="where-to-stay/type/backpackers">Backpackers</a></li>
                        <li><a href="where-to-stay/type/houseboats">Houseboats</a></li>
                    </ul>
                </div>                 
                <div class="column column-block">
                    <h5><a href="plan-your-trip/getting-around/">Getting around</a></h5>
                    <ul>
                        <li><a href="plan-your-trip/getting-around/car-rental-hire/">Car Hire/Rental</a></li>
                        <li><a href="plan-your-trip/getting-around/motorcycle-rental/">Motorcycle Rental</a></li>                        
                        <li><a href="plan-your-trip/guided-tours/day-trips/">Day trips</a></li>
                        <li><a href="plan-your-trip/guided-tours/tours-package/">Tours/Package</a></li>
                        <li><a href="plan-your-trip/guided-tours/cycling-tours-trails/">Cycling tours/trails</a></li>
                    </ul>
                </div>                                 
                  <div class="column column-block">
                      <h5><a href="about/">About us</a></h5>
                    <ul>
                        <li><a href="about/contact-us">Contact us</a></li>                    
                        <li><a href="about/work-with-us">Work with us</a></li>                    
                        <li><a href="about/meet-the-team">Meet the team</a></li>
                        <li><a href="about/get-listed-on-this-website/">List on this website</a></li>
                        <li>
                            <a href="#"><span class="facebook-icon"></span></a>
                            <a href="#"><span class="twitter-icon"></span></a>
                            <a href="#"><span class="linkedin-icon"></span></a>
                        </li>
                    </ul>
                </div>                                            
            </div>       
            
        </div>	<!--div class="footer-primary"--> 

        <div class="footer-secondary"> 
            <div class="row">
                <div class="small-12 medium-8 large-8 columns">
                    <ul>
                    <% loop $MenuSet('FooterSecondary').MenuItems %>
                    <li><a href="$Link" <% if $IsNewWindow %>target="_blank"<% end_if %>>$MenuTitle</a></li>
                    <% end_loop %>            
                    </ul>
                
                </div>                            
                <div class="small-12 medium-4 large-4 columns">
                	<p class="discover">
                        <span class="copyrights_icon"></span>
                        2017 Discover Kochi
                    </p>
                </div>                                            
            </div>       	           
        </div> 	<!--div class="footer-secondary"--> 
	</div><!-- div class="container" -->
