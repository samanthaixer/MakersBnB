
$(document).ready(function() {
    $('#submit').on('click', function(){
        console.log("YAAAAAAAYYYYYYYYYYYYYY");
    });

});


// $.get(“localhost:1234/test“, function(TestFunct) {
//       console.log("WOOOHOOOOOO);
//     });
//    });


//    var ul = $('<ul>').appendTo('body');
//    var json = { items: ['item 1', 'item 2', 'item 3'] };
//    $(json.items).each(function(index, item) {
//        ul.append(
//            $(document.createElement('li')).text(item)
//        );
//    });







// $(document).ready(function() {
//     $('#testButton').click(function() {
//         console.log("Click!")
//         updateTest();
//       });

//     function updateTest() {
//         $('#heading').val("Click!");
//     }
// });

$(document).ready(function() {
    // $('#testButton').click(function() {
    //     console.log("Click!")
    //     updateTest();
    //   });
    //
    // function updateTest() {
    //     $('#heading').val("Click!");
    // }
    $('#testButton').click(function() {
      $.get('https://async-workshops-api.herokuapp.com/people', function(response) {
        // (response => response.json)
        // .then(response)

        console.log("Is this here?")
        practice = response
        // obj = JSON.parse(practice);

        console.log(practice[3]);
        // console.log(nests.description);
        // console.log(nests.nightlyrate);

        //   var nests = JSON.parse(this.responseText);
        // document.getElementById("?").innerHTML = nests.name;
      })
    });
});


// current code works when using the herokuapp site, the code under the get request
// is recoomended by ellie.
