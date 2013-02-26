Base.CarController = Ember.ObjectController.extend
  # Just a simple title to throw in the template
  title: "car controller"

  # Let's make a computed property:
  foo: (->
    "#{@get 'year'} #{@get 'modelName'}"
  ).property 'year','modelName' # `.property` sets the attributes for the listeners to bind to
