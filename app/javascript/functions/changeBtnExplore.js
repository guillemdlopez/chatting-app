"use strict";

const changeBtnExplore = () => {
  const exploreBtn = document.querySelector(".explore-btn");

  if (exploreBtn) {
    exploreBtn.addEventListener("mouseover", (e) => {
      e.target.innerHTML = "<i class='fas fa-arrow-down'></i>";
      // e.target.style.transition = "0.5s";
    });

    exploreBtn.addEventListener("mouseleave", (e) => {
      e.target.innerHTML = "Explore";
    });
  }
};

export { changeBtnExplore };
