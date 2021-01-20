"use strict";

const scrollToCategories = () => {
  const exploreBtn = document.querySelector(".explore-btn");
  if (exploreBtn) {
    exploreBtn.addEventListener("click", (e) => {
      document
        .querySelector(".popular-communities")
        .scrollIntoView({ behavior: "smooth" });
    });
  }
};

export { scrollToCategories };
