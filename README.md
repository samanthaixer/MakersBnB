# The Fighting Mongooses

The Fighting Mongooses bring you a website where, as a Mongoose you may rent out your pad. As a Meerkat you can totally rent a Mongoose palace. And ya know, maybe you can mix it all up too! Other animals are not excluded.

## Our MVP - User Stories

```
As a Mongoose,
So that I can post my nest on the site,
I want to be able to add a new nest listing : Name/Description/Price.

As a Mongoose,
So that my clients can recognise my nest,
I want to be able to display details of my nest: Name/Description/Price.

As a Mongoose,
So that my clients know whether they can book my nest,
I want to be able to set my nest to available or not.

As a Meerkat,
So that I can stay in a listed nest,
I want to be able to book a nest for the current night.
```

## The backlog

### SIGNUP

```
As a Mongoose, Meerkat or other renting animal,
So that I can list nests on the rentaburrow site,
I want to be able to signup to rentaburrow using my email address

As a Meerkat, Mongoose or other renting animal,
So that I can book nests on the rentaburrow site,
I want to be able to signup to rentaburrow using my email address.

As a Mongoose, Meerkat or other renting animal,
So that I can book nests on the rentaburrow site,
I want to be able to log in to rentaburrow.

As a Mongoose, Meerkat or other renting animal,
So that I can be sure my details are secure,
I want my password to be stored securely (not in plain text).
```

### MULTIPLE NESTS

```
As a Mongoose,
So that I can put all of my nests on rentaburrow,
I want to be able to add multiple nests.

As a Mongoose,
So that I can manage all of my nests,
I want to be able to view each nest from a list of my nests.

As a Mongoose,
So that I can manage requests for bookings for multiple nests,
I want to be able to see which booking requests link to which nest.
```

### MULTIPLE DATES AVAILABLE

```
As a Mongoose,
So that my clients know when they can book my nests,
I want to be able to list a range of dates when the nests are free.

As a Meerkat,
So that I can plan my stay,
I want to be able to see which nights are not available for booking.

As a Meerkat,
So that I can plan my stay,
I want to be able to view available nests during a date range of my choice.

As a Meerkat,
So that I can plan my stay months in advance,
I want to be able to view available nests on a calendar month by month.
```

### BOOKING A ROOM REQUIRES CONFIRMATION FROM THE MONGOOSE

```
As a Meerkat,
So that I can stay in a listed nest,
I want to be able to make a request for a booking.

As a Mongoose,
So that I can confirm a booking for a nest,
I want to be able to confirm a request for a booking.

As a Mongoose,
So that I can manage multiple requests for a booking for a nest,
I want to be able to decline a request for a booking.

As a Mongoose,
So that I don't lose out on customers,
I want my nests to be available until booking requests have been confirmed.
```

### Further functionality (user stories not yet written)

- Sending an email at various stages
- Sending a text message at various stages
- Chat functionality
- Basic payment
- A map of nests available
- Paying via Apple pay

## Running the project

### Getting the code and installing

- `git clone` git@github.com:samanthaixer/MakersBnB.git
- `bundle install`

### Running tests

- run `rspec` in the root folder to see the Ruby backend tests
- run 'open -a "Google Chrome" SpecRunner.html' in the root folder to see our single, failing, Jasmine test
- don't try running the Caoybara tests (which could have been run through rspec) - they just won't do anything

### Running the app

- `rackup -p 1234` - important - this will definitely need to be on port 1234 at the moment!
- go to `http://localhost:1234` in the browser (ideally Google Chrome)

## Our approach

- Day 1 - planning, (diagramming), planning, planning, get Travis working and create our skeleton. Agree that we are the Fighting Mongooses and change all of the user stories to reflect this. Big cheer when travis finally worked. Go Goose!
- Day 2 - agree a pair-split between front-end and back-end and start work on the first 3 user stories (which really was only ever the second user story).
- Day 3 - (thanks to some great diagramming) agree that we are going to expose the backend as an API and let the front and back communicate via JSON. Focus on getting them hooked up so that we have end-to-end connectivity. Get stuck on calling our API via a localhost URL which is throwing a CORS error. Create some cool code to extract the results from the API call.
- Day 4 - discover the getJSON jQuery and discover that appending http on the url gets us moving again. Do some hacky stuff to create JSON that pulls data actually from the database. Work on displaying multiple nests at once. Make the Mongoose UI much better with much cuteness (possibly done late at night by a very keen team member - much appreciated)
- Day 5 - it's all hooked up! Keep improving the interface, finish that JSON (and try to do less hacky stuff), get ready for demo! Oh and some reflection time. And diagramming. And this write up. And getting some awesome help from Ellie and Nikhil.

### Daily rituals

- Morning check-ins - these were never standing up!
  - Check how we got on the previous day
  - Agree what we want to focus on, who will pair with who, check if anyone is stuck
  -
- Afternoon check-ins (and any other time we finished something or were stuck)
  - Pretty much the same as the morning check-ins

- Daily reflections
  - What has gone well
  - What hasn't gone well
  - What we would do differently
  - In all honesty, we only did this for the first two or three days

- Continuous Integration
  - Every single push to git - the build runs and cries if we've screwed up
  - If the build breaks, we stop and sort it
  - We aren't yet running JavaScript tests in travis. Full disclosure - we don't currently have JavaScript tests

- TDD
  - Yeah, so:
    - For Ruby using RSpec, no problemo.
    - For JavaScript using Jasmine, ummmmm.... well....
    - For the front end using Capybara - how on earth do you make that work with JavaScript listeners?
  - Safe to say - this is a "could be better"

### What went well

- Good practices for merging, branching, pairing together
- We all understand how the thing hangs together
-

### What didn't go well

- Disappointed that we didn't have as much functionality
- Not testing the front-end (automated) - maybe we could have looked at other options rather than trying just what we knew


### Key notes and learnings

- We decided early on not to take any shortcuts or easy routes. This was for a number of reasons:
 - The week is about working as a team, not about how much functionality we complete
 - The course is about learning and we wanted to push ourselves in areas where we aren't already feeling comfortable
 - We each wanted to stretch ourselves in areas we weren't already comfortable in, this was never going to mean fast progress
 - Finding experts is not only allowed, but greatly helps. Big shout out to Ellie and Nikhil for the Friday help with helping us display our magical nests and showing us awesome debugging skills! Have some time for people to do what they are strongest at
 - When pairing, maybe we could have had a lead to give a direction, rather than trying to describe everything as a group. We lacked technical leadership
 - Could we have used the coaches better? Asking for more direction? Maybe asking for a workshop to help us plan our architecture? 

### What would we do differently next time?

-
