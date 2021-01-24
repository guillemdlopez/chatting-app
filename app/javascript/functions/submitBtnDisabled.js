"use strict";

const submitBtnDisabled = () => {
  const submitBtn = document.querySelector(".submit");
  const input = document.getElementById("message_body");
  if (submitBtn) {
    input.addEventListener("input", function (e) {
      this.value === ""
        ? submitBtn.classList.add("disabled")
        : submitBtn.classList.remove("disabled");
    });
  }
};

export { submitBtnDisabled };
