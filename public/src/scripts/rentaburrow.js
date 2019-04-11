
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
      // $.get('http://localhost:1234/rentaburrow', function(response) {
        $.getJSON('http://localhost:1234/rentaburrow', function(data) {

        // 'localhost:1234'
        // 'https://async-workshops-api.herokuapp.com/people'
        // (response => response.json)
        // .then(response)

        console.log("Here's a list of names: ")
        nests = data
        console.log(nests);

        nests.forEach(function(key) {
          console.log(key['name']);
        });
        // console.log(nests[0]['name'])
        // console.log(nests[0]['description']);
        // console.log(nests[0]['nightlyrate']);

      })
    });
});


// current code works when using the herokuapp site, the code under the get request
// is recoomended by ellie.
