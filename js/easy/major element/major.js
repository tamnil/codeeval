//initialize external data
require("fs").readFile(process.argv[2],'utf8',function (err,data){ main(data) });

function main(data) {
    var teste = data.split("\n")
    teste.forEach(function(line){
        if (line != ""){
            var t = line.split(",");
            var count = [] ;
            count[0] = 0;
            // console.log(t.sort())

            tUniq = t.filter(function(x,i,self){ return self.indexOf(x) ==i })
            //count itens in arrau:
            for (var i = 0, len = tUniq.length ; i < len; i++) {
                elLen = t.filter(function(x) {return x == tUniq[i]}).length
                if(count[0] < elLen){
                    count[0] = elLen;
                    count[1] = tUniq[i];

                }
            }
            if (count[0] < t.length/2){
                console.log("None")
            }else{

                console.log(count[1]);
            }
        }
    })
}
function getMax(arr){


}
