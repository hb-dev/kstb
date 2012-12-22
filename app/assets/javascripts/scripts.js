
$(function () {
var now = new Date();

    $('#entry_start_pit').mobiscroll().datetime({
        minDate: new Date(now.getFullYear(), now.getMonth(), now.getDate()),
        theme: 'android-ics light',
        lang: 'de',
        display: 'modal',
        mode: 'mixed'
    });  	
})
