"use strict";

import { displayAlert } from "./displayAlert";

const replyMessage = () => {
  const messages = document.querySelector(".chat-messages");
  const input = document.getElementById("message_body");
  const submitBtn = document.querySelector(".submit");

  if (messages) {
    messages.addEventListener("click", (e) => {
      if (e.target.classList.contains("reply")) {
        input.value = "";
        const message = e.target.closest(".message");
        const user = message.dataset.user;
        const text = message.children[1].lastElementChild.textContent.replace(
          /\s$/,
          ""
        );
        console.log(text);

        input.value = `@${user} ${text} - \n`;
        displayAlert("Please do not remove this line. Enjoy the chat!");
        input.focus();
        if (submitBtn.classList.contains("disabled")) {
          submitBtn.classList.remove("disabled");
        }
      }
    });
  }
};

export { replyMessage };
