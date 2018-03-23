# Q0: Why is this error being thrown?
Because we haven't created the Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random pokemon are appearing because the sample method is called on the array of trainerless pokemon, which selects a random trainerless pokemon from the array. The common factor between all the possible pokemon that appear is that none of them are associated with a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line creates a button with the name "Throw a Pokeball!" and submits to the capture_path and grabs the pokemon's ID using the patch method.

# Question 3: What would you name your own Pokemon?
Meowzers

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path(id: @pokemon.trainer_id); it needed a parameter to specify the trainer ID so that we could redirect to that specific trainer's profile


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
That line takes the array of all the error messages from "@pokemon.errors.full_messages" and turns it into one readable sentence by adding on ".to_sentence".

# Give us feedback on the project and decal below!
The project and decal are fun! It's sometimes frustrating because sometimes it's hard to figure out what part of my code is causing an error, but I guess that's all part of the learning process.

# Extra credit: Link your Heroku deployed app
