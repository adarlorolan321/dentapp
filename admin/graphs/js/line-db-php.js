$(document).ready(function(){
    $.ajax({
        url: "api/data.php",
        type : "GET",
        success : function(data){
            console.log(data);
            var score ={
                5 : [],
                6 : []
            };
            var len = data.lenght;
            for(var i =0; i<len;i++){
                if (data[i].product =="5"){
                    qty.TeamA.push(data[i].SUM(qty));

                }
               else if (data[i].product =="6"){
                SUM(qty).TeamB.push(data[i].SUM(qty));

                }
            }console.log(SUM(qty));

            var ctx = $("#line-chartcnvas");


            var chart =new Chart(ctx,{
                type : "line",
                data :{},
                options :{}
            })
        },
        error : function(data){
            console.log(data);
        }
    });
})