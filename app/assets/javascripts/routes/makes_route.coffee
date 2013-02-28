Base.MakesRoute = Ember.Route.extend
  ###
  Grab our models, for some reason we're just calling it "model".
  Calling it "collection" or "content" doesn't work, even though
  the controller automatically gets both 'content' and 'model',
  so this associated controller has `@get('content') === @get('model')`
  and it is this `recordArray` we've found here in our `model` method.
  ###
  model: ->
    Base.Make.find()

  ###
  This template event bubbles up through Base.MakesController into here.
  ###
  events:
    edit: (object) ->
      @transitionTo 'makes.edit', object
