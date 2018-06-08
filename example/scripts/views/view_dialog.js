let ModalTemplate = require('../templates/modal_dialog.ejs')

export default class extends Backbone.View {
    initialize() {
    }
    modalSize(){
        return 'modal'
    }
    render() {
        this.$el.html(ModalTemplate());
        return this;
    }
}
