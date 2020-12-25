import consumer from "./consumer"

consumer.subscriptions.create("MessageChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `<div id='messages'>
                    <div class="upper-message">
                      <div class="message-user">
                        ${data.name}
                      </div>
                      <div class="message-date">
                        ${data.time}
                      </div>
                    </div>
                    <div class="lower-message">
                      <div class="message-text">
                        ${data.content.text}
                      </div>
                    </div>
                  </div>`;
    const messages = document.getElementById('messages');
    const newMessage = document.getElementById('message_text');
    messages.insertAdjacentHTML('afterbegin', html);
    newMessage.value='';
  }
});
