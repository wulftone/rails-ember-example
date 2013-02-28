Base.MakesNewController = Ember.ObjectController.extend
  title: "makes_new_controller.coffee"

  save: ->
    model = @get 'model'
    model.get('transaction').commit() if model.validate()
