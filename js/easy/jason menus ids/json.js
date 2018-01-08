//initialize external data
require("fs").readFile(process.argv[2],'utf8',function (err,data){ main(data) });

function main(data) {
    var teste = data.split("\n")
    teste.forEach(function(line){
        if (line != ""){
            var t = JSON.parse(line);
            var count = 0;
            for (var i = 0, len = t.menu.items.length; i < len; i++) {
                if(t.menu.items[i] !== null){
                    if ("label"  in t.menu.items[i]){
                        count += parseInt(t.menu.items[i].label.split(" ")[1])
                    }
                }
            }
            console.log(count)
        }
    })
}

