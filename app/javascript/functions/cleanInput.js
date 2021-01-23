"use strict";

const cleanInput = () => {
  const input = document.querySelector(".explore-form-input");
  const btn = document.querySelector(".explore-form-btn");
  if (input) {
    input.addEventListener("input", function (e) {
      if (this.value !== "") {
        btn.innerHTML = '<i class="fas fa-backspace"></i>';
      } else {
        btn.innerHTML = '<i class="fas fa-search">';
      }
    });

    btn.addEventListener("click", function (e) {
      if (!e.target.closest(".fa-backspace")) return;

      input.value = "";
      this.innerHTML = '<i class="fas fa-search">';
    });
  }
};

export { cleanInput };
