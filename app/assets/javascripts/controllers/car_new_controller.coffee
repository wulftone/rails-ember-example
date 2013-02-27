Base.CarsNewController = Ember.ObjectController.extend
  # Just a title to pass to the template, for fun
  title: "car new controller"

  submit: (controller) ->
    model = controller.get 'model'
    model.get('transaction').commit() if model.validate()
