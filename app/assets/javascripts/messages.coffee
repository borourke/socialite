window.client = new Faye.Client('/faye')
 
jQuery ->
  client.subscribe '/messages', (payload) ->
    $('#messages').find('.media-list').prepend(payload.message) if payload.message

   $('#new_message').submit -> $(this).find("input[type='submit']").val('Sending...').prop('disabled', true)

