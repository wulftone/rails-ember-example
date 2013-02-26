Base.CarsRoute = Ember.Route.extend
  model: ->
    Base.Car.find()

  setupController: (controller, collection) ->
    controller.set 'title', "Cars route"
    controller.set 'content', collection
