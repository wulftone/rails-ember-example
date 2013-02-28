Base.MakesView = Ember.View.extend
  click: (e) ->
    console.log e.target

  mouseOver: (e) ->
    console.log "squeak! [#{e.pageX},#{e.pageY}]"
  ###
  This doesn't do anything at all.  Apparently this isn't how these events work.
  I guess a view only handles DOM events, and not handlebars actions?
  ###
  edit: (args...) ->
    console.log 'never gets here!'
