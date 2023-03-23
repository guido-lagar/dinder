import { Controller } from "@hotwired/stimulus"
let i = 1;
// Connects to data-controller="add-in-choices"
export default class extends Controller {
  static targets = ["choice" , "photo"]
  connect() {

  }

  add(event) {

    console.log(event.target.dataset.optionId)
    console.log(this.clickCount)

    window.location.reload();
    i +=1
    if i == 5

  }
}
