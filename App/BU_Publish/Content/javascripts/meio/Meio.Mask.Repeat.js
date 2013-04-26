/*
---

name: Meio.Mask.Repeat

description: A mask that is defined by a pattern that will match each of the inputted chars.

authors:
 - Fábio Miranda Costa

requires:
 - Meio.Mask

license: MIT-style license

provides: [Meio.Mask.Repeat]

...
*/

Meio.Mask.Repeat = new Class({

    Extends : Meio.Mask,

    options: {
        mask: '',
        maxLength: 0 // 0 for infinite
    },

    keypress: function(e, o){
        if (this.ignore) return true;
        e.preventDefault();

        var state = this.getCurrentState(e, o);
        var ruleRegex = Meio.Mask.rules[this.options.mask.charAt(0)].regex;
        var args = [this.element, state._char, e.code];
        var maxLength = this.options.maxLength;

        if ((maxLength && state.value.length > maxLength) || (!ruleRegex.test(state._char) && !o.isRemoveKey)){
            this.fireEvent('invalid', args);
        } else {
            this.fireEvent('valid', args);
            this.element.set('value', state.value).setCaretPosition(state.start + (o.isRemoveKey ? 0 : 1));
        }

        return this.parent();
    },

    paste: function(e, o){
        var maskedValue = this.mask(this.element.get('value'));
        this.element.set('value', maskedValue).setCaretPosition(maskedValue.length);
    },

    mask: function(str){
        var strArray = str.split(''),
            ruleRegex = Meio.Mask.rules[this.options.mask.charAt(0)].regex;
        for (var i = 0; i < strArray.length; i++){
            if (!ruleRegex.test(strArray[i])){
                strArray.splice(i, 1);
                i--;
            }
        }
        var maxLength = this.options.maxLength;
        return strArray.join('').substring(0, maxLength ? maxLength : strArray.length);
    }

});
