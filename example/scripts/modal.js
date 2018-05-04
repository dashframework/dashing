import ModalView from "./view.js";

$(function () {
    function showCloseableModal(editNeedView) {
        let dashModal = new DashModal.View({
            modalSize: 'dash-overlay',
            hasXButton: true,
            shouldCloseOnEscape: true,
            shouldCloseOnOverlay: true,
            view: editNeedView
        });
        dashModal.show();
    };
    $("[data-id=show-modal]").click(function () {
        let modalContainer = document.querySelector("[data-id=modal-container]")
        showCloseableModal(new ModalView());
    });   
});

