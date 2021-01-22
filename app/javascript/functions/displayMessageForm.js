"use strict";

const displayMessageForm = () => {
  const message = document.getElementById("create-community");
  if (message) {
    function showMessage() {
      message.classList.remove("totally-hidden");
    }
    setTimeout(showMessage, 2000);
  }
};

export { displayMessageForm };
