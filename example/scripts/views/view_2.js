let ModalTemplate = require('../templates/template_2.ejs')

export default class extends Backbone.View {
    
    initialize() {
        this.listenTo(this.modal, 'click', this.render);
    }
    modalSize(){
        return 'modal-small'
    }
    render() {
        this.$el.html(ModalTemplate());
        return this;
    }
}