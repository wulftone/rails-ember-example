###
This router seems to be automatically created by
`Base = Ember.Application.Create()` in application.js.
###
Base.Router.map ->
  @route 'about'
  @resource 'cars', ->
    @route 'new'
  @resource 'car', path: '/cars/:car_id', ->
    @route 'edit'
