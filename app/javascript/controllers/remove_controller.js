import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  removeElement() {
    this.element.remove()
  }

  emptyElement(){
    this.element.textContent = ""
  }
}
