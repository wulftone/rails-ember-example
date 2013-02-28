Base.MakesEditController = Ember.ObjectController.extend
  title: "makes_edit_controller.coffee"

  save: (object) ->
    model = @get 'model'
    model.get('transaction').commit() if model.validate()
