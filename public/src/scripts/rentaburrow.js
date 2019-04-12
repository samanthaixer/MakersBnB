$(document).ready(function() {
  // $('#getfirstnest').click(function()
  $.getJSON('http://localhost:1234/rentaburrow/view', function(nests) {
    nests.forEach(function(key, index) {
      console.log('TESTTTTT!!!!!!!!!!');
      $('#name'+ parseInt(index+1, 10)).text((key['name']));
      $('#description'+ parseInt(index+1, 10)).text((key['description']));
      $('#nightly_rate'+ parseInt(index+1, 10)).text('£' + (key['nightly_rate']));
      // $("div:last").after("<div class='card'>
      //   <img src='bird.jpg' alt='Avatar' style='width:100%'>
      //   <div class='container'>
      //     <p class='Header'>key['name']</p>
      //     <p class='Description' id='description2'></p>
      //     <p class='Body' id='nightly_rate2'></p>
      //   </div>");
      // });
    });
  });

  $('#submit').click(function() {
    $.post('http://localhost:1234/rentaburrow/add', { heading: "New Manor", description: "New Description", nightly_rate: "25.00"} , function(response) {
    console.log(response)
    // response.forEach(function(key, index) {
    //   // $('#name'+ parseInt(index+1, 10)).text("Nest name: " + (key['name']));
    //   // $('#description'+ parseInt(index+1, 10)).text("Nest description: " + (key['description']));
    //   // $('#nightly_rate'+ parseInt(index+1, 10)).text("Nightly rate: " + (key['nightly_rate']));
    // });
    });
  });

   //   <img src="bird.jpg" alt="Avatar" style="width:100%">
   //   <div class="container">
   //     <p class="Header" id="name2"></p>
   //     <p class="Description" id="description2"></p>
   //     <p class="Body" id="nightly_rate2"></p>
   // </div>");
});
