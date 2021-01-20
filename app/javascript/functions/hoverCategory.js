"use strict";

const hoverCategory = () => {
  const list = document.querySelector(".category-list");
  list.addEventListener("mouseenter", (e) => {
    if (!e.target.classList.contains("category")) return;

    if (!e.target.classList.contains("selected-cat")) {
      e.target.classList.add("hover-cat");
    }
  });
};

// export { hoverCategory };
