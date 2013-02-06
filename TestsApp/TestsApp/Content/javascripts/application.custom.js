$$('input.masked').each(function (input) {
    input.meiomask(input.get('data-meiomask'), JSON.decode(input.get('data-meiomask-options')));
});

$(document).ready(function () {
    $('.data-table-examen').dataTable({
        "bJQueryUI": true,
        "sPaginationType": "full_numbers",
        "sDom": '<""l>t<"F"fp>'
    }).columnFilter({
        sPlaceHolder: "head:before",
        aoColumns: [{ type: "text" },
                    { type: "text" },
                    { type: "text" },
                    { type: "text" },
                    { type: "text" },
                    { type: "text" },
                    { type: "text" },
                    { type: "text" }]

    });
});