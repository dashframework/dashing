let ModalTemplate = require('../templates/modal_data.ejs')

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
