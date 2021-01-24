import { initChatScrolling } from "../functions/initChatScrolling";
import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById("messages");
  if (messagesContainer) {
    const id = document.getElementById("chatroom").dataset.chatroomId;

    consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: id },
      {
        received(data) {
          // const reply = document.querySelector(".replying-msg");
          // let replyTxt;

          // if (reply) {
          //   replyTxt = reply.firstElementChild.textContent;
          // }
          // const finalMsg = replyTxt === "" ? data : replyTxt + data;

          messagesContainer.insertAdjacentHTML("beforeend", data);
          initChatScrolling("smooth");
          const input = document.getElementById("message_body");
          input.value = "";
          const submitBtn = document.querySelector(".submit");
          submitBtn.style.opacity = "0.5";
        },
      }
    );
  }
};

export { initChatroomCable };
