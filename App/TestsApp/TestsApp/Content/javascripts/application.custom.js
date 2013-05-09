$$('[class*=masked]').each(function (input) {
    input.meiomask(input.get('data-meiomask'), JSON.decode(input.get('data-meiomask-options')));
});

$.validator.methods.date = function (value, element) {
    if (element != null)
        return this.optional(element) || Globalize.parseDate(value, "dd/MM/yyyy") !== null;
    else
        return false;
}

$(function () {
    $(".chzn-select").chosen();
    $(".alert").alert();
    $('.social-link').tooltip();
    $(":radio").uniform();
    $(":checkbox").uniform();
    $("input[type='checkbox'], input[type='radio']").uniform();
    if ($(".datepickerAsesoria").length) {
        $('.datepickerAsesoria').datepicker().on('changeDate', function (ev) {
            alert(ev.date);
        });
    }
    if ($(".datepicker").length) {
        $('.datepicker').datepicker();
    }
    $('.data-table').dataTable({
        
        "oLanguage": {
            "sProcessing":     "Procesando...",
            "sLengthMenu":     "Mostrar _MENU_ registros",
            "sZeroRecords":    "No se encontraron resultados",
            "sEmptyTable":     "Ningún dato disponible en esta tabla",
            "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix":    "",
            "sSearch":         "Buscar:",
            "sUrl":            "",
            "sInfoThousands":  ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst":    "Primero",
                "sLast":     "Último",
                "sNext":     "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            }
        },
        "bJQueryUI": true,
        "sPaginationType": "full_numbers",
        "sDom": '<""l>t<"F"fp>'
    });
    $(".pagination").pagination({
        items: 100,
        itemsOnPage: 12
    });
    $(".pagination.light-pag").pagination({
        items: 100,
        itemsOnPage: 12,
        cssStyle: 'light-theme'
    });
    $(".pagination.dark-pag").pagination({
        items: 100,
        itemsOnPage: 12,
        cssStyle: 'dark-theme'
    });
    $(".pagination.blue-pag").pagination({
        items: 100,
        itemsOnPage: 12,
        cssStyle: 'blue-theme'
    });
    if ($("#modal-gallery").length) {
        $("#modal-gallery").on("load", function () {
            var modalData;
            return modalData = $(this).data("modal");
        });
    }
});

