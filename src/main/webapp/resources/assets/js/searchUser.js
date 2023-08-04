$(document).ready(function () {
	  $(".trigger").on("click", function () {
	    $(".modal-wrapper").toggleClass("open");
	    $(".page-wrapper").toggleClass("blur-it");
	    return false;
	  });
	}); 


$(document).ready(function() {
    $("#searchBox2")
        .keyup(function() {
            var keyword = $(this).val();
            performSearch(keyword);
        });
});

function performSearch(keyword) {
    $.ajax({
        url: "/controller/boayou/searchId",
        dataType: "json",
        data: { "user_id": keyword },
        success: function(data) {
            displaySearchResults(data);
        }
    });
}

var searchTimeout; 

$("#searchBox2").keyup(function() {
    clearTimeout(searchTimeout); 
    var keyword = $(this).val();
    searchTimeout = setTimeout(function() {
        performSearch(keyword); 
    }, 100);
});
function displaySearchResults(data) {
    var searchResults2 = $("#searchResults2");
    var searchBox2Value = $("#searchBox2").val().trim();

    if (searchBox2Value.length === 0) {
       
        searchResults2.empty();
    } else {
        console.log("Received data:", data);
        searchResults2.empty();

        data.forEach(function(user_id) {
            searchResults2.append(
            '<li>' + user_id + '</li>'
            ); 
        });
    }
}
$(document).ready(function() {
    $("#searchResults2").on("click", "li", function() {
        var clickedValue = $(this).text(); 
        $("#searchBox2").val(clickedValue); 
    });
});