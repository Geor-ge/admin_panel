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

let table = document.getElementsByClassName('table');

window.addEventListener('load', function(){
  let th = document.getElementById("thead");
  table[0].style = 'transition: .6s ease-in';
  table[0].style.opacity = '1';
  th.style = 'transition: .5s ease-in .6s'
  th.style.backgroundColor = "rgba(111,195,223,.7)";
});
