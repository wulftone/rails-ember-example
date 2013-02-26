Base.CarRoute = Ember.Route.extend
  setupController: (controller) ->
    controller.set 'title', "car route"
    # The model is automatically set to the controller's content, see `car.hbs`

  # This allows us to find an arbitrary model and bind it to the template
  # model: (params) ->
  #   # Base.Car.find params.car_id # this is the default behavior
  #   Base.Car.find 1 # or do something else
