"use strict";

const initChatScrolling = (behavior = "auto") => {
  const chatroom = document.getElementById("messages");
  if (chatroom) {
    const lastMessage = document.querySelector(".message:last-child");
    lastMessage.scrollIntoView({ behavior });
  }
};
export { initChatScrolling };
