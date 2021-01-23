"use strict";

const submitExploreForm = () => {
  const form = document.querySelector(".explore-form");

  if (form) {
    form.addEventListener("keydown", function (e) {
      if (e.key === "Enter") this.submit();
    });
  }
};

export { submitExploreForm };
