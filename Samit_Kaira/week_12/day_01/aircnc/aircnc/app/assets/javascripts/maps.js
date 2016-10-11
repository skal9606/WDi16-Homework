// var baseURLTwo = window.location.pathname;
// console.log(baseURLTwo);
//
// //STEP 3
// var displayLocation = function(data){
//     // console.log(data.latitude);
//     // console.log(data.longitude);
//
//     var map;
//     map = new google.maps.Map(document.getElementById('map'), {
//     center: {lat: data.latitude, lng: data.longitude},
//     zoom: 8});
// };
//
//
// //STEP 2
// var getLocation = function(){
//     $.ajax({
//         url: baseURLTwo,
//         type: "GET",
//         dataType: "JSON"
//     }).done(displayLocation);
// };
//
// //STEP 1
// $(document).on("turbolinks:load",function(){
//     getLocation();
// });
