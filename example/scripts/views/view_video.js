let ModalTemplate = require('../templates/modal_video.ejs')

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
