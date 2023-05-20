$(document).ready(function(){
    $.ajax({
        url: "http://localhost/Search_dev/graphs/data.php",
        method: 'GET',
        success : function(data){
         console.log(data);
         var team1 = [];
         var score1 =[];

         for(var i in data){
             team1.push(data[i].id);
             score1.push(data[i].price);
         }

         var chartdata = {
             labels:team1,
             datasets:[{
                 label : 'Quantity',
                 backgroundColor: 'rgba(200,200,200,0.75)',
                 borderColor : 'rgba(200,200,200,0.75)',
                 hoverBackgroundColor: 'rgba(200,200,200,1)',
                 hoverBorderColor: 'rgba(200,200,200,1)',
                 data : score1
             }]
         };
         var ctx = $("#mycanvas");
         var barGraph = new Chart(ctx,{
             type : 'bar',
             data : chartdata
         });
        },
        error : function(data){
         console.log(data);
        }
        
    })
})