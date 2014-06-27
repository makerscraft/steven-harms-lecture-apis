=begin rdoc

Initializers are code that is run after Rails booted up and after gems are
initialized.

It's logical to put Gem configuration e.g. MagicGem.API_USER_KEY =
ENV['MAGICGEM_API_USER_KEY'] in them. The code provided here is trivial
but is designed to get your mind open to the possibilities.

=end

puts "Hello initializers" # It's just Ruby!

Rails.application

ApiDemo::Application.configure do
  # You can set configuration data here that can be propagated
  # throughout the app.  For example:
  config.razzle = "true"

  # Or set credentials
  config.secret_user_id = ENV["SECRET_USER_ID"]

  # So that in other calls throughout the app you can
  # use things like:
  #
  # SomeClass.new(Rails.application.config.secret_user_id)
  #
  # Why is it better to use this Rails configuration object instead
  # of merely using ENV keys?  Well, opinions vary, but ENV vars are used
  # in initialization.  To me it makes sense to use ENV vars to initialize
  # the app and to get Rails "up and running."  Thereafter, it strikes me,
  # it's better to ask **rails** what it was initialized with.

  # You can also fire some really cool callbacks.
  # For more:
  # http://guides.rubyonrails.org/configuring.html#running-code-before-rails
  config.after_initialize do
    puts "I am after initialize"
    Rails.logger.debug "after initializing" # (look for this in log/development.log!)
  end
end
