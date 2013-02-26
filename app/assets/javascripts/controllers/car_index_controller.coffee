Base.CarIndexController = Ember.ObjectController.extend
  ###
  The associated template, `car/index.hbs`, "needs" the `car` from
  the car controller, so we create a dependency--otherwise we would
  have to manually load a new model, using the "model" property function.
  ###
  needs: 'car'

  # Just a title to pass to the template, for fun
  title: "car index controller"

  # Here's a computed property that we can access from the template
  bar: ( (arg...) ->
    car = @get('controllers').get('car')
    "#{car.get 'year'} #{car.get 'modelName' }"
  ).property 'year'
