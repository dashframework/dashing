let Backbone = require("../../bower_components/backbone/backbone")
let SampleModalView = require("modal_view")

class ShowModal extends Backbone.View {
  initialize(options) {
   this.options = options
  }

  events() {
   return {"click [data-id=show-modal]": "showModal"}
  }

  showModal() {
   modal = new DashModal.View({
     view: new SampleModalView(),
     onCloseCallback: this.onClose,
     hasXButton: this.options.hasXButton,
     shouldCloseOnEscape: this.options.shouldCloseOnEscape,
     shouldCloseOnOverlay: this.options.shouldCloseOnOverlay,
     container: this.options.container
   })
   modal.show()
  }

  onClose() {
   console.log("On Close")
  }

}

module.exports = ShowModal
