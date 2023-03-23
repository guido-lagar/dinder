import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-in-choices"
export default class extends Controller {
  static targets = ["choice" , "photo"]
  connect() {

    console.log(this.element.dataset.choices)
  }
  initialize(){

  }

  add(event) {

    if(this.element.dataset.choices > 4) {

    } else {
      // window.location.reload()
    };

  }
}
