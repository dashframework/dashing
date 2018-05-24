import ViewOne from "./views/view_default.js";
import ViewTwo from "./views/view_small.js";
import ViewThree from "./views/view_data.js";
import ViewFour from "./views/view_video.js"
import ViewFive from './views/view_dialog.js';
import ViewSix from './views/view_large.js';

$(function () {
    function showCloseableModal(editNeedView) {
        let dashModal = new DashModal.View({
            modalSize: editNeedView.modalSize(),
            hasXButton: true,
            shouldCloseOnEscape: true,
            shouldCloseOnOverlay: true,
            view: editNeedView
        });
        dashModal.show();
    };
    let modalOne = document.querySelector("[data-id=show-modal-default]")
    let modalTwo = document.querySelector("[data-id=show-modal-small]")
    let modalThree = document.querySelector("[data-id=show-modal-data]")
    let modalFour = document.querySelector("[data-id=show-modal-video]")
    let modalFive = document.querySelector("[data-id=show-modal-dialog]")
    let modalSix = document.querySelector("[data-id=show-modal-large]")
    $(document).click(function(event) {
        if (event.target === modalOne) {
            showCloseableModal(new ViewOne());
        }
        if (event.target === modalTwo) {
            showCloseableModal(new ViewTwo());
        }
        if (event.target === modalThree) {
            showCloseableModal(new ViewThree());
        }
        if (event.target === modalFour) {
            showCloseableModal(new ViewFour());
        }
        if (event.target === modalFive) {
            showCloseableModal(new ViewFive());
        }
        if (event.target === modalSix) {
            showCloseableModal(new ViewSix());
        }
    })
});
