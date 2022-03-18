// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

let submitBttn = document.querySelector('#login-submit');
if(submitBttn) {
  submitBttn.addEventListener('click', function() { document.querySelector('#login-form').submit(); });
}


//= require jquery
//= require bootstrap
