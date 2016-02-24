$(document).ready(function(){
  var newSavingsBtn = $("#new-random-savings-btn");

  var updateSavings = function(newSavings){
    var $savingsList = $("#savings-list");

    $savingsList.html(newSavings);
  }

  var appendSavings = function(event) {
    event.preventDefault();

    var request = $.ajax({
      type: "GET",
      url: "/savings/random"
    })

    request.done(updateSavings);
  }

  newSavingsBtn.on("click", appendSavings);
})
