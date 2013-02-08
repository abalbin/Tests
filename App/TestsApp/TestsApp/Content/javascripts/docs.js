(function() {

  $(function() {
    $(".chzn-select").chosen();
    $(".alert").alert();
    $('.social-link').tooltip();
    $(":radio").uniform();
    $(":checkbox").uniform();
    $("input[type='checkbox'], input[type='radio']").uniform();
    if ($(".datepicker").length) {
      $('.datepicker').datepicker();
    }
    $('.data-table').dataTable({
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
    new Faq($(".faq-list"));
    if ($("#modal-gallery").length) {
      $("#modal-gallery").on("load", function() {
        var modalData;
        return modalData = $(this).data("modal");
      });
    }
    $("span.pie").peity("pie");
    $("span.line").peity("line");
    return $("span.bar").peity("bar");
  });

}).call(this);
