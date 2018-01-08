//initialize external data
require("fs").readFile(process.argv[2],'utf8',function (err,data){ main(data) });

var text = 
    'Mary had a little lamb its fleece was white as snow;\
And everywhere that Mary went, the lamb was sure to go.\
It followed her to school one day, which was against the rule;\
It made the children laugh and play, to see a lamb at school.\
And so the teacher turned it out, but still it lingered near,\
And waited patiently about till Mary did appear.\
"Why does the lamb love Mary so?" the eager children cry; "Why, Mary loves the lamb, you know" the teacher did reply."'


//(the (\b\w+ ){1})


function main(data) {
    var teste = data.split("\n")
    teste.forEach(function(line){
        var count = {}
        text = removePunctuation(text)
console.log(text.match(/(the (\b\w+ ){1})/g))

    })
}

function removePunctuation(txt) {
    processedText = txt.replace(/[^a-zA-Z ]/g,"")

    return processedText

}


function getMatch(t,n) {

    
}
