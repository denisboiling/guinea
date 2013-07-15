$(document).ready ->
  $('form#new_online_request').on 'ajax:success', ->
    noty
      text: I18n.t('js.online_request.send_success')
  $('form#new_online_request').on 'ajax:error', (event, xhr, status, error) ->
    noty
      text: I18n.t('js.send_error')
      type: 'error'