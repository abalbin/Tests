$$('input.masked').each(function (input) {
    input.meiomask(input.get('data-meiomask'), JSON.decode(input.get('data-meiomask-options')));
});