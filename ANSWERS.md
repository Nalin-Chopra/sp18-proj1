# Q0: Why is this error being thrown?

This error is being thrown because we have not created a model for pokemons.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

We are taking all pokemon from the home controller where the trainer_id is null and taking a random one.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This creates a button. It then sends a PATCH request to the “capture_path” identified in the routes.rb file,
which routes to our capture method in the pokemon controller and takes in
random pokemon.

# Question 3: What would you name your own Pokemon?

Calariza

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed into the redirect_to the "trainer_path". It takes in a trainer_id as a parameter to know where to redirect to. It is okay to not have a path because it will look for a view that corresponds to the model passed in.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

Putting this line allows us to access the the potential error messages in the partial views in some hash/dictionary called flash.
By accessing this, we can look for and display any potential error messages.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
