let ModalTemplate = require('../templates/template_1.ejs')

export default class extends Backbone.View {
    initialize() {
        this.listenTo(this.modal, 'click', this.render);
    }
    modalSize(){
        return 'modal'
    }
    render() {
        this.$el.html(ModalTemplate());
        return this;
    }
}