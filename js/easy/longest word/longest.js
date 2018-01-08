//initialize external data
require("fs").readFile(process.argv[2],'utf8',function (err,data){ main(data) });

function main(data) {
    var teste = data.split("\n")
    teste.forEach(function(line){
        var count = {}


        retWord = getLargestSize(line.split(" "));
        console.log(retWord);


    })
}


function getLargestSize(wordArr) {
    var count = [0,""] 
    wordArr.forEach(function(word,index){
        if ( word.length > count[0] ){
            count[0] = word.lenght;
            count[1] = word

        }


    })
    return count [1]
}

