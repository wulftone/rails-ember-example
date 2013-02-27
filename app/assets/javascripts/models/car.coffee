attr = DS.attr

Base.Car = DS.Model.extend
  modelName: attr 'string'
  color: attr 'string'
  engine: attr 'string'
  year: attr 'number'
  # make: DS.belongsTo 'App.Make'
  didLoad: (model) ->
    console.log 'did Load'

  didCreate: (model) ->
    console.log 'did Create'

  didUpdate: (model) ->
    console.log 'did Update'

  didDelete: (model) ->
    console.log 'did Delete'

  becameInvalid: (model) ->
    console.log 'became Invalid'
    ###
    Unfortunately, we can't re-send the transaction (yet) on a validation error,
    so we'll have to just pretend it's valid and try again, until the ember-data
    team fixes this issue
    ###
    model.send('becameValid')

  becameError: (model) ->
    console.log 'became Error'

  becameValid: (model) ->
    console.log 'became Valid'

