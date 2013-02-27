attr = DS.attr

Base.Car = DS.Model.extend Ember.Validations,
  modelName: attr 'string'
  color: attr 'string'
  engine: attr 'string'
  year: attr 'number'

  make: DS.belongsTo 'Base.Make'

  validations:
    year:
      presence: true
    color:
      presence: true
    modelName:
      presence: true
    engine:
      presence: true

  # make: DS.belongsTo 'App.Make'
  didLoad: (model) ->
    console.log 'car did Load'

  didCreate: (model) ->
    console.log 'car did Create'

  didUpdate: (model) ->
    console.log 'car did Update'

  didDelete: (model) ->
    console.log 'car did Delete'

  becameInvalid: (model) ->
    console.log 'car became Invalid'
    ###
    Unfortunately, we can't re-send the transaction (yet) on a validation error,
    so we'll have to just pretend it's valid and try again, until the ember-data
    team fixes this issue
    ###
    model.send('becameValid')

  becameError: (model) ->
    console.log 'car became Error'

  becameValid: (model) ->
    console.log 'car became Valid'
