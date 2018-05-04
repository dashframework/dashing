let ModalTemplate = require('./template.ejs')

export default class extends Backbone.View {
    events() {
        return {
            "click [data-id=show-modal]": "render"
        }
    }
    initialize() {
        this.listenTo(this.model, 'click', this.render);
    }

    render() {
        this.$el.html(ModalTemplate());
        return this;
    }
}