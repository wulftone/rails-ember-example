Base.Router.reopen
  location: 'history'
  rootURL: '/'

###
This router seems to be automatically created by
`Base = Ember.Application.Create()` in application.js.

If I wanted/needed to make my own, I'd do this:
  Base.Router = Ember.Router.extend()

Routes in templates work like this:
  {{#linkTo "car.new"}}Make a new car{{/linkTo}}

Or if the template context isn't bound to a single model, you can
pass a parameter to the `linkTo`:
  {{#linkTo "car.edit" this}}Edit this car{{/linkTo}}

... like we do in `cars/index.hbs`
###
Base.Router.map ->
  @route 'about'

  # This is what they show you in the ember guides
  @resource 'cars', ->
    @route 'new'
  @resource 'car', path: '/cars/:car_id', ->
    @route 'edit'

  # And here's a different way!
  @resource 'makes', ->
    @route 'new'
    @route 'edit', path: '/:make_id/edit'
    @route 'show', path: '/:make_id'
