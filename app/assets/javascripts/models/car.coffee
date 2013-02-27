attr = DS.attr

Base.Car = DS.Model.extend
  modelName: attr 'string'
  color: attr 'string'
  engine: attr 'string'
  year: attr 'number'
  # make: DS.belongsTo 'App.Make'
  becameInvalid: (model) ->
    debugger
