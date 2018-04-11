import ShowModalView from "scripts/show_modal.js"

$(() => {
  DashModal.Navigation.Modal.empty()

  new ShowModalView({
    el: $("[data-id=show-modal-container-one]"),
    hasXButton: true
  })

  new ShowModalView({
    el: $("[data-id=show-modal-container-two]"),
    shouldCloseOnOverlay: true
  })

  new ShowModalView({
    el: $("[data-id=show-modal-container-three]"),
    shouldCloseOnEscape: true
  })

  new ShowModalView({
    el: $("[data-id=show-modal-container-four]"),
    shouldCloseOnEscape: true,
    shouldCloseOnOverlay: true,
    hasXButton: true
  })

  new ShowModalView({
    el: $("[data-id=show-modal-container-five]"),
    hasXButton: true,
    container: $('[data-id=custom-modal-container]')
  })

  new PushModalView({
    el: $("[data-id=push-navigation-modal-container]"),
    hasXButton: true
  })
});
