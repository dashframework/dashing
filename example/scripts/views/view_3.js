let ModalTemplate = require('../templates/template_3.ejs')

export default class extends Backbone.View {
    initialize() {
        this.listenTo(this.modal, 'click', this.render);
    }
    modalSize(){
        return 'modal-large'
    }
    render() {
        this.$el.html(ModalTemplate());
        return this;
    }
}