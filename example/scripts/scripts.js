function toggle(toggleThis, obj) {
    var $input = $(obj);
    if ($input.prop('checked')) $(toggleThis).hide();
    else $(toggleThis).show();
}
