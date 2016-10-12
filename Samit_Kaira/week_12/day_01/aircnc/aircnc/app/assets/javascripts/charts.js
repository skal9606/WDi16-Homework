//CHART.JS

var price;
var allPrices = [];
var allLabels = [];
var housename;
var $ctx;
var myChart;


//STEP 4
  //Create chart
var createChart = function (){
  $ctx = $("#myChart");
  myChart = new Chart($ctx, {
      type: 'bar',
      data: {
          labels: allLabels,
          datasets: [{
              label: '',
              data: allPrices,
              backgroundColor: [
                  'rgba(255, 99, 132, 0.2)'
              ],
              borderColor: [
                  'rgba(255,99,132,1)'
              ],
              borderWidth: 1
          }]
      }
  });
  $ctx.css("height","300px");
  $ctx.css("width","600px");
};

//STEP 3
  //Retrieve prices and order them
var orderPrices = function (d){

  for (var i = 0; i < 4; i+=1){
      price = d[i].price;
      allPrices.push(price);
      console.log(allPrices);

      housename = d[i].name;
      allLabels.push(housename);
      console.log(allLabels);
  }
  allPrices = allPrices.sort(function (a, b) {  return a - b;  });
  createChart();
};

//STEP 2
  //AJAX request
var baseURLThree = window.location.pathname;
var getPrices = function(){
  $.ajax({
    url: baseURLThree,
    type: "GET",
    dataType: "JSON"
  }).done(orderPrices);
};

//Get prices for each house
//Order each house by price
//Plot prices on chart

//STEP 1
$(document).on("turbolinks:load",function(){
  $("#compare-prices").on("click",getPrices);
});
