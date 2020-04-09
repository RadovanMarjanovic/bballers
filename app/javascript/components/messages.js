import { setCallback } from 'client/chat';

function scrollToBottom(element) {
  // eslint-disable-next-line
  console.log(element.scrollTop)
  console.log(element.scrollHeight)
  element.scrollTop = element.scrollHeight;
}

const messages = document.querySelector('.messages');

if (messages) {
  const content = messages.querySelector(".messages--content");

  scrollToBottom(content);

  // Telling `chat.js` to call this piece of code whenever a new message is received
  // over ActionCable
  setCallback((sender_message, recipient_message) => {
    const currentUserId = document.getElementById("chat-box").dataset.currentUserId
    const senderMessageId = sender_message.match(/(\d+)/)[0];
    const recipientMessageId = recipient_message.match(/(\d+)/)[0];
    let message;
    if (currentUserId === senderMessageId) {
      message = sender_message;
    } else if (currentUserId === recipientMessageId) {
      message = recipient_message;
    }

    const div = document.createElement('div');

    div.innerHTML = message;

    content.appendChild(div);
    // content.insertAdjacentHTML("beforeend", div);

    scrollToBottom(content);
  });
}
