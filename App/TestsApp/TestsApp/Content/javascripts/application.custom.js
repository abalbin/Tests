$$('[class*=masked]').each(function (input) {
    input.meiomask(input.get('data-meiomask'), JSON.decode(input.get('data-meiomask-options')));
});

$.validator.methods.date = function (value, element) {
    return this.optional(element) || Globalize.parseDate(value, "dd/MM/yyyy") !== null;
}