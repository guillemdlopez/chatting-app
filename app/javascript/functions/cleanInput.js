"use strict";

const cleanInput = () => {
  const input = document.querySelector(".explore-form-input");
  const btn = document.querySelector(".explore-form-btn");
  const form = document.querySelector(".explore-form");
  let backspaceBtn;
  if (input) {
    input.addEventListener("input", function (e) {
      if (this.value !== "") {
        btn.classList.add("totally-hidden");
        backspaceBtn =
          '<i class="fa fa-backspace banner-form-btn explore-form-btn" style="cursor: pointer"></i>';

        form.insertAdjacentHTML("beforeend", backspaceBtn);
      } else {
        document
          .querySelectorAll(".fa-backspace")
          .forEach((btn) => btn.remove());
        btn.classList.remove("totally-hidden");
      }
    });

    form.addEventListener("click", function (e) {
      if (!e.target.closest(".fa-backspace")) return;

      input.value = "";
      document.querySelectorAll(".fa-backspace").forEach((btn) => btn.remove());
      input.focus();
      btn.classList.remove("totally-hidden");
    });
  }
};

export { cleanInput };
