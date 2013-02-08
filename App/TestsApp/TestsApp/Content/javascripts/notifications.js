$(function(){
    $('.sticky-notification').click(function(){

        var unique_id = $.gritter.add({
            title: 'Sticky notification',
            text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et ' +
                '<a href="#" style="color:#aad7ea">magnis dis parturient</a> montes, nascetur ridiculus mus.',
            image: '/images/users/user3.png',
            sticky: true,
            time: '',
            class_name: 'my-sticky-class'
        });

        return false;
    });

    $('.regular-notification').click(function(){

        $.gritter.add({
            title: 'Regular notification',
            text: 'Will automatically fade out in a couple of seconds. Vivamus eget tincidunt velit.' +
                ' Cum sociis natoque penatibus et <a href="#" style="color:#aad7ea">magnis dis parturient</a> montes, nascetur ridiculus mus.',
            image: '/images/users/user3.png',
            sticky: false,
            time: ''
        });

        return false;
    });

    $('.max-notification').click(function(){

        $.gritter.add({
            title: 'Max notification - maximum 3 notices on screen at one time!',
            text: 'Will automatically fade out in a couple of seconds. Vivamus eget tincidunt velit. Cum sociis natoque penatibus' +
                ' et <a href="#" style="color:#aad7ea">magnis dis parturient</a> montes, nascetur ridiculus mus.',
            image: '/images/users/user3.png',
            sticky: false,
            before_open: function(){
                if($('.gritter-item-wrapper').length == 3)
                {
                    return false;
                }
            }
        });
        return false;
    });

    $('.noimage-notification').click(function(){

        $.gritter.add({
            title: 'Notification witout an image',
            text: 'Will automatically fade out in a couple of seconds. Vivamus eget tincidunt velit. Cum sociis natoque' +
                ' penatibus et <a href="#" style="color:#ccc">magnis dis parturient</a> montes, nascetur ridiculus mus.'
        });
        return false;
    });

    $('.light-notification').click(function(){

        $.gritter.add({
            title: 'Light color notification',
            text: 'Add class="gritter-light" to your $.gritter.add or globally to $.gritter.options.class_name',
            class_name: 'gritter-light'
        });
        return false;
    });

    $('.regular-with-callbacks-notification').click(function(){

        $.gritter.add({
            title: 'A notification with callbacks',
            text: 'The callback is...',
            before_open: function(){
                alert('I am called before the notification opens');
            },
            after_open: function(e){
                alert("I am called after the notice opens: \nI am passed the jQuery object for the created Gritter element...\n" + e);
            },
            before_close: function(e, manual_close){
                var manually = (manual_close) ? 'The "X" was clicked to close me!' : '';
                alert("I am called before it closes: I am passed the jQuery object for the Gritter element... \n" + manually);
            },
            after_close: function(e, manual_close){
                var manually = (manual_close) ? 'The "X" was clicked to close me!' : '';
                alert('I am called after it closes. ' + manually);
            }
        });
        return false;
    });

    $('.sticky-with-callbacks-notification').click(function(){

        $.gritter.add({
            title: 'Sticky notification with callbacks',
            text: 'Sticky notice.. sticky sticky notice...',
            sticky: true,
            before_open: function(){
                alert('I am a sticky called before it opens');
            },
            after_open: function(e){
                alert("I am a sticky called after it opens: \nI am passed the jQuery object for the created Gritter element...\n" + e);
            },
            before_close: function(e){
                alert("I am a sticky called before it closes: I am passed the jQuery object for the Gritter element... \n" + e);
            },
            after_close: function(){
                alert('I am a sticky called after it closes');
            }
        });
        return false;
    });

    $("#remove-all-notifications").click(function(){
        $.gritter.removeAll();
        return false;
    });

    $(".remove-all-with-callbacks").click(function(){

        $.gritter.removeAll({
            before_close: function(e){
                alert("I am called before all notifications are closed.  I am passed the jQuery object containing all  of Gritter notifications.\n" + e);
            },
            after_close: function(){
                alert('I am called after everything has been closed.');
            }
        });
        return false;
    });
});
