Base.CarsIndexController = Ember.ArrayController.extend
  title: "Cars index controller."

  ###
  Let our `index.hbs` have access to the CarsController's collection
  ###
  needs: 'cars'
