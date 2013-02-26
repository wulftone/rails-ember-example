Base.CarEditController = Ember.ObjectController.extend
  ###
  The associated template, `car/edit.hbs`, "needs" the `car` from
  the car controller, so we create a dependency--otherwise we would
  have to manually load a new model, using the "model" property function.
  ###
  needs: 'car'

  # Just a title to pass to the template, for fun
  title: "car edit controller"

  # Probably not the most efficient way to do this, but it works.
  submit: (model) ->
    model.store.commit()
