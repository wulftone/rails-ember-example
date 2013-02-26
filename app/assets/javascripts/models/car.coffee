Base.Car = DS.Model.extend
  modelName: DS.attr 'string'
  color: DS.attr 'string'
  engine: DS.attr 'string'
  year: DS.attr 'number'
  # make: DS.belongsTo 'App.Make'
