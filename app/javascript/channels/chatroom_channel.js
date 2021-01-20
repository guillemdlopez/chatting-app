import { initChatScrolling } from "../functions/initChatScrolling";
import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById("messages");
  if (messagesContainer) {
    consumer.subscriptions.create(
      { channel: "ChatroomChannel" },
      {
        received(data) {
          messagesContainer.insertAdjacentHTML("beforeend", data);
          initChatScrolling("smooth");
          const input = document.getElementById("message_body");
          input.value = "";
        },
      }
    );
  }
};

export { initChatroomCable };
