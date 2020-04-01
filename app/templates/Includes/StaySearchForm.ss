<form $FormAttributes>
   <div class="row">
        <fieldset class="small-12 medium-10 large-10 columns">
            <div class="row">
                <div class="small-12 medium-3 large-3 columns">
                    $Fields.dataFieldByName(Type).FieldHolder
                </div>
                <div class="small-12 medium-3 large-3 columns">
                    $Fields.dataFieldByName(Price).FieldHolder
                </div>            
                <div class="small-12 medium-3 large-3 columns">
                    $Fields.dataFieldByName(Location).FieldHolder
                </div>                        
                <div class="small-12 medium-3 large-3 columns">
                    $Fields.dataFieldByName(q).FieldHolder
                </div>
            </div>            
        </fieldset>
        <div class="small-12 medium-2 large-2 columns">
            <div class="Actions">
            <% loop $Actions %>
                $addExtraClass('button expanded')	
            <% end_loop %>
            </div>
        </div>
   </div>
</form>