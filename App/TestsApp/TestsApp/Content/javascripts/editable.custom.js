$(function () {
    $('#TituloExamen').editables(
            {
                beforeEdit: function (field) {
                    field.val(this.text());
                },
                beforeFreeze: function (display) {
                    display.text(this.val());
                }
            });
});