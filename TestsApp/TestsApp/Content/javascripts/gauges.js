(function() {

  $(function() {
    var blue, borderBlue, darkBlue, darkPlum, grad, green, lightBlue, likes, mediumBlue, orange, plum, red, requests, textBlue, turquoise, unique, views, visitors, visits, yellow;
    yellow = "#F0C22E";
    orange = "#FF8330";
    red = "#DB3535";
    plum = "#CA6EFF";
    blue = "#2191ED";
    turquoise = "#39c5aa";
    green = "#63A822";
    lightBlue = "#aad7ea";
    mediumBlue = "#67a0be";
    borderBlue = "#7998aa";
    darkBlue = "#50769b";
    textBlue = "#33566a";
    darkPlum = "#6c5e6d";
    grad = [lightBlue, mediumBlue, darkPlum];
    if ($("#visitors-gauge").length) {
      visitors = new JustGage({
        id: "visitors-gauge",
        value: 504,
        min: 0,
        max: 1000,
        title: "VISITORS",
        levelColors: grad,
        levelColorsGradient: true,
        gaugeWidthScale: 0.2,
        titleFontColor: "#888",
        valueFontColor: textBlue
      });
    }
    if ($("#visits-gauge").length) {
      visits = new JustGage({
        id: "visits-gauge",
        value: 439,
        min: 0,
        max: 1000,
        title: "NEW VISITS",
        levelColors: grad,
        levelColorsGradient: true,
        gaugeWidthScale: 0.2,
        titleFontColor: "#888",
        valueFontColor: textBlue
      });
    }
    if ($("#unique-gauge").length) {
      unique = new JustGage({
        id: "unique-gauge",
        value: 381,
        min: 0,
        max: 500,
        title: "UNIQUE VISITORS",
        levelColors: grad,
        levelColorsGradient: true,
        gaugeWidthScale: 0.2,
        titleFontColor: "#888",
        valueFontColor: textBlue
      });
    }
    if ($("#views-gauge").length) {
      views = new JustGage({
        id: "views-gauge",
        value: 988,
        min: 0,
        max: 1500,
        title: "PAGE VIEWS",
        levelColors: grad,
        levelColorsGradient: true,
        gaugeWidthScale: 0.2,
        titleFontColor: "#888",
        valueFontColor: textBlue
      });
    }
    if ($("#likes-gauge").length) {
      likes = new JustGage({
        id: "likes-gauge",
        value: 204,
        min: 0,
        max: 500,
        title: "LIKES",
        levelColors: grad,
        levelColorsGradient: true,
        gaugeWidthScale: 0.2,
        titleFontColor: "#888",
        valueFontColor: textBlue
      });
    }
    if ($("#requests-gauge").length) {
      return requests = new JustGage({
        id: "requests-gauge",
        value: 32,
        min: 0,
        max: 100,
        title: "REQUESTS",
        levelColors: grad,
        levelColorsGradient: true,
        gaugeWidthScale: 0.2,
        titleFontColor: "#888",
        valueFontColor: textBlue
      });
    }
  });

}).call(this);
