$(document).ready(function() {
    $('#testButton').click(function() {
        console.log("Click!")
        updateTest();
      });

    function updateTest() {
        $('#heading').val("Click!");
    }
});