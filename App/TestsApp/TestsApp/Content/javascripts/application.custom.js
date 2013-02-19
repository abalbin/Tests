$$('[class*=masked]').each(function (input) {
    input.meiomask(input.get('data-meiomask'), JSON.decode(input.get('data-meiomask-options')));
});

$(document).ready(function () {
    jQuery.validator.addMethod(
        'date',
        function (value, element, params) {
            if (this.optional(element)) {
                return true;
            };
            var result = false;
            try {
                $.datepicker.parseDate('dd/mm/yyyy', value);
                result = true;
            } catch (err) {
                result = false;
            }
            return result;
        },
        ''
    );
});