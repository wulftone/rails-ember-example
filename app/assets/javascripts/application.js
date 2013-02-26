// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs

// These things need to be loaded in the right order..!

//= require handlebars
//= require ember
//= require ember-data
//= require_self

// look in base.js to see some more requires.
//= require base

// Start up the application (a lot of stuff is "created" by convention,
// so you get loads of functionality with just this already)
Base = Ember.Application.create();

//= require_tree .

Ember.LOG_BINDINGS = true
// Ember.LOG_STACKTRACE_ON_DEPRECATION = true
