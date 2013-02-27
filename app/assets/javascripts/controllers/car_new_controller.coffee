Base.CarsNewController = Ember.ObjectController.extend
  # Just a title to pass to the template, for fun
  title: "car new controller"

  submit: (model) ->
    model.get('transaction').commit()
