Base.CarsNewRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set 'title', "cars new route"

    ###
    Give the template a new car record to work with
    each time we switch to this route
    ###
    controller.set 'content', Base.Car.createRecord()
