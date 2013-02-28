Base.CarEditView = Ember.View.extend
  click: (e) ->
    console.log e.target

  input: (e) ->
    console.log e.target.value
