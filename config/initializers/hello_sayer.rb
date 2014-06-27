puts "hello initializers"
Rails.application

ApiDemo::Application.configure do
  config.razzle = "true"

  config.after_initialize do
    puts "I am after initialize"
    Rails.logger.debug "after initializing"
  end
end
