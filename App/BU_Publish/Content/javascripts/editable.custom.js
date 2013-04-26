$(function () {
    $('#TituloExamen').editables(
            {
                beforeEdit: function (field) {
                    field.val(this.text());
                },
                beforeFreeze: function (display) {
                    if (this.val() == '') return false;
                    else display.text(this.val());
                }
            });
    $('#PuntajeExamen').editables(
             {
                 beforeEdit: function (field) {
                     field.val(this.text());
                 },
                 beforeFreeze: function (display) {
                     if (this.val() == '') return false;
                     else display.text(this.val());
                 }
             });

    $('#TiempoExamen').editables(
             {
                 beforeEdit: function (field) {
                     field.val(this.text());
                 },
                 beforeFreeze: function (display) {
                     if (this.val() == '') return false;
                     else display.text(this.val());
                 }
             });

    $('#LineaExamen').editables(
             {
                 beforeEdit: function (field) {
                     field.val(this.text());
                 },
                 beforeFreeze: function (display) {
                     if (this.val() == '') return false;
                     else display.text(this.val());
                 }
             });

});