import createChannel from 'client/cable';

let callback; // declaring a variable that will hold a function later

const chat = createChannel('ChatChannel', {
  received({ sender_message, recipient_message }) {
    if (callback) callback.call(null, sender_message, recipient_message);
  }
});

// Sending a message: "perform" method calls a respective Ruby method
// defined in chat_channel.rb. That's your bridge between JS and Ruby!
function sendMessage(message, chatId) {
  chat.perform("send_message", { message: message, id: chatId });
}

// Getting a message: this callback will be invoked once we receive
// something over ChatChannel
function setCallback(fn) {
  callback = fn;
}

export { sendMessage, setCallback };
