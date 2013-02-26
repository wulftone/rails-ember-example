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

// REMEMBER!  Ember is _convention_ based, so a lot of the wiring together
// that seems magical is just done by naming your "classes" in a certain
// way.  This cuts down greatly on boilerplate code, because if something
// ember needs doesn't exist, it can just make it using the conventions
// the ember developers set up.


//= require_tree .

Ember.LOG_BINDINGS = true
// Ember.LOG_STACKTRACE_ON_DEPRECATION = true
