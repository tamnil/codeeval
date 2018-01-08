//initialize external data
require("fs").readFile(process.argv[2],'utf8',function (err,data){ main(data) });

function main(data) {
    var teste = data.split("\n")
    teste.forEach(function(line){
        var m = line.split(",")[0]
        var n = line.split(",")[1]
        var divF = Math.floor(m/n)
        var mod = m - divF*n 
        console.log(mod)
    })
}

