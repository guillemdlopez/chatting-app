"use strict";

const selectCategory = () => {
  const list = document.querySelector(".category-list");
  const categoryItems = document.querySelectorAll(".category");
  const homeItem = document.querySelector(".home-item");
  if (list) {
    list.addEventListener("click", (e) => {
      if (!e.target.classList.contains("category")) return;
      categoryItems.forEach((cat) => cat.classList.remove("selected-cat"));
      homeItem.classList.add("unselected");

      e.target.classList.add("selected-cat");
    });
  }
};

const selectHome = () => {
  const homeItem = document.querySelector(".home-item");
  const categoryItems = document.querySelectorAll(".category");

  if (homeItem) {
    homeItem.addEventListener("click", (e) => {
      console.log(e.target);
      if (e.target.classList.contains("unselected")) {
        e.target.classList.remove("unselected");
        e.target.classList.add("selected-cat");
      }
      categoryItems.forEach((cat) => cat.classList.remove("selected-cat"));
    });
  }
};

export { selectCategory, selectHome };
