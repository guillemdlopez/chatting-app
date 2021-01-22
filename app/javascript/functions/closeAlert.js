"use strict";

const closeAlert = () => {
  const icon = document.querySelector(".close-icon");
  const alert = document.querySelector(".new-user-online");

  if (alert) {
    alert.addEventListener("click", (e) => {
      console.log(e.target === icon);
      if (e.target === icon) {
        alert.classList.add("totally-hidden");
      }
    });
    function hideAlert() {
      alert.classList.add("totally-hidden");
    }
    setTimeout(hideAlert, 3000);
  }
};

export { closeAlert };
