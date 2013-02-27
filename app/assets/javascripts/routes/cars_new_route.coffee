Base.CarsNewRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set 'title', "cars new route"
    controller.set 'content', Base.Car.createRecord()
