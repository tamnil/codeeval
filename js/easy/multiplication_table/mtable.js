//initialize external data
main()

function main(data) {
    var n = 12
     var res = []
    for (var i = 1, lenx = n ; i <= lenx ; i++) {
        for (var j = 1, leny = n ; j <= leny ; j++) {

            temp = (i*j).toString()

            while ( temp.length < 4 ) {
                temp = " " + temp;
            }
            res.push(temp);


        }
        console.log(res.join(""))
        var res = []
    }
}

