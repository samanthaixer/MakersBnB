
$(document).ready(function() {

    $('#testButton').click(function() {
      console.log('click ya bitch')
        $.getJSON('http://localhost:1234/rentaburrow', function(nests) {
        nests.forEach(function(key, index) {
          $('#name'+ parseInt(index+1, 10)).text("Your name is " + (key['name']));
        });

      })
    });
});
