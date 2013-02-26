Base.CarEditView = Ember.View.extend
  click: (e) ->
    e.target

  input: (e) ->
    console.log e.target.value
