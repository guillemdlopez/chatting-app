"use strict";

const selectCategory = () => {
  const list = document.querySelector(".category-list");
  const categoryItems = document.querySelectorAll(".category");
  if (list) {
    list.addEventListener("click", (e) => {
      if (!e.target.classList.contains("category")) return;
      categoryItems.forEach((cat) => cat.classList.remove("selected-cat"));

      e.target.classList.add("selected-cat");
    });
  }
};

export { selectCategory };
