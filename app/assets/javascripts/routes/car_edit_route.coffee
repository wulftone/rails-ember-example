Base.CarEditRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set 'title', "car edit route"
