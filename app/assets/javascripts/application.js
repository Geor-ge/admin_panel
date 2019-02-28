// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

const table = document.getElementsByClassName('table');
const title = document.getElementsByTagName('h1');
const smTitle = document.getElementsByTagName('h2');
const form = document.getElementsByTagName('form');
const card = document.getElementsByClassName("card");

//table load event
window.addEventListener('load', function() {
  const th = document.getElementById('thead');
  table[0].style = 'transition: .6s ease-in';
  table[0].style.opacity = '1';
  title[0].style = 'transition: .875s ease-in';
  title[0].style.opacity = '1';
  th.style = 'transition: .5s ease-in .6s';
  th.style.backgroundColor = "rgba(111,195,223,.8)";
});

//show page load event
window.addEventListener('load', function() {
  card[0].style = 'transition: .6s ease-in';
  card[0].style.opacity = '1';
  card[1].style = 'transition: .6s ease-in';
  card[1].style.opacity = '1';
});

//edit page load
window.addEventListener('load', function() {
  smTitle[0].style = 'transition: .875s ease-in';
  smTitle[0].style.opacity = '1';
  form[0].style = 'transition: .6s ease-in';
  form[0].style.opacity = '1';
});
