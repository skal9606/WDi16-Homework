var start_date;
var start_date_components;
var start_day;
var end_date;
var end_date_components;
var end_day;
var calendar_day;
var cell_id;




//STEP 4
  //Create the calendar for the month
var makeCalendar = function (){
  for (var i = 0; i < 31; i+=1){
      calendar_day = $("<div>").text(i+1);
      calendar_day.css("border", "1px solid black");
      calendar_day.css("height", "60px");
      calendar_day.css("width", "60px");
      calendar_day.attr("id", i+1);
      calendar_day.css("display", "inline-block");
      $(".booking-display").append(calendar_day);

  //STEP 5
  //Populate calendar

    for (var j = start_day; j <= end_day; j+=1){
      var $cell = $("#"+j);
      $cell.css("background-color","green");
    }
    // $cell_id_start = $("#"+start_day);
    // $cell_id_start.css("background-color","red");
    //
    // $cell_id_end = $("#"+end_day);
    // $cell_id_end.css("background-color","red");
  }
};


//STEP 3
  //Identify the specific data we need
var bookingDisplay = function(data){
  console.log("This worked so far...");
  $(".booking-display").empty();

  for (var i = 0; i < data.bookings.length; i+=1){
    start_date = data.bookings[i].start_date;
    start_date_components = start_date.split(/-/);
    start_day = parseInt(start_date_components[2]);

    end_date = data.bookings[i].end_date;
    end_date_components = end_date.split(/-/);
    end_day = parseInt(end_date_components[2]);
    makeCalendar();
  }
};

//STEP 2
  //AJAX request
var baseURL = window.location.pathname;
// console.log(baseURL);
var getBookings = function(){
  $.ajax({
    url: baseURL,
    type: "GET",
    dataType: "JSON"
  }).done(bookingDisplay);
};

//STEP 1
  //Event handler
$(document).on("turbolinks:load",function(){
  var myTimer;
  var orderTimer = function(){
      myTimer = window.setInterval(function(){
        getBookings();
      },4000);
  };

  $("#show-all-bookings").on("click",orderTimer);

  $("#stop-all-bookings").on("click",function(){
    console.log("Stopping AJAX loading bookings");
    window.clearInterval(myTimer);
  });
});
