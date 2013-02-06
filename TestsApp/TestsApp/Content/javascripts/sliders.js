(function() {

  $(function() {
    $(".slider-min").slider({
      range: "min",
      min: 1,
      max: 100
    });
    $(".slider-max").slider({
      range: "max",
      min: 1,
      max: 100
    });
    $(".slider-range").slider({
      range: true,
      min: 0,
      max: 100
    });
    $(".slider-vertical").slider({
      orientation: "vertical",
      range: "min",
      min: 0,
      max: 100
    });
    $(".slider-10").slider({
      value: 10
    });
    $(".slider-20").slider({
      value: 20
    });
    $(".slider-30").slider({
      value: 30
    });
    $(".slider-40").slider({
      value: 40
    });
    $(".slider-50").slider({
      value: 50
    });
    $(".slider-60").slider({
      value: 60
    });
    $(".slider-70").slider({
      value: 20
    });
    $(".slider-70").slider({
      value: 70
    });
    $(".slider-80").slider({
      value: 80
    });
    $(".slider-90").slider({
      value: 90
    });
    $(".slider-20-40").slider({
      values: [20, 40]
    });
    $(".slider-20-60").slider({
      values: [20, 60]
    });
    $(".slider-20-80").slider({
      values: [20, 80]
    });
    $(".slider-30-60").slider({
      values: [30, 60]
    });
    $(".slider-30-80").slider({
      values: [60, 80]
    });
    return $(".slider-30-90").slider({
      values: [30, 90]
    });
  });

}).call(this);
