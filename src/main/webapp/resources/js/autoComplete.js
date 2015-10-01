/**
 * 
 */
$(document).ready(function() {
   
        $("#tag-search").autocomplete({
            source: function(request, response) {
                $.ajax({
                    url: "/crazy/getTags?tag=" + request.term,
                    type: "POST",
                    data: { term: request.term },

                    dataType: "json",

                    success: function(data) {
                    	response($.map(data, function(v,i){
                    		console.log();
                    	    return {
                    	                label: v.empName,
                    	                value: v.empName
                    	               };
                    	}));
                    }
               });              
            }   
        });

});