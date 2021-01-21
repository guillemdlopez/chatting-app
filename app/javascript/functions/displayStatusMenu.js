"use strict";

const displayStatusMenu = () => {
  const dropdownMenu = document.querySelector(".dropdown-user-status");
  const userInfo = document.querySelector(".user-info");

  if (dropdownMenu) {
    userInfo.addEventListener("click", (e) => {
      if (e.target.closest(".settings")) {
        dropdownMenu.classList.toggle("totally-hidden");
        dropdownMenu.style.transition = "0.3s";
      }
    });

    document.addEventListener("click", function (e) {
      if (!e.target.closest(".settings")) {
        dropdownMenu.classList.add("totally-hidden");
        dropdownMenu.style.transition = "0.3s";
      }
    });
  }
};

export { displayStatusMenu };
