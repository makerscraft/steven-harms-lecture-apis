#API's in Rails

## How to find a good API?
* Who wrote it?
* When was it last updtated?
* Issues on github? Are they being addressed?
* Can you make it's 'Hello World' work?
* What does the code look like?

## API play tools
* Send a request WITHOUT rails -
  * [Apigee](https://apigee.com/console/others)
  * [Postman addon for Chrome](https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en)
  * [CURL](http://curl.haxx.se/docs/)
* Use a gem to help
  * [HTTParty](https://github.com/jnunemaker/httparty)

## API gotcha's
Umm .... the list is TOOOO long! But seriously:

* Is it tested?
* Rate limits?

## API best practices
* Explore on a SPIKE-BRANCH!
* Wrap it up and encapsulate buggy code with the [Adapter Pattern](http://en.wikipedia.org/wiki/Adapter_pattern) or separate buggy from unbuggy code with the [Delegation Pattern](http://en.wikipedia.org/wiki/Delegation_pattern) - see examples of [Patterns in Ruby](https://github.com/nslocum/design-patterns-in-ruby)
  * Create a class with methods that wrap around the API calls
  * Use an initialize to set state needed for the API
  * Use instance methods over class methods since they are easier to test.
* Exception Handling - if the API fails - your program can take back control
  * Protect against nil using the [Null Object Pattern](http://en.wikipedia.org/wiki/Null_Object_pattern) -- [Example of Null Object Pattern in Ruby with OpenStruct](https://gist.github.com/kinopyo/3651371)
* Use `config/initializers ` to load keys from   `.secrets.yml` or `.env` files.  DO NOT hardcode or put in anything that is pushed to github
* If your API doesn't have a gem, consider if you want to make your own gem to wrap around the API querying (with HTTParty) - ie redo your class into a gem.

## API testing

* Don't test the API (mocks and
stubs)

## Sample code
This code shows a sample code base integrated with an API.
