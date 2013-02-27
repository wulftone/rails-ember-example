Base.CarEditController = Ember.ObjectController.extend
  ###
  The associated template, `car/edit.hbs`, "needs" the `car` from
  the car controller, so we create a dependency--otherwise we would
  have to manually load a new model, using the "model" property function.
  ###
  needs: 'car'

  # Just a title to pass to the template, for fun
  title: "car edit controller"

  # I don't know what I'm doing... : |
  submit: (model) ->
    model.get('transaction').commit()
