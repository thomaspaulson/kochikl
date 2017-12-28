    <% include Breadcrumb %>
    <div class="searchform-wrapper">
        <div class="row">
            <div class="small-12 medium-12 large-12 columns">
            <h6 class="search-title hide-for-large">Search Accommodation<i class="down"></i></h6>
                <div class="searchform-expandable">
                 $Form   
                </div> <!-- div class="searchform-expandable hide-for-small-only" -->
            </div>
        </div>            
    </div>	<!-- div class="searchform-wrapper" -->

    <div class="heading-bar">
        <div class="row">
            <div class="small-12 medium-8 large-8 medium-centered large-centered columns">
            	<h1>$Title</h1>                
                <p>The British & Irish Lions are coming to Wellington for two not-to-be-missed matches against the Hurricanes and the All Blacks!</p>
                <div class="menu-centered">
                    <ul class="menu">
                        <li><a href="#enquiry_form" class="button contact_enquiry">Book now</a></li>
                        <li><a href="#" class="link">Add to itenary</a></li>
                    </ul>
                </div>
            </div>
	</div>            
    </div>
    
    <% include LightGallery Top=$Top %>
    
    <div class="main">
        <div class="row">
            <div class="small-12 medium-9 large-8 columns main-content">
                $Content
            </div><!--div class="small-12 medium-9 large-8 columns main-content"-->
            <div class="small-12 medium-3 large-4 columns side-content">            	
                $RightContent
            </div>
        </div>            
    </div>	<!-- div class="main" -->
    <a name="enquiry_form"></a>
    <div class="row" id="enquiry_form">
    	<div class="small-12 large-12 columns">
        <h3>Enquiry form</h3>
        <form>
          <div class="row">
            <div class="medium-4 columns">
              <label>Name
                <input type="text" placeholder=".medium-6.columns">
              </label>
            </div>
            <div class="medium-4 columns">
              <label>Email
                <input type="text" placeholder=".medium-6.columns">
              </label>
            </div>
            <div class="medium-4 columns">
              <label>Location
                <input type="text" placeholder=".medium-6.columns">
              </label>
            </div>            
          </div>
          <div class="row">
            <div class="medium-4 columns">
              <label>Check-in date
                <input type="text" placeholder=".medium-6.columns">
              </label>
            </div>
            <div class="medium-4 columns">
              <label>No of nights
                <input type="text" placeholder=".medium-6.columns">
              </label>
            </div>
            <div class="medium-4 columns">
            <label>
             Message?
              <textarea placeholder="None"></textarea>
            </label>            </div>            
          </div>
          <div class="row">
            <div class="medium-12 columns">
            	<input class="button"   type="submit" value="Send">
            </div>
          </div>            
        </form>     
        
    	</div>
    </div>    <!-- div class="main" -->                 