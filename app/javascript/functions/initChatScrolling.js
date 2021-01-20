"use strict";

const initChatScrolling = (behavior = "auto") => {
  const chatroom = document.getElementById("messages");
  const messages = document.querySelectorAll(".message");
  if (chatroom && messages.length > 1) {
    const lastMessage = document.querySelector(".message:last-child");
    lastMessage.scrollIntoView({ behavior });
  }
};
export { initChatScrolling };
