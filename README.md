Increment 1 - 

We prompted the user for a noun and were able to store it in a variable and interpolate it into a string and print it back to the user.

Increment 2 - 

We prompted the user for multiple parts of speech and stored them in a hash, and were able to interpolate into a string and display the sentence back to the user.

Increment 3 - 

We created an array with three template sentences and looped through the array to display each template to the user with the interpolated parts of speech. We also used pry to look at each template before it was displayed.

Increment 4 -

We created two classes, one to prompt the user and one to insert the user responses into the sentence templates. The UI object is instantiated and the prompt method is called to get the user's responses. Next, we iterate through an array of sentence template strings and instatiate SentenceTemplate objects and then call the insert method with the sentence string and the hash returned by the prompt method.

Increment 5 - 

We created a new method in the UI class to prompt the user to select a mode of transportation. We added that selection to the hash and added an additional sentence template that included the mode of transportation value.

