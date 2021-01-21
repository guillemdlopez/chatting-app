// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("jquery");

// External libraries
import "bootstrap";
import "@fortawesome/fontawesome-free/js/all";

import { initChatroomCable } from "../channels/chatroom_channel";
import { initChatScrolling } from "../functions/initChatScrolling";
import { selectCategory, selectHome } from "../functions/selectCategory";
import { hoverCategory } from "../functions/hoverCategory";
import { scrollToCategories } from "../functions/scrollToCategories";
import { changeBtnExplore } from "../functions/changeBtnExplore";
import { submitBtnDisabled } from "../functions/submitBtnDisabled";

// import "../../assets/stylesheets/application";

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

document.addEventListener("turbolinks:load", () => {
  initChatroomCable();
  initChatScrolling();
  selectCategory();
  // hoverCategory();
  scrollToCategories();
  changeBtnExplore();
  submitBtnDisabled();
  selectHome();
});
