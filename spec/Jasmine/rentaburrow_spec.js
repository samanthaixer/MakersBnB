
describe("Rent-A-Burrow front end", function(){

    // var rentburrow = new RentABurrow();

  // describe("#submit button-", function(){
  //   it('can click a button', function(){
  //     expect(('click').toHaveBeenTriggeredOn('submit'));
  //   });
  // });

  describe('it returns a list of names', function() {
    show(nests);
    expect(nests).to_include('Mary')
  });
});
