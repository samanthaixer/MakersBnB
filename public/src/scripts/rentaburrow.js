$(document).ready(function() {
   $('#getfirstnest').click(function() {
     $.getJSON('http://localhost:1234/rentaburrow/view', function(nests) {
       nests.forEach(function(key, index) {
        console.log('TESTTTTT!!!!!!!!!!');
         $('#name'+ parseInt(index+1, 10)).text("Nest name: " + (key['name']));
         $('#description'+ parseInt(index+1, 10)).text("Nest description: " + (key['description']));
         $('#nightly_rate'+ parseInt(index+1, 10)).text("Nightly rate: " + (key['nightly_rate']));
       });
     })
   });

   $('#submit').click(function() {
     $.post('http://localhost:1234/rentaburrow/add', { heading: "New Manor", description: "New Description", nightly_rate: "25.00"} , function(response) {
       console.log(response)
       // response.forEach(function(key, index) {
       //   // $('#name'+ parseInt(index+1, 10)).text("Nest name: " + (key['name']));
       //   // $('#description'+ parseInt(index+1, 10)).text("Nest description: " + (key['description']));
       //   // $('#nightly_rate'+ parseInt(index+1, 10)).text("Nightly rate: " + (key['nightly_rate']));
       // });
      })
   });
});
