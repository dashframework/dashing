import ViewOne from "./views/view_1.js";
import ViewTwo from "./views/view_2.js";
import ViewThree from "./views/view_3.js";
import ViewFour from "./views/view_2.js"
import ViewFive from './views/view_1.js';
import ViewSix from './views/view_3.js';

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
    let modalOne = document.querySelector("[data-id=show-modal-1]")
    let modalTwo = document.querySelector("[data-id=show-modal-2]")
    let modalThree = document.querySelector("[data-id=show-modal-3]")
    let modalFour = document.querySelector("[data-id=show-modal-4]")
    let modalFive = document.querySelector("[data-id=show-modal-5]")
    let modalSix = document.querySelector("[data-id=show-modal-6]")
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
