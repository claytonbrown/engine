Locomotive.Views.Shared ||= {}

class Locomotive.Views.Shared.FormView extends Backbone.View

  el: '#content'

  render: ->
    # make title editable (if possible)
    @make_title_editable()

    @_hide_last_separator()

    # make inputs foldable (if specified)
    @make_inputs_foldable()

    return @

  save: (event) ->
    # by default, follow the default behaviour

  make_title_editable: ->
    title = @$('h2 a.editable')

    if title.size() > 0
      target  = @$("##{title.attr('rel')}")
      target.parent().hide()

      title.click (event) =>
        event.stopPropagation() & event.preventDefault()
        newValue = prompt(title.attr('title'), title.html());
        if newValue && newValue != ''
          title.html(newValue)
          target.val(newValue).trigger('change')

  make_inputs_foldable: ->
    self = @
    @$('.formtastic fieldset.foldable legend span').append '<em>&nbsp;</em>'
    @$('.formtastic fieldset.foldable.folded ol').hide()
    @$('.formtastic fieldset.foldable legend').click ->
      parent  = $(@).parent()
      content = $(@).next()

      if parent.hasClass 'folded'
        parent.removeClass 'folded'
        content.slideDown 100, -> self.after_inputs_fold(parent)
      else
        content.slideUp 100, -> parent.addClass('folded')

  after_inputs_fold: ->
    # overide this method if necessary

  clear_errors: ->
    @$('div.inline-errors').remove()

  show_errors: (errors) ->
    for attribute, message of errors
      html = $("<div class=\"inline-errors\"><p>#{message[0]}</p></div>")
      @show_error attribute, message[0], html

  show_error: (attribute, message, html) ->
    input = @$("##{@model.paramRoot}_#{attribute}")
    input.after(html) if input.size() > 0

  _enable_checkbox: (name, options) ->
    @$('li#page_' + name + '_input input[type=checkbox]').checkToggle
      on_callback: =>
        _.each options.features, (exp) -> @$('li#page_' + exp + '_input').hide()
        options.on_callback() if options.on_callback?
        @_hide_last_separator()
      off_callback: =>
        _.each options.features, (exp) -> @$('li#page_' + exp + '_input').show()
        options.off_callback() if options.off_callback?
        @_hide_last_separator()

  _hide_last_separator: ->
    _.each @$('fieldset'), (fieldset) =>
      $(fieldset).find('li.last').removeClass('last')
      $(_.last($(fieldset).find('li.input:visible'))).addClass('last')