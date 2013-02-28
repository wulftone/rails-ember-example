Base.MakesController = Ember.ArrayController.extend
  title: "makes_controller.coffee"

  ###
  Go look in templates/makes.hbs to see this bound to its template
  ###
  destroy: (object) ->
    object.deleteRecord() # Deletes it from the javascript

    ###
    Delete on the server, make sure to NOT return a
    copy of the model from the server after deleting,
    or it will re-create the javascript object.  : P
    ###
    object.get('transaction').commit()

  ###
  If we used this event handler, it would supersede the one in the route
  with the same name.  I put it in the route instead, because it's route-related.
  ###
  # edit: (object) ->
    # @transitionTo 'make.edit', object
