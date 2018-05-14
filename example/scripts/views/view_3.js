let ModalTemplate = require('../templates/template_3.ejs')

export default class extends Backbone.View {
    initialize() {
    }
    modalSize(){
        return 'modal-large'
    }
    render() {
        this.$el.html(ModalTemplate());
        return this;
    }
}