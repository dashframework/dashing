let ModalTemplate = require('../templates/modal_small.ejs')

export default class extends Backbone.View {
    initialize() {
    }
    modalSize(){
        return 'modal-small'
    }
    render() {
        this.$el.html(ModalTemplate());
        return this;
    }
}
