import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// const toggleButton = document.getElementsByClassName('navbar-toggler')[0]
// const navbarlinks = document.getElementsByClassName('navbar-link')

// toggleButton.addEventListener('click', () => {
//   console.log("test")
//   navbarlinks.classList.toggle('active')
// })
