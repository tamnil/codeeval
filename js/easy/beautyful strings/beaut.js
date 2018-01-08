//initialize external data
require("fs").readFile(process.argv[2],'utf8',function (err,data){ main(data) });

function main(data) {
    var teste = data.split("\n")
    teste.forEach(function(line){
        var count = {}


        res = line.replace(/[^a-zA-Z]/g,'').toLowerCase().split("").sort().reverse();


        for (var i = 0, len = res.length; i < len; i++) {
            if (count[res[i]] == undefined){ count[res[i]] = 0}

            count[res[i]] += 1
        }

        var sortarr = [];

        //sort the cout arrau

        for (var char in count){
            sortarr.push([char,count[char]])

            sortarr.sort(
                function(a,b){ return b[1] - a[1] }
            )
        }
        // calculate sum

        var total = 0
        sortarr.forEach(function(item,index){
            total += (26 - index)*item[1];
        }
        )

        console.log( total)

    })
}

