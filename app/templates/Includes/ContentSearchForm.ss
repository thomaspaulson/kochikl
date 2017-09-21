<form $FormAttributes>
   <div class="row">
        <fieldset class="large-10 columns">
        <div class="row">
            <div class="small-12 large-4 columns">
                $Fields.dataFieldByName(Location).FieldHolder
            </div>
            <div class="small-12 large-4 columns">
                $Fields.dataFieldByName(Type).FieldHolder
            </div>
            <div class="small-12 large-4 columns">
                $Fields.dataFieldByName(q).FieldHolder
            </div>
        </fieldset>
        <div class="small-12 large-2 columns">
            <div class="Actions">
            <% loop $Actions %>$addExtraClass('button expanded')	<% end_loop %>
            </div>
        </div>
   </div>
</form>