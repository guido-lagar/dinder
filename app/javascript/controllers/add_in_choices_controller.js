import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-in-choices"
export default class extends Controller {
  static targets = ["choice" , "photo"]
  connect() {

  }
  add(event) {
    // new_option = event.target.dataset.optionId
    console.log(event.target.dataset.optionId)
    console.log(this.choiceTarget)

    fetch(this.choiceTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.choiceTarget)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })

    // new_option_id = event.target.dataset.optionId
    // optionchoice = OptionChoice.new(choice_id: @choice.id, option_id: new_option_id)
    // optionchoice.save
  }
}
