Base.MakesEditController = Ember.ObjectController.extend
  title: "makes_edit_controller.coffee"

  save: (object) ->
    model = @get('model')
    transaction = model.get('transaction')
    transaction.store.commit() if model.validate()
