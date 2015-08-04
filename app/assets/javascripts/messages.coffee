window.client = new Faye.Client('/faye')
 
jQuery ->
  client.subscribe '/messages', (payload) ->
    $('#messages').find('.media-list').append(payload.message) if payload.message
    $('#message_message').val('')
    $('#messages').animate({"scrollTop": $('#messages')[0].scrollHeight}, "fast")

   $('#new_message').submit -> $(this).find("input[type='submit']").val('Sending...').prop('disabled', true)

