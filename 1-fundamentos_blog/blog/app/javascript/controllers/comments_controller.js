import { Controller } from "stimulus";

export default class extends Controller {
  connect() {
    console.log("Stimulus controller está ativo");
  }

  toggleForm(event) {
    console.log("Form");
    event.preventDefault();
    event.stopPropagation();
    const form_id = event.params["form"];
    const comment_body_id = event.params["body"];
    const form = document.getElementById(form_id);
    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    const body = document.getElementById(comment_body_id);
    body.classList.toggle("d-none");
  }
}
