import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-in-choices"
export default class extends Controller {
  static targets = ["choice"]
  connect() {
    console.log(this.element)
    console.log(this.choiceTarget)
  }
}
