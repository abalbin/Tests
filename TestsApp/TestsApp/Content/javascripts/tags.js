(function() {

  $(function() {
    var excludes, pressedUp, whenAddingTag;
    pressedUp = function(e) {
      return console.log("pressed up");
    };
    whenAddingTag = function(tag) {
      return console.log(tag);
    };
    excludes = function(tag) {
      return tag.indexOf("!") !== -1;
    };
    $(".light-blue-tags").tags({
      suggestions: ["this is", "the list", "suggestions", "for these", "awesome tags"],
      tagClass: "label light-blue inverse"
    });
    $(".medium-blue-tags").tags({
      tagClass: "label medium-blue"
    });
    $(".dark-blue-tags").tags({
      tagClass: "label dark-blue"
    });
    $(".dark-plum-tags").tags({
      tagClass: "label dark-plum"
    });
    $(".text-blue-tags").tags({
      tagClass: "label text-blue"
    });
    $(".inverse-tags").tags({
      tagClass: "label label-inverse"
    });
    $(".custom-tags").tags({
      promptText: "Custom prompt...",
      tagClass: "label"
    });
    $(".yellow-tags").tags({
      tagClass: "label yellow inverse"
    });
    $(".orange-tags").tags({
      tagClass: "label orange"
    });
    $(".red-tags").tags({
      tagClass: "label red"
    });
    $(".plum-tags").tags({
      tagClass: "label plum"
    });
    $(".turquoise-tags").tags({
      tagClass: "label turquoise"
    });
    return $(".green-tags").tags({
      tagClass: "label green"
    });
  });

  /* some examples with extra options
    $(".light-blue-tags").tags
      suggestions: ["here", "are", "some", "suggestions"]
      popoverData: ["What a wonderful day", "to make some stuff", "up so that I", "can show it works"]
      tagData: ["tag a", "tag b", "tag c", "tag d"]
      excludeList: ["excuse", "my", "vulgarity"]
      excludes: excludes
      tagClass: "btn light-blue inverse"
  
    $(".medium-blue-tags").tags
      suggestions: ["there", "were", "some", "suggested", "terms", "super", "secret", "stuff"]
      restrictTo: ["restrict", "to", "these"]
      whenAddingTag: whenAddingTag
      pressedUp: pressedUp
      tagClass: "btn medium-blue"
  
    $(".dark-blue-tags").tags
      tagData: ["alphabet", "soup", "bouncy", "castle"]
      tagClass: "label dark-blue"
  
    $(".inverse-tags").tags
      tagData: ["alphabet", "soup", "bouncy", "castle"]
      tagClass: "btn btn-inverse"
  
    $(".custom-tags").tags
      promptText: "Custom prompt..."
      tagClass: "label blue"
  
    # Custom colors
    $(".yellow-tags").tags
      suggestions: ["here", "are", "some", "suggestions"]
      popoverData: ["What a wonderful day", "to make some stuff", "up so that I", "can show it works"]
      tagData: ["tag a", "tag b", "tag c", "tag d"]
      excludeList: ["excuse", "my", "vulgarity"]
      excludes: excludes
      tagClass: "btn yellow inverse"
  
    $(".orange-tags").tags
      tagData: ["alphabet", "soup", "bouncy", "castle"]
      tagClass: "btn orange"
  
    $(".red-tags").tags
      tagData: ["alphabet", "soup", "bouncy", "castle"]
      tagClass: "btn red"
  
    $(".plum-tags").tags
      tagData: ["alphabet", "soup", "bouncy", "castle"]
      tagClass: "btn plum"
  
    $(".turquoise-tags").tags
      tagData: ["alphabet", "soup", "bouncy", "castle"]
      tagClass: "label turquoise"
  
    $(".green-tags").tags
      tagData: ["alphabet", "soup", "bouncy", "castle"]
      tagClass: "label green"
  */


}).call(this);
