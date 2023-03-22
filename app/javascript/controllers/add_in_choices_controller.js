import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-in-choices"
export default class extends Controller {
  static targets = ["choice" , "photo"]
  connect() {

  }
  initialize(event){
    event.clickCount = 0
  }

  add(event) {
    event.clickCount +=1
    console.log(event.target.dataset.optionId)
    console.log(this.clickCount)
    
    window.location.reload();

  }
}
