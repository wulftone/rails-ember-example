attr = DS.attr

Base.Make = DS.Model.extend Ember.Validations,
  name: attr 'string'
  website: attr 'string'

  cars: DS.hasMany 'Base.Car'

  validations:
    name:
      presence: true
    website:
      presence: true

  didLoad: (model) ->
    console.log 'make did Load'

  didCreate: (model) ->
    console.log 'make did Create'

  didUpdate: (model) ->
    console.log 'make did Update'

  didDelete: (model) ->
    console.log 'make did Delete'

  becameInvalid: (model) ->
    console.log 'make became Invalid'
    ###
    Unfortunately, we can't re-send the transaction (yet) on a validation error,
    so we'll have to just pretend it's valid and try again, until the ember-data
    team fixes this issue
    ###
    model.send('becameValid')

  becameError: (model) ->
    console.log 'make became Error'

  becameValid: (model) ->
    console.log 'make became Valid'
