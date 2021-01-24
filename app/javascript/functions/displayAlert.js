"use strict";

const displayAlert = (content) => {
  let html = `
    <div class="reminder d-flex align-items-center justify-content-bewteen new-user-online text-white">
        <p class="mb-0 mr-4">${content}</p>
    </div>`;

  document.body.insertAdjacentHTML("beforeend", html);

  setTimeout(() => {
    const msg = document.querySelector(".reminder:last-child");
    msg.classList.add("totally-hidden");
  }, 2000);
};

export { displayAlert };
