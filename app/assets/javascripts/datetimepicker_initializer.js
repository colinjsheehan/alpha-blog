
/* globals datetimepicker, $ */
"use strict";

// $(function(){
//   $('[data-behavior=daterangepicker]').daterangepicker({
//     locale: { format: 'DD/MM/YYYY'},
//     cancelLabel: 'Clear'
//   });

//   $('[data-behavior=daterangepicker]').on('cancel.daterangepicker', function(){
//     $(this).val(' ');
//   });

// });

  $(function () {
    $('#datetimepicker1').datetimepicker({
         format: 'YYYY-MM-DD HH:mm',
         inline: true,
         sideBySide: true
            });
  });