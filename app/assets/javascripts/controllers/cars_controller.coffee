Base.CarsController = Ember.ArrayController.extend
  title: "Cars controller"

  ###
  Go look in templates/cars.hbs to see this bound to its template
  ###
  destroy: (object) ->
    object.deleteRecord() # Deletes it from the javascript

    ###
    Delete on the server, make sure to NOT return a
    copy of the object from the server after deleting,
    or it will re-create the javascript object.  : P
    ###
    object.get('transaction').commit()
