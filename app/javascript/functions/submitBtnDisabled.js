"use strict";

const submitBtnDisabled = () => {
  const submitBtn = document.querySelector(".submit");
  const input = document.getElementById("message_body");
  if (submitBtn) {
    input.addEventListener("input", function (e) {
      this.value === ""
        ? (submitBtn.style.opacity = "0.5")
        : (submitBtn.style.opacity = "1");
    });
  }
};

export { submitBtnDisabled };
