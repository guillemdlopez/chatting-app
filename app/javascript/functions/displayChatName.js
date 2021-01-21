"use strict";

const displayChatName = () => {
  const chatList = document.querySelector(".chat-imgs");
  const allBadges = document.querySelectorAll(".chat-name-badge");

  if (chatList) {
    chatList.addEventListener("mouseover", (e) => {
      if (e.target.tagName !== "IMG") return;
      const chatName = e.target.dataset.name;
      const badge = document.getElementById(`${chatName}`);

      allBadges.forEach((badge) => badge.classList.add("hidden"));
      badge.classList.remove("hidden");
    });
  }
};

export { displayChatName };
