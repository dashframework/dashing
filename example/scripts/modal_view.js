import Backbone from "backbone"

export default class extends Backbone.View {

  render() {
    this.$el.html(
      '<div class="modal-header"><h3>Dashing Modal</h3></div>' +
      '<div class="modal-content"><p>Example content in a modal for all the people to see. It is pretty cool huh? I love content. Especially stuff that does not make sense.</p></div>' +
      '<div class="modal-footer">Footer content</div>'
    )
    return this
  }

}
