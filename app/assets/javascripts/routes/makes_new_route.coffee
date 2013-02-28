Base.MakesNewRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set 'content', Base.Make.createRecord()
