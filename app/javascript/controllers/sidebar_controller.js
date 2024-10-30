import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["mobile", "desktop", "menu", "backdrop"];

  connect() {
    console.log("Sidebar controller connected");
  }

  open() {
    this.mobileTarget.classList.remove("hidden");
    this.menuTarget.classList.remove("-translate-x-full");
    this.menuTarget.classList.add("translate-x-0");
    this.backdropTarget.classList.remove("opacity-0");
    this.backdropTarget.classList.add("opacity-100");
  }

  close() {
    this.mobileTarget.classList.add("hidden");
    this.menuTarget.classList.remove("translate-x-0");
    this.menuTarget.classList.add("-translate-x-full");
    this.backdropTarget.classList.remove("opacity-100");
    this.backdropTarget.classList.add("opacity-0");
  }
}
