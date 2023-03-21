import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-in-choices"
export default class extends Controller {
  static targets = ["choice" , "photo"]
  connect() {

  }
  add(event) {
    // new_option = event.target.dataset.optionId
    console.log(event.target.dataset.optionId)

    // new_option_id = event.target.dataset.optionId
    // optionchoice = OptionChoice.new(choices_id: @choice.id, options_id: new_option_id)
    // optionchoice.save
  }
}
