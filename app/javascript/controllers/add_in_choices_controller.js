import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-in-choices"
export default class extends Controller {
  static targets = ["choice" , "photo"]
  connect() {

  }
  // async refreshContent(event) {
  //   const target = this.hasContentTarget ? this.contentTarget : this.element;
  //   target.style.opacity = .5;
  //   const response = await fetch(this.urlValue);
  //   target.innerHTML = await response.text();
  //   target.style.opacity = 1;
}
  add(event) {
    // new_option = event.target.dataset.optionId
    console.log(event.target.dataset.optionId)


    // fetch(this.choiceTarget.action, {
    //   method: "POST",
    //   headers: { "Accept": "application/json" },
    //   body: new FormData(this.choiceTarget)
    // })
    //   .then(response => response.json())
    //   .then((data) => {
    //     console.log(data)
    //   })

    // new_option_id = event.target.dataset.optionId
    // optionchoice = OptionChoice.new(choice_id: @choice.id, option_id: new_option_id)
    // optionchoice.save
  }
}
