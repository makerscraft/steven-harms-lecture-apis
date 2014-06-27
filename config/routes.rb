ApiDemo::Application.routes.draw do
  root :to => 'books#take_a_look'
  get '/books/take_a_look' => 'books#take_a_look'
  post '/books/enter_a_book' => 'books#enter_a_book' , as: :enter_book
  get '/books/reading_rainbow' => 'books#reading_rainbow', as: :rainbow
end
