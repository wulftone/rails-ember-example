Base.CarsController = Ember.ArrayController.extend
  title: "Cars."
  destroy: (model) ->
    model.deleteRecord()
    model.get('transaction').commit()
