Base.AboutRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set 'title', "About!"
