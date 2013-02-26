###
This is a "Route" handler, not to be confused with a "Router"
Essentially, it allows us to customize behavior for this particular route
###
Base.IndexRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set 'title', "My App"
