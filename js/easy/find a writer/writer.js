//initialize external data
require("fs").readFile(process.argv[2],'utf8',function (err,data){ main(data) });

function main(data) {
    var teste = data.split("\n")
    teste.forEach(function(line){
        var count = {}
        var decoded = ""
        var string =   line.split("|")[0]
        var code = line.split("|")[1]
        if (code != undefined && string != undefined ){
            code = code.split(" ") 
            code.shift()
            code.forEach(function(x,ind){
                decoded += string[x - 1];
            })
        }
if (decoded != ""){
    
    console.log(decoded)
    }
    })
}

