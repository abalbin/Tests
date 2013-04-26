/* ===================================================
 * bootstrap-transition.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#transitions
 * ===================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================== */



!function ($) {

  "use strict"; // jshint ;_;


  /* CSS TRANSITION SUPPORT (http://www.modernizr.com/)
   * ======================================================= */

  $(function () {

    $.support.transition = (function () {

      var transitionEnd = (function () {

        var el = document.createElement('bootstrap')
          , transEndEventNames = {
               'WebkitTransition' : 'webkitTransitionEnd'
            ,  'MozTransition'    : 'transitionend'
            ,  'OTransition'      : 'oTransitionEnd otransitionend'
            ,  'transition'       : 'transitionend'
            }
          , name

        for (name in transEndEventNames){
          if (el.style[name] !== undefined) {
            return transEndEventNames[name]
          }
        }

      }())

      return transitionEnd && {
        end: transitionEnd
      }

    })()

  })

}(window.jQuery);
/* ==========================================================
 * bootstrap-affix.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#affix
 * ==========================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================== */



!function ($) {

  "use strict"; // jshint ;_;


 /* AFFIX CLASS DEFINITION
  * ====================== */

  var Affix = function (element, options) {
    this.options = $.extend({}, $.fn.affix.defaults, options)
    this.$window = $(window)
      .on('scroll.affix.data-api', $.proxy(this.checkPosition, this))
      .on('click.affix.data-api',  $.proxy(function () { setTimeout($.proxy(this.checkPosition, this), 1) }, this))
    this.$element = $(element)
    this.checkPosition()
  }

  Affix.prototype.checkPosition = function () {
    if (!this.$element.is(':visible')) return

    var scrollHeight = $(document).height()
      , scrollTop = this.$window.scrollTop()
      , position = this.$element.offset()
      , offset = this.options.offset
      , offsetBottom = offset.bottom
      , offsetTop = offset.top
      , reset = 'affix affix-top affix-bottom'
      , affix

    if (typeof offset != 'object') offsetBottom = offsetTop = offset
    if (typeof offsetTop == 'function') offsetTop = offset.top()
    if (typeof offsetBottom == 'function') offsetBottom = offset.bottom()

    affix = this.unpin != null && (scrollTop + this.unpin <= position.top) ?
      false    : offsetBottom != null && (position.top + this.$element.height() >= scrollHeight - offsetBottom) ?
      'bottom' : offsetTop != null && scrollTop <= offsetTop ?
      'top'    : false

    if (this.affixed === affix) return

    this.affixed = affix
    this.unpin = affix == 'bottom' ? position.top - scrollTop : null

    this.$element.removeClass(reset).addClass('affix' + (affix ? '-' + affix : ''))
  }


 /* AFFIX PLUGIN DEFINITION
  * ======================= */

  $.fn.affix = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('affix')
        , options = typeof option == 'object' && option
      if (!data) $this.data('affix', (data = new Affix(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.affix.Constructor = Affix

  $.fn.affix.defaults = {
    offset: 0
  }


 /* AFFIX DATA-API
  * ============== */

  $(window).on('load', function () {
    $('[data-spy="affix"]').each(function () {
      var $spy = $(this)
        , data = $spy.data()

      data.offset = data.offset || {}

      data.offsetBottom && (data.offset.bottom = data.offsetBottom)
      data.offsetTop && (data.offset.top = data.offsetTop)

      $spy.affix(data)
    })
  })


}(window.jQuery);
/* ==========================================================
 * bootstrap-alert.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#alerts
 * ==========================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================== */



!function ($) {

  "use strict"; // jshint ;_;


 /* ALERT CLASS DEFINITION
  * ====================== */

  var dismiss = '[data-dismiss="alert"]'
    , Alert = function (el) {
        $(el).on('click', dismiss, this.close)
      }

  Alert.prototype.close = function (e) {
    var $this = $(this)
      , selector = $this.attr('data-target')
      , $parent

    if (!selector) {
      selector = $this.attr('href')
      selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') //strip for ie7
    }

    $parent = $(selector)

    e && e.preventDefault()

    $parent.length || ($parent = $this.hasClass('alert') ? $this : $this.parent())

    $parent.trigger(e = $.Event('close'))

    if (e.isDefaultPrevented()) return

    $parent.removeClass('in')

    function removeElement() {
      $parent
        .trigger('closed')
        .remove()
    }

    $.support.transition && $parent.hasClass('fade') ?
      $parent.on($.support.transition.end, removeElement) :
      removeElement()
  }


 /* ALERT PLUGIN DEFINITION
  * ======================= */

  $.fn.alert = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('alert')
      if (!data) $this.data('alert', (data = new Alert(this)))
      if (typeof option == 'string') data[option].call($this)
    })
  }

  $.fn.alert.Constructor = Alert


 /* ALERT DATA-API
  * ============== */

  $(document).on('click.alert.data-api', dismiss, Alert.prototype.close)

}(window.jQuery);
/* ============================================================
 * bootstrap-button.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#buttons
 * ============================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ============================================================ */



!function ($) {

  "use strict"; // jshint ;_;


 /* BUTTON PUBLIC CLASS DEFINITION
  * ============================== */

  var Button = function (element, options) {
    this.$element = $(element)
    this.options = $.extend({}, $.fn.button.defaults, options)
  }

  Button.prototype.setState = function (state) {
    var d = 'disabled'
      , $el = this.$element
      , data = $el.data()
      , val = $el.is('input') ? 'val' : 'html'

    state = state + 'Text'
    data.resetText || $el.data('resetText', $el[val]())

    $el[val](data[state] || this.options[state])

    // push to event loop to allow forms to submit
    setTimeout(function () {
      state == 'loadingText' ?
        $el.addClass(d).attr(d, d) :
        $el.removeClass(d).removeAttr(d)
    }, 0)
  }

  Button.prototype.toggle = function () {
    var $parent = this.$element.closest('[data-toggle="buttons-radio"]')

    $parent && $parent
      .find('.active')
      .removeClass('active')

    this.$element.toggleClass('active')
  }


 /* BUTTON PLUGIN DEFINITION
  * ======================== */

  $.fn.button = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('button')
        , options = typeof option == 'object' && option
      if (!data) $this.data('button', (data = new Button(this, options)))
      if (option == 'toggle') data.toggle()
      else if (option) data.setState(option)
    })
  }

  $.fn.button.defaults = {
    loadingText: 'loading...'
  }

  $.fn.button.Constructor = Button


 /* BUTTON DATA-API
  * =============== */

  $(document).on('click.button.data-api', '[data-toggle^=button]', function (e) {
    var $btn = $(e.target)
    if (!$btn.hasClass('btn')) $btn = $btn.closest('.btn')
    $btn.button('toggle')
  })

}(window.jQuery);
/* ==========================================================
 * bootstrap-carousel.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#carousel
 * ==========================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================== */



!function ($) {

  "use strict"; // jshint ;_;


 /* CAROUSEL CLASS DEFINITION
  * ========================= */

  var Carousel = function (element, options) {
    this.$element = $(element)
    this.options = options
    this.options.slide && this.slide(this.options.slide)
    this.options.pause == 'hover' && this.$element
      .on('mouseenter', $.proxy(this.pause, this))
      .on('mouseleave', $.proxy(this.cycle, this))
  }

  Carousel.prototype = {

    cycle: function (e) {
      if (!e) this.paused = false
      this.options.interval
        && !this.paused
        && (this.interval = setInterval($.proxy(this.next, this), this.options.interval))
      return this
    }

  , to: function (pos) {
      var $active = this.$element.find('.item.active')
        , children = $active.parent().children()
        , activePos = children.index($active)
        , that = this

      if (pos > (children.length - 1) || pos < 0) return

      if (this.sliding) {
        return this.$element.one('slid', function () {
          that.to(pos)
        })
      }

      if (activePos == pos) {
        return this.pause().cycle()
      }

      return this.slide(pos > activePos ? 'next' : 'prev', $(children[pos]))
    }

  , pause: function (e) {
      if (!e) this.paused = true
      if (this.$element.find('.next, .prev').length && $.support.transition.end) {
        this.$element.trigger($.support.transition.end)
        this.cycle()
      }
      clearInterval(this.interval)
      this.interval = null
      return this
    }

  , next: function () {
      if (this.sliding) return
      return this.slide('next')
    }

  , prev: function () {
      if (this.sliding) return
      return this.slide('prev')
    }

  , slide: function (type, next) {
      var $active = this.$element.find('.item.active')
        , $next = next || $active[type]()
        , isCycling = this.interval
        , direction = type == 'next' ? 'left' : 'right'
        , fallback  = type == 'next' ? 'first' : 'last'
        , that = this
        , e

      this.sliding = true

      isCycling && this.pause()

      $next = $next.length ? $next : this.$element.find('.item')[fallback]()

      e = $.Event('slide', {
        relatedTarget: $next[0]
      })

      if ($next.hasClass('active')) return

      if ($.support.transition && this.$element.hasClass('slide')) {
        this.$element.trigger(e)
        if (e.isDefaultPrevented()) return
        $next.addClass(type)
        $next[0].offsetWidth // force reflow
        $active.addClass(direction)
        $next.addClass(direction)
        this.$element.one($.support.transition.end, function () {
          $next.removeClass([type, direction].join(' ')).addClass('active')
          $active.removeClass(['active', direction].join(' '))
          that.sliding = false
          setTimeout(function () { that.$element.trigger('slid') }, 0)
        })
      } else {
        this.$element.trigger(e)
        if (e.isDefaultPrevented()) return
        $active.removeClass('active')
        $next.addClass('active')
        this.sliding = false
        this.$element.trigger('slid')
      }

      isCycling && this.cycle()

      return this
    }

  }


 /* CAROUSEL PLUGIN DEFINITION
  * ========================== */

  $.fn.carousel = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('carousel')
        , options = $.extend({}, $.fn.carousel.defaults, typeof option == 'object' && option)
        , action = typeof option == 'string' ? option : options.slide
      if (!data) $this.data('carousel', (data = new Carousel(this, options)))
      if (typeof option == 'number') data.to(option)
      else if (action) data[action]()
      else if (options.interval) data.cycle()
    })
  }

  $.fn.carousel.defaults = {
    interval: 5000
  , pause: 'hover'
  }

  $.fn.carousel.Constructor = Carousel


 /* CAROUSEL DATA-API
  * ================= */

  $(document).on('click.carousel.data-api', '[data-slide]', function (e) {
    var $this = $(this), href
      , $target = $($this.attr('data-target') || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '')) //strip for ie7
      , options = $.extend({}, $target.data(), $this.data())
    $target.carousel(options)
    e.preventDefault()
  })

}(window.jQuery);
/* =============================================================
 * bootstrap-collapse.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#collapse
 * =============================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ============================================================ */



!function ($) {

  "use strict"; // jshint ;_;


 /* COLLAPSE PUBLIC CLASS DEFINITION
  * ================================ */

  var Collapse = function (element, options) {
    this.$element = $(element)
    this.options = $.extend({}, $.fn.collapse.defaults, options)

    if (this.options.parent) {
      this.$parent = $(this.options.parent)
    }

    this.options.toggle && this.toggle()
  }

  Collapse.prototype = {

    constructor: Collapse

  , dimension: function () {
      var hasWidth = this.$element.hasClass('width')
      return hasWidth ? 'width' : 'height'
    }

  , show: function () {
      var dimension
        , scroll
        , actives
        , hasData

      if (this.transitioning) return

      dimension = this.dimension()
      scroll = $.camelCase(['scroll', dimension].join('-'))
      actives = this.$parent && this.$parent.find('> .accordion-group > .in')

      if (actives && actives.length) {
        hasData = actives.data('collapse')
        if (hasData && hasData.transitioning) return
        actives.collapse('hide')
        hasData || actives.data('collapse', null)
      }

      this.$element[dimension](0)
      this.transition('addClass', $.Event('show'), 'shown')
      $.support.transition && this.$element[dimension](this.$element[0][scroll])
    }

  , hide: function () {
      var dimension
      if (this.transitioning) return
      dimension = this.dimension()
      this.reset(this.$element[dimension]())
      this.transition('removeClass', $.Event('hide'), 'hidden')
      this.$element[dimension](0)
    }

  , reset: function (size) {
      var dimension = this.dimension()

      this.$element
        .removeClass('collapse')
        [dimension](size || 'auto')
        [0].offsetWidth

      this.$element[size !== null ? 'addClass' : 'removeClass']('collapse')

      return this
    }

  , transition: function (method, startEvent, completeEvent) {
      var that = this
        , complete = function () {
            if (startEvent.type == 'show') that.reset()
            that.transitioning = 0
            that.$element.trigger(completeEvent)
          }

      this.$element.trigger(startEvent)

      if (startEvent.isDefaultPrevented()) return

      this.transitioning = 1

      this.$element[method]('in')

      $.support.transition && this.$element.hasClass('collapse') ?
        this.$element.one($.support.transition.end, complete) :
        complete()
    }

  , toggle: function () {
      this[this.$element.hasClass('in') ? 'hide' : 'show']()
    }

  }


 /* COLLAPSIBLE PLUGIN DEFINITION
  * ============================== */

  $.fn.collapse = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('collapse')
        , options = typeof option == 'object' && option
      if (!data) $this.data('collapse', (data = new Collapse(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.collapse.defaults = {
    toggle: true
  }

  $.fn.collapse.Constructor = Collapse


 /* COLLAPSIBLE DATA-API
  * ==================== */

  $(document).on('click.collapse.data-api', '[data-toggle=collapse]', function (e) {
    var $this = $(this), href
      , target = $this.attr('data-target')
        || e.preventDefault()
        || (href = $this.attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '') //strip for ie7
      , option = $(target).data('collapse') ? 'toggle' : $this.data()
    $this[$(target).hasClass('in') ? 'addClass' : 'removeClass']('collapsed')
    $(target).collapse(option)
  })

}(window.jQuery);
/* ============================================================
 * bootstrap-dropdown.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#dropdowns
 * ============================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ============================================================ */



!function ($) {

  "use strict"; // jshint ;_;


 /* DROPDOWN CLASS DEFINITION
  * ========================= */

  var toggle = '[data-toggle=dropdown]'
    , Dropdown = function (element) {
        var $el = $(element).on('click.dropdown.data-api', this.toggle)
        $('html').on('click.dropdown.data-api', function () {
          $el.parent().removeClass('open')
        })
      }

  Dropdown.prototype = {

    constructor: Dropdown

  , toggle: function (e) {
      var $this = $(this)
        , $parent
        , isActive

      if ($this.is('.disabled, :disabled')) return

      $parent = getParent($this)

      isActive = $parent.hasClass('open')

      clearMenus()

      if (!isActive) {
        $parent.toggleClass('open')
        $this.focus()
      }

      return false
    }

  , keydown: function (e) {
      var $this
        , $items
        , $active
        , $parent
        , isActive
        , index

      if (!/(38|40|27)/.test(e.keyCode)) return

      $this = $(this)

      e.preventDefault()
      e.stopPropagation()

      if ($this.is('.disabled, :disabled')) return

      $parent = getParent($this)

      isActive = $parent.hasClass('open')

      if (!isActive || (isActive && e.keyCode == 27)) return $this.click()

      $items = $('[role=menu] li:not(.divider) a', $parent)

      if (!$items.length) return

      index = $items.index($items.filter(':focus'))

      if (e.keyCode == 38 && index > 0) index--                                        // up
      if (e.keyCode == 40 && index < $items.length - 1) index++                        // down
      if (!~index) index = 0

      $items
        .eq(index)
        .focus()
    }

  }

  function clearMenus() {
    $(toggle).each(function () {
      getParent($(this)).removeClass('open')
    })
  }

  function getParent($this) {
    var selector = $this.attr('data-target')
      , $parent

    if (!selector) {
      selector = $this.attr('href')
      selector = selector && /#/.test(selector) && selector.replace(/.*(?=#[^\s]*$)/, '') //strip for ie7
    }

    $parent = $(selector)
    $parent.length || ($parent = $this.parent())

    return $parent
  }


  /* DROPDOWN PLUGIN DEFINITION
   * ========================== */

  $.fn.dropdown = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('dropdown')
      if (!data) $this.data('dropdown', (data = new Dropdown(this)))
      if (typeof option == 'string') data[option].call($this)
    })
  }

  $.fn.dropdown.Constructor = Dropdown


  /* APPLY TO STANDARD DROPDOWN ELEMENTS
   * =================================== */

  $(document)
    .on('click.dropdown.data-api touchstart.dropdown.data-api', clearMenus)
    .on('click.dropdown touchstart.dropdown.data-api', '.dropdown form', function (e) { e.stopPropagation() })
    .on('click.dropdown.data-api touchstart.dropdown.data-api'  , toggle, Dropdown.prototype.toggle)
    .on('keydown.dropdown.data-api touchstart.dropdown.data-api', toggle + ', [role=menu]' , Dropdown.prototype.keydown)

}(window.jQuery);
/*
 Copyright (c) 2012 Max Lahey

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
*/


(function () {

    jQuery(function () {
        $.tags = function (element, options) {
            var tagData,
              _this = this;
            this.suggestions = (options.suggestions != null ? options.suggestions : []);
            this.restrictTo = (options.restrictTo != null ? options.restrictTo.concat(this.suggestions) : false);
            this.exclude = (options.excludeList != null ? options.excludeList : false);
            this.displayPopovers = (options.popovers != null ? true : options.popoverData != null);
            this.tagClass = (options.tagClass != null ? options.tagClass : 'btn-info');
            this.promptText = (options.promptText != null ? options.promptText : 'Enter tags...');
            this.whenAddingTag = (options.whenAddingTag != null ? options.whenAddingTag : function (tag) { });
            this.definePopover = (options.definePopover ? options.definePopover : function (tag) {
                return "associated content for \"" + tag + "\"";
            });
            this.excludes = (options.excludes ? options.excludes : function () {
                return false;
            });
            this.pressedReturn = (options.pressedReturn != null ? options.pressedReturn : function (e) { });
            this.pressedDelete = (options.pressedDelete != null ? options.pressedDelete : function (e) { });
            this.pressedDown = (options.pressedDown != null ? options.pressedDown : function (e) { });
            this.pressedUp = (options.pressedUp != null ? options.pressedUp : function (e) { });
            this.$element = $(element);
            if (options.tagData != null) {
                this.tagsArray = options.tagData;
            } else {
                tagData = $('.tag-data', this.$element).html();
                this.tagsArray = (tagData != null ? tagData.split(',') : []);
            }
            if (this.displayPopovers) {
                this.popoverArray = options.popoverData;
            }
            this.removeTagClicked = function (e) {
                if (e.currentTarget.tagName === "A") {
                    _this.removeTag(e.currentTarget.previousSibling.textContent);
                    return $(e.currentTarget.parentNode).remove();
                }
            };
            this.removeLastTag = function () {
                var el;
                el = $('.tag', _this.$element).last();
                el.remove();
                return _this.removeTag(_this.tagsArray[_this.tagsArray.length - 1]);
            };
            this.removeTag = function (tag) {
                if (_this.tagsArray.indexOf(tag) > -1) {
                    if (_this.displayPopovers) {
                        _this.popoverArray.splice(_this.tagsArray.indexOf(tag), 1);
                    }
                    _this.tagsArray.splice(_this.tagsArray.indexOf(tag), 1);
                    return _this.renderTags();
                }
            };
            this.addTag = function (tag) {
                var associatedContent;
                if ((_this.restrictTo === false || _this.restrictTo.indexOf(tag) !== -1) && _this.tagsArray.indexOf(tag) < 0 && tag.length > 0 && (_this.exclude === false || _this.exclude.indexOf(tag) === -1) && !_this.excludes(tag)) {
                    _this.whenAddingTag(tag);
                    if (_this.displayPopovers) {
                        associatedContent = _this.definePopover(tag);
                        _this.popoverArray.push(associatedContent);
                    }
                    _this.tagsArray.push(tag);
                    return _this.renderTags();
                }
            };
            this.addTagWithContent = function (tag, content) {
                if ((_this.restrictTo === false || _this.restrictTo.indexOf(tag) !== -1) && _this.tagsArray.indexOf(tag) < 0 && tag.length > 0) {
                    _this.whenAddingTag(tag);
                    _this.tagsArray.push(tag);
                    _this.popoverArray.push(content);
                    return _this.renderTags();
                }
            };
            this.renameTag = function (name, newName) {
                _this.tagsArray[_this.tagsArray.indexOf(name)] = newName;
                return _this.renderTags();
            };
            this.setPopover = function (tag, popoverContent) {
                _this.popoverArray[_this.tagsArray.indexOf(tag)] = popoverContent;
                return _this.renderTags();
            };
            this.toggleCloseColor = function (e) {
                var opacity, tagAnchor;
                tagAnchor = $(e.currentTarget);
                opacity = tagAnchor.css('opacity');
                opacity = (opacity < 0.8 ? 1.0 : 0.6);
                return tagAnchor.css({
                    opacity: opacity
                });
            };
            this.keyDownHandler = function (e) {
                var k, numSuggestions, tag;
                k = (e.keyCode != null ? e.keyCode : e.which);
                switch (k) {
                    case 13:
                        _this.pressedReturn(e);
                        tag = e.target.value;
                        if (_this.suggestedIndex !== -1) {
                            tag = _this.suggestionList[_this.suggestedIndex];
                        }
                        _this.addTag(tag);
                        e.target.value = '';
                        _this.renderTags();
                        return _this.hideSuggestions();
                    case 46:
                    case 8:
                        _this.pressedDelete(e);
                        if (e.target.value === '') {
                            _this.removeLastTag();
                        }
                        if (e.target.value.length === 1) {
                            return _this.hideSuggestions();
                        }
                        break;
                    case 40:
                        _this.pressedDown(e);
                        if (_this.input.val() === '' && (_this.suggestedIndex === -1 || !(_this.suggestedIndex != null))) {
                            _this.makeSuggestions(e, true);
                        }
                        numSuggestions = _this.suggestionList.length;
                        _this.suggestedIndex = (_this.suggestedIndex < numSuggestions - 1 ? _this.suggestedIndex + 1 : numSuggestions - 1);
                        _this.selectSuggested(_this.suggestedIndex);
                        if (_this.suggestedIndex >= 0) {
                            return _this.scrollSuggested(_this.suggestedIndex);
                        }
                        break;
                    case 38:
                        _this.pressedUp(e);
                        _this.suggestedIndex = (_this.suggestedIndex > 0 ? _this.suggestedIndex - 1 : 0);
                        _this.selectSuggested(_this.suggestedIndex);
                        if (_this.suggestedIndex >= 0) {
                            return _this.scrollSuggested(_this.suggestedIndex);
                        }
                        break;
                    case 9:
                    case 27:
                        _this.hideSuggestions();
                        return _this.suggestedIndex = -1;
                }
            };
            this.makeSuggestions = function (e, overrideLengthCheck) {
                var val;
                val = (e.target.value != null ? e.target.value : e.target.textContent);
                _this.suggestedIndex = -1;
                _this.$suggestionList.html('');
                _this.suggestionList = [];
                $.each(_this.suggestions, function (i, suggestion) {
                    if (_this.tagsArray.indexOf(suggestion) < 0 && suggestion.substring(0, val.length) === val && (val.length > 0 || overrideLengthCheck)) {
                        _this.$suggestionList.append('<li class="tags-suggestion">' + suggestion + '</li>');
                        return _this.suggestionList.push(suggestion);
                    }
                });
                $('.tags-suggestion', _this.$element).mouseover(_this.selectSuggestedMouseOver);
                $('.tags-suggestion', _this.$element).click(_this.suggestedClicked);
                if (_this.suggestionList.length > 0) {
                    return _this.showSuggestions();
                } else {
                    return _this.hideSuggestions();
                }
            };
            this.suggestedClicked = function (e) {
                var tag;
                tag = e.target.textContent;
                if (_this.suggestedIndex !== -1) {
                    tag = _this.suggestionList[_this.suggestedIndex];
                }
                _this.addTag(tag);
                _this.input.val('');
                _this.makeSuggestions(e, false);
                _this.input.focus();
                return _this.hideSuggestions();
            };
            this.keyUpHandler = function (e) {
                var k;
                k = (e.keyCode != null ? e.keyCode : e.which);
                if (k !== 40 && k !== 38 && k !== 27) {
                    return _this.makeSuggestions(e, false);
                }
            };
            this.hideSuggestions = function () {
                return $('.tags-suggestion-list', _this.$element).css({
                    display: "none"
                });
            };
            this.showSuggestions = function () {
                return $('.tags-suggestion-list', _this.$element).css({
                    display: "block"
                });
            };
            this.selectSuggestedMouseOver = function (e) {
                $('.tags-suggestion').removeClass('tags-suggestion-highlighted');
                $(e.target).addClass('tags-suggestion-highlighted');
                $(e.target).mouseout(_this.selectSuggestedMousedOut);
                return _this.suggestedIndex = $('.tags-suggestion', _this.$element).index($(e.target));
            };
            this.selectSuggestedMousedOut = function (e) {
                return $(e.target).removeClass('tags-suggestion-highlighted');
            };
            this.selectSuggested = function (i) {
                var tagElement;
                $('.tags-suggestion').removeClass('tags-suggestion-highlighted');
                tagElement = $('.tags-suggestion', _this.$element).eq(i);
                return tagElement.addClass('tags-suggestion-highlighted');
            };
            this.scrollSuggested = function (i) {
                var pos, tagElement, topElement, topPos;
                tagElement = $('.tags-suggestion', _this.$element).eq(i);
                topElement = $('.tags-suggestion', _this.$element).eq(0);
                pos = tagElement.position();
                topPos = topElement.position();
                return $('.tags-suggestion-list', _this.$element).scrollTop(pos.top - topPos.top);
            };
            this.adjustInputPosition = function () {
                var pBottom, pLeft, pTop, tagElement, tagPosition;
                tagElement = $('.tag', _this.$element).last();
                tagPosition = tagElement.position();
                pLeft = tagPosition != null ? tagPosition.left + tagElement.outerWidth(true) : 0;
                pTop = tagPosition != null ? tagPosition.top : 0;
                $('.tags-input', _this.$element).css({
                    paddingLeft: pLeft,
                    paddingTop: pTop
                });
                pBottom = tagPosition != null ? tagPosition.top + tagElement.outerHeight(true) : 22;
                return _this.$element.css({
                    height: pBottom
                });
            };
            this.renderTags = function () {
                var tagList;
                tagList = $('.tags', _this.$element);
                tagList.html('');
                _this.input.attr('placeholder', (_this.tagsArray.length === 0 ? _this.promptText : ''));
                $.each(_this.tagsArray, function (i, tag) {
                    tag = $(_this.formatTag(i, tag));
                    $('a', tag).click(_this.removeTagClicked);
                    $('a', tag).mouseover(_this.toggleCloseColor);
                    $('a', tag).mouseout(_this.toggleCloseColor);
                    if (_this.displayPopovers) {
                        $('span', tag).mouseover(function () {
                            return tag.popover('show');
                        });
                        $('span', tag).mouseout(function () {
                            return tag.popover('hide');
                        });
                    }
                    return tagList.append(tag);
                });
                return _this.adjustInputPosition();
            };
            this.formatTag = function (i, tag) {
                var popoverContent;
                if (_this.displayPopovers === true) {
                    popoverContent = _this.popoverArray[_this.tagsArray.indexOf(tag)];
                    return "<div class='tag label " + _this.tagClass + "' rel='popover' data-placement='bottom' data-content='" + popoverContent + "' data-original-title='" + tag + "'><span>" + tag + "</span><a> <i class='icon-remove-sign icon-white'></i></a></div>";
                } else {
                    return "<div class='tag label " + _this.tagClass + "'><span>" + tag + "</span><a> <i class='icon-remove-sign icon-white'></i></a></div>";
                }
            };
            this.addDocumentListeners = function () {
                return $(document).mouseup(function (e) {
                    var container;
                    container = $('.tags-suggestion-list', _this.$element);
                    if (container.has(e.target).length === 0) {
                        return _this.hideSuggestions();
                    }
                });
            };
            this.init = function () {
                this.input = $("<input type='text' class='tags-input'>");
                this.input.keydown(this.keyDownHandler);
                this.input.keyup(this.keyUpHandler);
                this.$element.append(this.input);
                this.$suggestionList = $('<ul class="tags-suggestion-list dropdown-menu"></ul>');
                this.$element.append(this.$suggestionList);
                this.renderTags();
                return this.addDocumentListeners();
            };
            this.init();
            return this;
        };
        return $.fn.tags = function (options) {
            return this.each(function () {
                var tags;
                return tags = new $.tags(this, options);
            });
        };
    });

}).call(this);
(function () {

    $(function () {
        var excludes, pressedUp, whenAddingTag;
        pressedUp = function (e) {
            return console.log("pressed up");
        };
        whenAddingTag = function (tag) {
            return console.log(tag);
        };
        excludes = function (tag) {
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
/* ===========================================================
* bootstrap-modalmanager.js v2.0
* ===========================================================
* Copyright 2012 Jordan Schroter.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
* ========================================================== */


!function ($) {

    "use strict"; // jshint ;_;

    /* MODAL MANAGER CLASS DEFINITION
	* ====================== */

    var ModalManager = function (element, options) {
        this.init(element, options);
    }

    ModalManager.prototype = {

        constructor: ModalManager,

        init: function (element, options) {
            this.$element = $(element);
            this.options = $.extend({}, $.fn.modalmanager.defaults, this.$element.data(), typeof options == 'object' && options);
            this.stack = [];
            this.backdropCount = 0;
        },

        createModal: function (element, options) {
            $(element).modal($.extend({ manager: this }, options));
        },

        appendModal: function (modal) {
            this.stack.push(modal);

            var that = this;

            modal.$element.on('show.modalmanager', targetIsSelf(function (e) {
                modal.isShown = true;

                var transition = $.support.transition && modal.$element.hasClass('fade');

                that.$element
					.toggleClass('modal-open', that.hasOpenModal())
					.toggleClass('page-overflow', $(window).height() < that.$element.height());

                modal.$parent = modal.$element.parent();

                modal.$container = that.createContainer(modal);

                modal.$element.appendTo(modal.$container);

                var modalOverflow = $(window).height() < modal.$element.height() || modal.options.modalOverflow;

                that.backdrop(modal, function () {

                    modal.$element.show();

                    if (transition) {
                        modal.$element[0].style.display = 'run-in';
                        modal.$element[0].offsetWidth;
                        modal.$element.one($.support.transition.end, function () { modal.$element[0].style.display = 'block' });
                    }

                    modal.$element
						.toggleClass('modal-overflow', modalOverflow)
						.css('margin-top', modalOverflow ? 0 : 0 - modal.$element.height() / 2)
						.addClass('in')
						.attr('aria-hidden', false);

                    var complete = function () {
                        that.setFocus();
                        modal.$element.triggerHandler('shown');
                    }

                    transition ?
						modal.$element.one($.support.transition.end, complete) :
						complete();
                });
            }));

            modal.$element.on('hidden.modalmanager', targetIsSelf(function (e) {

                that.backdrop(modal);

                if (modal.$backdrop) {
                    $.support.transition && modal.$element.hasClass('fade') ?
						modal.$backdrop.one($.support.transition.end, function () { that.destroyModal(modal) }) :
						that.destroyModal(modal);
                } else {
                    that.destroyModal(modal);
                }

            }));

            modal.$element.on('destroy.modalmanager', targetIsSelf(function (e) {
                that.removeModal(modal);
            }));
        },

        destroyModal: function (modal) {

            modal.destroy();

            var hasOpenModal = this.hasOpenModal();

            this.$element.toggleClass('modal-open', hasOpenModal);

            if (!hasOpenModal) {
                this.$element.removeClass('page-overflow');
            }

            this.removeContainer(modal);

            this.setFocus();
        },

        hasOpenModal: function () {
            for (var i = 0; i < this.stack.length; i++) {
                if (this.stack[i].isShown) return true;
            }

            return false;
        },

        setFocus: function () {
            var topModal;

            for (var i = 0; i < this.stack.length; i++) {
                if (this.stack[i].isShown) topModal = this.stack[i];
            }

            if (!topModal) return;

            topModal.focus();

        },

        removeModal: function (modal) {
            modal.$element.off('.modalmanager');
            if (modal.$backdrop) this.removeBackdrop.call(modal);
            this.stack.splice(this.getIndexOfModal(modal), 1);
        },

        getModalAt: function (index) {
            return this.stack[index];
        },

        getIndexOfModal: function (modal) {
            for (var i = 0; i < this.stack.length; i++) {
                if (modal === this.stack[i]) return i;
            }
        },

        removeBackdrop: function (modal) {
            modal.$backdrop.remove();
            modal.$backdrop = null;
        },

        createBackdrop: function (animate) {
            var $backdrop;

            if (!this.isLoading) {
                $backdrop = $('<div class="modal-backdrop ' + animate + '" />')
					.appendTo(this.$element);

            } else {
                $backdrop = this.$loading;
                $backdrop.off('.modalmanager');
                this.$spinner.remove();
                this.isLoading = false;
                this.$loading = this.$spinner = null;
            }

            return $backdrop
        },

        removeContainer: function (modal) {
            modal.$container.remove();
            modal.$container = null;
        },

        createContainer: function (modal) {
            var $container;

            $container = $('<div class="modal-scrollable">')
				.css('z-index', getzIndex('modal',
					modal ? this.getIndexOfModal(modal) : this.stack.length))
				.appendTo(this.$element);

            if (modal && modal.options.backdrop != 'static') {
                $container.on('click.modal', targetIsSelf(function (e) {
                    modal.hide();
                }));
            } else if (modal) {
                $container.on('click.modal', targetIsSelf(function (e) {
                    modal.attention();
                }));
            }

            return $container;

        },

        backdrop: function (modal, callback) {
            var animate = modal.$element.hasClass('fade') ? 'fade' : '',
				showBackdrop = modal.options.backdrop &&
					this.backdropCount < this.options.backdropLimit;

            if (modal.isShown && showBackdrop) {
                var doAnimate = $.support.transition && animate && !this.isLoading;


                modal.$backdrop = this.createBackdrop(animate);

                modal.$backdrop.css('z-index', getzIndex('backdrop', this.getIndexOfModal(modal)))

                if (doAnimate) modal.$backdrop[0].offsetWidth // force reflow

                modal.$backdrop.addClass('in')

                this.backdropCount += 1;

                doAnimate ?
					modal.$backdrop.one($.support.transition.end, callback) :
					callback();

            } else if (!modal.isShown && modal.$backdrop) {
                modal.$backdrop.removeClass('in');

                this.backdropCount -= 1;

                var that = this;

                $.support.transition && modal.$element.hasClass('fade') ?
					modal.$backdrop.one($.support.transition.end, function () { that.removeBackdrop(modal) }) :
					that.removeBackdrop(modal);

            } else if (callback) {
                callback();
            }
        },

        removeLoading: function () {
            this.$loading && this.$loading.remove();
            this.$loading = null;
            this.isLoading = false;
        },

        loading: function (callback) {
            callback = callback || function () { };

            this.$element
				.toggleClass('modal-open', !this.isLoading || this.hasOpenModal())
				.toggleClass('page-overflow', $(window).height() < this.$element.height());

            if (!this.isLoading) {

                this.$loading = this.createBackdrop('fade');

                this.$loading[0].offsetWidth // force reflow	

                this.$loading
					.css('z-index', getzIndex('backdrop', this.stack.length))
					.addClass('in');

                var $spinner = $(this.options.spinner)
					.css('z-index', getzIndex('modal', this.stack.length))
					.appendTo(this.$element)
					.addClass('in');

                this.$spinner = $(this.createContainer())
					.append($spinner)
					.on('click.modalmanager', $.proxy(this.loading, this));

                this.isLoading = true;

                $.support.transition ?
				this.$loading.one($.support.transition.end, callback) :
				callback();

            } else if (this.isLoading && this.$loading) {
                this.$loading.removeClass('in');

                if (this.$spinner) this.$spinner.remove();

                var that = this;
                $.support.transition ?
					this.$loading.one($.support.transition.end, function () { that.removeLoading() }) :
					that.removeLoading();

            } else if (callback) {
                callback(this.isLoading);
            }
        }
    }

    /* PRIVATE METHODS
	* ======================= */

    // computes and caches the zindexes
    var getzIndex = (function () {
        var zIndexFactor,
			baseIndex = {};

        return function (type, pos) {

            if (typeof zIndexFactor === 'undefined') {
                var $baseModal = $('<div class="modal hide" />').appendTo('body'),
					$baseBackdrop = $('<div class="modal-backdrop hide" />').appendTo('body');

                baseIndex['modal'] = +$baseModal.css('z-index'),
				baseIndex['backdrop'] = +$baseBackdrop.css('z-index'),
				zIndexFactor = baseIndex['modal'] - baseIndex['backdrop'];

                $baseModal.remove();
                $baseBackdrop.remove();
                $baseBackdrop = $baseModal = null;
            }

            return baseIndex[type] + (zIndexFactor * pos);

        }
    }())

    // make sure the event target is the modal itself in order to prevent 
    // other components such as tabsfrom triggering the modal manager. 
    // if Boostsrap namespaced events, this would not be needed.
    function targetIsSelf(callback) {
        return function (e) {
            if (this === e.target) {
                return callback.apply(this, arguments);
            }
        }
    }


    /* MODAL MANAGER PLUGIN DEFINITION
	* ======================= */

    $.fn.modalmanager = function (option) {
        return this.each(function () {
            var $this = $(this),
				data = $this.data('modalmanager');

            if (!data) $this.data('modalmanager', (data = new ModalManager(this, option)))
            if (typeof option === 'string') data[option]()
        })
    }

    $.fn.modalmanager.defaults = {
        backdropLimit: 999,
        spinner: '<div class="loading-spinner fade" style="width: 200px; margin-left: -100px;"><div class="progress progress-striped active"><div class="bar" style="width: 100%;"></div></div></div>'
    }

    $.fn.modalmanager.Constructor = ModalManager

}(jQuery);
/* ===========================================================
 * bootstrap-modal.js v2.0
 * ===========================================================
 * Copyright 2012 Jordan Schroter
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================== */



!function ($) {

    "use strict"; // jshint ;_;

    /* MODAL CLASS DEFINITION
	* ====================== */

    var Modal = function (element, options) {
        this.init(element, options);
    }

    Modal.prototype = {

        constructor: Modal,

        init: function (element, options) {
            this.options = options;

            this.$element = $(element)
				.delegate('[data-dismiss="modal"]', 'click.dismiss.modal', $.proxy(this.hide, this));

            this.options.remote && this.$element.find('.modal-body').load(this.options.remote);

            var manager = typeof this.options.manager === 'function' ?
				this.options.manager.call(this) : this.options.manager;

            manager = manager.appendModal ?
                manager : $(manager).modalmanager().data('modalmanager');

            manager.appendModal(this);
        },

        toggle: function () {
            return this[!this.isShown ? 'show' : 'hide']();
        },

        show: function () {
            var that = this,
				e = $.Event('show');

            if (this.isShown) return;

            this.$element.triggerHandler(e);

            if (e.isDefaultPrevented()) return;

            if (this.options.width) {
                this.$element.css('width', this.options.width);

                var that = this;
                this.$element.css('margin-left', function () {
                    if (/%/ig.test(that.options.width)) {
                        return -(parseInt(that.options.width) / 2) + '%';
                    } else {
                        return -($(this).width() / 2) + 'px';
                    }
                });
            }

            var prop = this.options.height ? 'height' : 'max-height';

            var value = this.options.height || this.options.maxHeight;

            if (value) {
                this.$element.find('.modal-body')
					.css('overflow', 'auto')
					.css(prop, value);
            }

            this.escape();

            this.tab();

            this.options.loading && this.loading();
        },

        hide: function (e) {
            e && e.preventDefault();

            e = $.Event('hide');

            this.$element.triggerHandler(e);

            if (!this.isShown || e.isDefaultPrevented()) return (this.isShown = false);

            this.isShown = false;

            this.escape();

            this.tab();

            this.isLoading && this.loading();

            $(document).off('focusin.modal');

            this.$element
				.removeClass('in')
				.removeClass('animated')
				.removeClass(this.options.attentionAnimation)
				.removeClass('modal-overflow')
				.attr('aria-hidden', true);

            $.support.transition && this.$element.hasClass('fade') ?
				this.hideWithTransition() :
				this.hideModal();
        },

        tab: function () {
            var that = this;

            if (this.isShown && this.options.consumeTab) {
                this.$element.on('keydown.tabindex.modal', '[data-tabindex]', function (e) {
                    if (e.keyCode && e.keyCode == 9) {
                        var $next = $(this),
				        	$rollover = $(this);

                        that.$element.find('[data-tabindex]:enabled:not([readonly])').each(function (e) {
                            if (!e.shiftKey) {
                                $next = $next.data('tabindex') < $(this).data('tabindex') ?
				              		$next = $(this) :
				              		$rollover = $(this);
                            } else {
                                $next = $next.data('tabindex') > $(this).data('tabindex') ?
				              		$next = $(this) :
				             		$rollover = $(this);
                            }
                        });

                        $next[0] !== $(this)[0] ?
			          		$next.focus() : $rollover.focus();

                        e.preventDefault();

                    }
                });
            } else if (!this.isShown) {
                this.$element.off('keydown.tabindex.modal');
            }
        },

        escape: function () {
            var that = this;
            if (this.isShown && this.options.keyboard) {
                if (!this.$element.attr('tabindex')) this.$element.attr('tabindex', -1);

                this.$element.on('keyup.dismiss.modal', function (e) {
                    e.which == 27 && that.hide();
                });
            } else if (!this.isShown) {
                this.$element.off('keyup.dismiss.modal')
            }
        },

        hideWithTransition: function () {
            var that = this
				, timeout = setTimeout(function () {
				    that.$element.off($.support.transition.end)
				    that.hideModal()
				}, 500);

            this.$element.one($.support.transition.end, function () {
                clearTimeout(timeout)
                that.hideModal()
            });
        },

        hideModal: function () {
            this.$element
				.hide()
				.triggerHandler('hidden');


            var prop = this.options.height ? 'height' : 'max-height';
            var value = this.options.height || this.options.maxHeight;

            if (value) {
                this.$element.find('.modal-body')
					.css('overflow', '')
					.css(prop, '');
            }

        },

        removeLoading: function () {
            this.$loading.remove();
            this.$loading = null;
            this.isLoading = false;
        },

        loading: function (callback) {
            callback = callback || function () { };

            var animate = this.$element.hasClass('fade') ? 'fade' : '';

            if (!this.isLoading) {
                var doAnimate = $.support.transition && animate;

                this.$loading = $('<div class="loading-mask ' + animate + '">')
					.append(this.options.spinner)
					.appendTo(this.$element);

                if (doAnimate) this.$loading[0].offsetWidth // force reflow	

                this.$loading.addClass('in')

                this.isLoading = true;

                doAnimate ?
					this.$loading.one($.support.transition.end, callback) :
					callback();

            } else if (this.isLoading && this.$loading) {
                this.$loading.removeClass('in');

                var that = this;
                $.support.transition && this.$element.hasClass('fade') ?
					this.$loading.one($.support.transition.end, function () { that.removeLoading() }) :
					that.removeLoading();

            } else if (callback) {
                callback(this.isLoading);
            }
        },

        focus: function () {
            var $focusElem = this.$element.find(this.options.focusOn);

            $focusElem = $focusElem.length ? $focusElem : this.$element;

            $focusElem.focus();
        },

        attention: function () {
            // NOTE: transitionEnd with keyframes causes odd behaviour

            if (this.options.attentionAnimation) {
                this.$element
					.removeClass('animated')
					.removeClass(this.options.attentionAnimation);

                var that = this;

                setTimeout(function () {
                    that.$element
						.addClass('animated')
						.addClass(that.options.attentionAnimation);
                }, 0);
            }


            this.focus();
        },


        destroy: function () {
            var e = $.Event('destroy');
            this.$element.triggerHandler(e);
            if (e.isDefaultPrevented()) return;

            this.teardown();
        },

        teardown: function () {
            if (!this.$parent.length) {
                this.$element.remove();
                this.$element = null;
                return;
            }

            if (this.$parent !== this.$element.parent()) {
                this.$element.appendTo(this.$parent);
            }

            this.$element.off('.modal');
            this.$element.removeData('modal');
            this.$element
				.removeClass('in')
				.attr('aria-hidden', true);
        }
    }


    /* MODAL PLUGIN DEFINITION
	* ======================= */

    $.fn.modal = function (option) {
        return this.each(function () {
            var $this = $(this),
				data = $this.data('modal'),
				options = $.extend({}, $.fn.modal.defaults, $this.data(), typeof option == 'object' && option);

            if (!data) $this.data('modal', (data = new Modal(this, options)))
            if (typeof option == 'string') data[option]()
            else if (options.show) data.show()
        })
    }

    $.fn.modal.defaults = {
        keyboard: true,
        backdrop: true,
        loading: false,
        show: true,
        width: null,
        height: null,
        maxHeight: null,
        modalOverflow: false,
        consumeTab: true,
        focusOn: null,
        attentionAnimation: 'shake',
        manager: 'body',
        spinner: '<div class="loading-spinner" style="width: 200px; margin-left: -100px;"><div class="progress progress-striped active"><div class="bar" style="width: 100%;"></div></div></div>'
    }

    $.fn.modal.Constructor = Modal


    /* MODAL DATA-API
	* ============== */

    $(function () {
        $(document).off('.modal').on('click.modal.data-api', '[data-toggle="modal"]', function (e) {
            var $this = $(this),
				href = $this.attr('href'),
				$target = $($this.attr('data-target') || (href && href.replace(/.*(?=#[^\s]+$)/, ''))), //strip for ie7 
				option = $target.data('modal') ? 'toggle' : $.extend({ remote: !/#/.test(href) && href }, $target.data(), $this.data());

            e.preventDefault();
            $target
				.modal(option)
				.one('hide', function () {
				    $this.focus();
				})
        });
    });

}(window.jQuery);
/* =========================================================
 * bootstrap-datepicker.js 
 * http://www.eyecon.ro/bootstrap-datepicker
 * =========================================================
 * Copyright 2012 Stefan Petre
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================= */


!function ($) {

    // Picker object

    var Datepicker = function (element, options) {
        this.element = $(element);
        this.format = DPGlobal.parseFormat(options.format || this.element.data('date-format') || 'dd/mm/yyyy');
        this.picker = $(DPGlobal.template)
							.appendTo('body')
							.on({
							    click: $.proxy(this.click, this),
							    mousedown: $.proxy(this.mousedown, this)
							});
        this.isInput = this.element.is('input');
        this.component = this.element.is('.date') ? this.element.find('.date-button') : false;

        if (this.isInput) {
            this.element.on({
                focus: $.proxy(this.show, this),
                blur: $.proxy(this.hide, this),
                keyup: $.proxy(this.update, this)
            });
        } else {
            if (this.component) {
                this.component.on('click', $.proxy(this.show, this));
            } else {
                this.element.on('click', $.proxy(this.show, this));
            }
        }
        this.minViewMode = options.minViewMode || this.element.data('date-minviewmode') || 0;
        if (typeof this.minViewMode === 'string') {
            switch (this.minViewMode) {
                case 'months':
                    this.minViewMode = 1;
                    break;
                case 'years':
                    this.minViewMode = 2;
                    break;
                default:
                    this.minViewMode = 0;
                    break;
            }
        }
        this.viewMode = options.viewMode || this.element.data('date-viewmode') || 0;
        if (typeof this.viewMode === 'string') {
            switch (this.viewMode) {
                case 'months':
                    this.viewMode = 1;
                    break;
                case 'years':
                    this.viewMode = 2;
                    break;
                default:
                    this.viewMode = 0;
                    break;
            }
        }
        this.startViewMode = this.viewMode;
        this.weekStart = options.weekStart || this.element.data('date-weekstart') || 0;
        this.weekEnd = this.weekStart === 0 ? 6 : this.weekStart - 1;
        this.fillDow();
        this.fillMonths();
        this.update();
        this.showMode();
    };

    Datepicker.prototype = {
        constructor: Datepicker,

        show: function (e) {
            this.picker.show();
            this.height = this.component ? this.component.outerHeight() : this.element.outerHeight();
            this.place();
            $(window).on('resize', $.proxy(this.place, this));
            if (e) {
                e.stopPropagation();
                e.preventDefault();
            }
            if (!this.isInput) {
                $(document).on('mousedown', $.proxy(this.hide, this));
            }
            this.element.trigger({
                type: 'show',
                date: this.date
            });
        },

        hide: function () {
            this.picker.hide();
            $(window).off('resize', this.place);
            this.viewMode = this.startViewMode;
            this.showMode();
            if (!this.isInput) {
                $(document).off('mousedown', this.hide);
            }
            this.set();
            this.element.trigger({
                type: 'hide',
                date: this.date
            });
        },

        set: function () {
            var formated = DPGlobal.formatDate(this.date, this.format);
            if (!this.isInput) {
                if (this.component) {
                    this.element.find('input').prop('value', formated);
                }
                this.element.data('date', formated);
            } else {
                this.element.prop('value', formated);
            }
        },

        setValue: function (newDate) {
            if (typeof newDate === 'string') {
                this.date = DPGlobal.parseDate(newDate, this.format);
            } else {
                this.date = new Date(newDate);
            }
            this.set();
            this.viewDate = new Date(this.date.getFullYear(), this.date.getMonth(), 1, 0, 0, 0, 0);
            this.fill();
        },

        place: function () {
            var offset = this.component ? this.component.offset() : this.element.offset();
            this.picker.css({
                top: offset.top + this.height,
                left: offset.left
            });
        },

        update: function (newDate) {
            this.date = DPGlobal.parseDate(
				typeof newDate === 'string' ? newDate : (this.isInput ? this.element.prop('value') : this.element.data('date')),
				this.format
			);
            this.viewDate = new Date(this.date.getFullYear(), this.date.getMonth(), 1, 0, 0, 0, 0);
            this.fill();
        },

        fillDow: function () {
            var dowCnt = this.weekStart;
            var html = '<tr>';
            while (dowCnt < this.weekStart + 7) {
                html += '<th class="dow">' + DPGlobal.dates.daysMin[(dowCnt++) % 7] + '</th>';
            }
            html += '</tr>';
            this.picker.find('.datepicker-days thead').append(html);
        },

        fillMonths: function () {
            var html = '';
            var i = 0
            while (i < 12) {
                html += '<span class="month">' + DPGlobal.dates.monthsShort[i++] + '</span>';
            }
            this.picker.find('.datepicker-months td').append(html);
        },

        fill: function () {
            var d = new Date(this.viewDate),
				year = d.getFullYear(),
				month = d.getMonth(),
				currentDate = this.date.valueOf();
            this.picker.find('.datepicker-days th:eq(1)')
						.text(DPGlobal.dates.months[month] + ' ' + year);
            var prevMonth = new Date(year, month - 1, 28, 0, 0, 0, 0),
				day = DPGlobal.getDaysInMonth(prevMonth.getFullYear(), prevMonth.getMonth());
            prevMonth.setDate(day);
            prevMonth.setDate(day - (prevMonth.getDay() - this.weekStart + 7) % 7);
            var nextMonth = new Date(prevMonth);
            nextMonth.setDate(nextMonth.getDate() + 42);
            nextMonth = nextMonth.valueOf();
            html = [];
            var clsName;
            while (prevMonth.valueOf() < nextMonth) {
                if (prevMonth.getDay() === this.weekStart) {
                    html.push('<tr>');
                }
                clsName = '';
                if (prevMonth.getMonth() < month) {
                    clsName += ' old';
                } else if (prevMonth.getMonth() > month) {
                    clsName += ' new';
                }
                if (prevMonth.valueOf() === currentDate) {
                    clsName += ' active';
                }
                html.push('<td class="day' + clsName + '">' + prevMonth.getDate() + '</td>');
                if (prevMonth.getDay() === this.weekEnd) {
                    html.push('</tr>');
                }
                prevMonth.setDate(prevMonth.getDate() + 1);
            }
            this.picker.find('.datepicker-days tbody').empty().append(html.join(''));
            var currentYear = this.date.getFullYear();

            var months = this.picker.find('.datepicker-months')
						.find('th:eq(1)')
							.text(year)
							.end()
						.find('span').removeClass('active');
            if (currentYear === year) {
                months.eq(this.date.getMonth()).addClass('active');
            }

            html = '';
            year = parseInt(year / 10, 10) * 10;
            var yearCont = this.picker.find('.datepicker-years')
								.find('th:eq(1)')
									.text(year + '-' + (year + 9))
									.end()
								.find('td');
            year -= 1;
            for (var i = -1; i < 11; i++) {
                html += '<span class="year' + (i === -1 || i === 10 ? ' old' : '') + (currentYear === year ? ' active' : '') + '">' + year + '</span>';
                year += 1;
            }
            yearCont.html(html);
        },

        click: function (e) {
            e.stopPropagation();
            e.preventDefault();
            var target = $(e.target).closest('span, td, th');
            if (target.length === 1) {
                switch (target[0].nodeName.toLowerCase()) {
                    case 'th':
                        switch (target[0].className) {
                            case 'switch':
                                this.showMode(1);
                                break;
                            case 'prev':
                            case 'next':
                                this.viewDate['set' + DPGlobal.modes[this.viewMode].navFnc].call(
									this.viewDate,
									this.viewDate['get' + DPGlobal.modes[this.viewMode].navFnc].call(this.viewDate) +
									DPGlobal.modes[this.viewMode].navStep * (target[0].className === 'prev' ? -1 : 1)
								);
                                this.fill();
                                this.set();
                                break;
                        }
                        break;
                    case 'span':
                        if (target.is('.month')) {
                            var month = target.parent().find('span').index(target);
                            this.viewDate.setMonth(month);
                        } else {
                            var year = parseInt(target.text(), 10) || 0;
                            this.viewDate.setFullYear(year);
                        }
                        if (this.viewMode !== 0) {
                            this.date = new Date(this.viewDate);
                            this.element.trigger({
                                type: 'changeDate',
                                date: this.date,
                                viewMode: DPGlobal.modes[this.viewMode].clsName
                            });
                        }
                        this.showMode(-1);
                        this.fill();
                        this.set();
                        break;
                    case 'td':
                        if (target.is('.day')) {
                            var day = parseInt(target.text(), 10) || 1;
                            var month = this.viewDate.getMonth();
                            if (target.is('.old')) {
                                month -= 1;
                            } else if (target.is('.new')) {
                                month += 1;
                            }
                            var year = this.viewDate.getFullYear();
                            this.date = new Date(year, month, day, 0, 0, 0, 0);
                            this.viewDate = new Date(year, month, Math.min(28, day), 0, 0, 0, 0);
                            this.fill();
                            this.set();
                            this.element.trigger({
                                type: 'changeDate',
                                date: this.date,
                                viewMode: DPGlobal.modes[this.viewMode].clsName
                            });
                        }
                        break;
                }
            }
        },

        mousedown: function (e) {
            e.stopPropagation();
            e.preventDefault();
        },

        showMode: function (dir) {
            if (dir) {
                this.viewMode = Math.max(this.minViewMode, Math.min(2, this.viewMode + dir));
            }
            this.picker.find('>div').hide().filter('.datepicker-' + DPGlobal.modes[this.viewMode].clsName).show();
        }
    };

    $.fn.datepicker = function (option, val) {
        return this.each(function () {
            var $this = $(this),
				data = $this.data('datepicker'),
				options = typeof option === 'object' && option;
            if (!data) {
                $this.data('datepicker', (data = new Datepicker(this, $.extend({}, $.fn.datepicker.defaults, options))));
            }
            if (typeof option === 'string') data[option](val);
        });
    };

    $.fn.datepicker.defaults = {
    };
    $.fn.datepicker.Constructor = Datepicker;

    var DPGlobal = {
        modes: [
			{
			    clsName: 'days',
			    navFnc: 'Month',
			    navStep: 1
			},
			{
			    clsName: 'months',
			    navFnc: 'FullYear',
			    navStep: 1
			},
			{
			    clsName: 'years',
			    navFnc: 'FullYear',
			    navStep: 10
			}],
        dates: {
            days: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
            daysShort: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
            daysMin: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa", "Su"],
            months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
            monthsShort: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
        },
        isLeapYear: function (year) {
            return (((year % 4 === 0) && (year % 100 !== 0)) || (year % 400 === 0))
        },
        getDaysInMonth: function (year, month) {
            return [31, (DPGlobal.isLeapYear(year) ? 29 : 28), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month]
        },
        parseFormat: function (format) {
            var separator = format.match(/[.\/\-\s].*?/),
				parts = format.split(/\W+/);
            if (!separator || !parts || parts.length === 0) {
                throw new Error("Invalid date format.");
            }
            return { separator: separator, parts: parts };
        },
        parseDate: function (date, format) {
            var parts = date.split(format.separator),
				date = new Date(),
				val;
            date.setHours(0);
            date.setMinutes(0);
            date.setSeconds(0);
            date.setMilliseconds(0);
            if (parts.length === format.parts.length) {
                for (var i = 0, cnt = format.parts.length; i < cnt; i++) {
                    val = parseInt(parts[i], 10) || 1;
                    switch (format.parts[i]) {
                        case 'dd':
                        case 'd':
                            date.setDate(val);
                            break;
                        case 'mm':
                        case 'm':
                            date.setMonth(val - 1);
                            break;
                        case 'yy':
                            date.setFullYear(2000 + val);
                            break;
                        case 'yyyy':
                            date.setFullYear(val);
                            break;
                    }
                }
            }
            return date;
        },
        formatDate: function (date, format) {
            var val = {
                d: date.getDate(),
                m: date.getMonth() + 1,
                yy: date.getFullYear().toString().substring(2),
                yyyy: date.getFullYear()
            };
            val.dd = (val.d < 10 ? '0' : '') + val.d;
            val.mm = (val.m < 10 ? '0' : '') + val.m;
            var date = [];
            for (var i = 0, cnt = format.parts.length; i < cnt; i++) {
                date.push(val[format.parts[i]]);
            }
            return date.join(format.separator);
        },
        headTemplate: '<thead>' +
							'<tr>' +
								'<th class="prev">&lsaquo;</th>' +
								'<th colspan="5" class="switch"></th>' +
								'<th class="next">&rsaquo;</th>' +
							'</tr>' +
						'</thead>',
        contTemplate: '<tbody><tr><td colspan="7"></td></tr></tbody>'
    };
    DPGlobal.template = '<div class="datepicker dropdown-menu">' +
							'<div class="datepicker-days">' +
								'<table class=" table-condensed">' +
									DPGlobal.headTemplate +
									'<tbody></tbody>' +
								'</table>' +
							'</div>' +
							'<div class="datepicker-months">' +
								'<table class="table-condensed">' +
									DPGlobal.headTemplate +
									DPGlobal.contTemplate +
								'</table>' +
							'</div>' +
							'<div class="datepicker-years">' +
								'<table class="table-condensed">' +
									DPGlobal.headTemplate +
									DPGlobal.contTemplate +
								'</table>' +
							'</div>' +
						'</div>';

}(window.jQuery)
;
/* =============================================================
 * bootstrap-scrollspy.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#scrollspy
 * =============================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ============================================================== */



!function ($) {

  "use strict"; // jshint ;_;


 /* SCROLLSPY CLASS DEFINITION
  * ========================== */

  function ScrollSpy(element, options) {
    var process = $.proxy(this.process, this)
      , $element = $(element).is('body') ? $(window) : $(element)
      , href
    this.options = $.extend({}, $.fn.scrollspy.defaults, options)
    this.$scrollElement = $element.on('scroll.scroll-spy.data-api', process)
    this.selector = (this.options.target
      || ((href = $(element).attr('href')) && href.replace(/.*(?=#[^\s]+$)/, '')) //strip for ie7
      || '') + ' .nav li > a'
    this.$body = $('body')
    this.refresh()
    this.process()
  }

  ScrollSpy.prototype = {

      constructor: ScrollSpy

    , refresh: function () {
        var self = this
          , $targets

        this.offsets = $([])
        this.targets = $([])

        $targets = this.$body
          .find(this.selector)
          .map(function () {
            var $el = $(this)
              , href = $el.data('target') || $el.attr('href')
              , $href = /^#\w/.test(href) && $(href)
            return ( $href
              && $href.length
              && [[ $href.position().top, href ]] ) || null
          })
          .sort(function (a, b) { return a[0] - b[0] })
          .each(function () {
            self.offsets.push(this[0])
            self.targets.push(this[1])
          })
      }

    , process: function () {
        var scrollTop = this.$scrollElement.scrollTop() + this.options.offset
          , scrollHeight = this.$scrollElement[0].scrollHeight || this.$body[0].scrollHeight
          , maxScroll = scrollHeight - this.$scrollElement.height()
          , offsets = this.offsets
          , targets = this.targets
          , activeTarget = this.activeTarget
          , i

        if (scrollTop >= maxScroll) {
          return activeTarget != (i = targets.last()[0])
            && this.activate ( i )
        }

        for (i = offsets.length; i--;) {
          activeTarget != targets[i]
            && scrollTop >= offsets[i]
            && (!offsets[i + 1] || scrollTop <= offsets[i + 1])
            && this.activate( targets[i] )
        }
      }

    , activate: function (target) {
        var active
          , selector

        this.activeTarget = target

        $(this.selector)
          .parent('.active')
          .removeClass('active')

        selector = this.selector
          + '[data-target="' + target + '"],'
          + this.selector + '[href="' + target + '"]'

        active = $(selector)
          .parent('li')
          .addClass('active')

        if (active.parent('.dropdown-menu').length)  {
          active = active.closest('li.dropdown').addClass('active')
        }

        active.trigger('activate')
      }

  }


 /* SCROLLSPY PLUGIN DEFINITION
  * =========================== */

  $.fn.scrollspy = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('scrollspy')
        , options = typeof option == 'object' && option
      if (!data) $this.data('scrollspy', (data = new ScrollSpy(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.scrollspy.Constructor = ScrollSpy

  $.fn.scrollspy.defaults = {
    offset: 10
  }


 /* SCROLLSPY DATA-API
  * ================== */

  $(window).on('load', function () {
    $('[data-spy="scroll"]').each(function () {
      var $spy = $(this)
      $spy.scrollspy($spy.data())
    })
  })

}(window.jQuery);
/* ========================================================
 * bootstrap-tab.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#tabs
 * ========================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================== */



!function ($) {

  "use strict"; // jshint ;_;


 /* TAB CLASS DEFINITION
  * ==================== */

  var Tab = function (element) {
    this.element = $(element)
  }

  Tab.prototype = {

    constructor: Tab

  , show: function () {
      var $this = this.element
        , $ul = $this.closest('ul:not(.dropdown-menu)')
        , selector = $this.attr('data-target')
        , previous
        , $target
        , e

      if (!selector) {
        selector = $this.attr('href')
        selector = selector && selector.replace(/.*(?=#[^\s]*$)/, '') //strip for ie7
      }

      if ( $this.parent('li').hasClass('active') ) return

      previous = $ul.find('.active:last a')[0]

      e = $.Event('show', {
        relatedTarget: previous
      })

      $this.trigger(e)

      if (e.isDefaultPrevented()) return

      $target = $(selector)

      this.activate($this.parent('li'), $ul)
      this.activate($target, $target.parent(), function () {
        $this.trigger({
          type: 'shown'
        , relatedTarget: previous
        })
      })
    }

  , activate: function ( element, container, callback) {
      var $active = container.find('> .active')
        , transition = callback
            && $.support.transition
            && $active.hasClass('fade')

      function next() {
        $active
          .removeClass('active')
          .find('> .dropdown-menu > .active')
          .removeClass('active')

        element.addClass('active')

        if (transition) {
          element[0].offsetWidth // reflow for transition
          element.addClass('in')
        } else {
          element.removeClass('fade')
        }

        if ( element.parent('.dropdown-menu') ) {
          element.closest('li.dropdown').addClass('active')
        }

        callback && callback()
      }

      transition ?
        $active.one($.support.transition.end, next) :
        next()

      $active.removeClass('in')
    }
  }


 /* TAB PLUGIN DEFINITION
  * ===================== */

  $.fn.tab = function ( option ) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('tab')
      if (!data) $this.data('tab', (data = new Tab(this)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.tab.Constructor = Tab


 /* TAB DATA-API
  * ============ */

  $(document).on('click.tab.data-api', '[data-toggle="tab"], [data-toggle="pill"]', function (e) {
    e.preventDefault()
    $(this).tab('show')
  })

}(window.jQuery);
/* ===========================================================
 * bootstrap-tooltip.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#tooltips
 * Inspired by the original jQuery.tipsy by Jason Frame
 * ===========================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ========================================================== */



!function ($) {

  "use strict"; // jshint ;_;


 /* TOOLTIP PUBLIC CLASS DEFINITION
  * =============================== */

  var Tooltip = function (element, options) {
    this.init('tooltip', element, options)
  }

  Tooltip.prototype = {

    constructor: Tooltip

  , init: function (type, element, options) {
      var eventIn
        , eventOut

      this.type = type
      this.$element = $(element)
      this.options = this.getOptions(options)
      this.enabled = true

      if (this.options.trigger == 'click') {
        this.$element.on('click.' + this.type, this.options.selector, $.proxy(this.toggle, this))
      } else if (this.options.trigger != 'manual') {
        eventIn = this.options.trigger == 'hover' ? 'mouseenter' : 'focus'
        eventOut = this.options.trigger == 'hover' ? 'mouseleave' : 'blur'
        this.$element.on(eventIn + '.' + this.type, this.options.selector, $.proxy(this.enter, this))
        this.$element.on(eventOut + '.' + this.type, this.options.selector, $.proxy(this.leave, this))
      }

      this.options.selector ?
        (this._options = $.extend({}, this.options, { trigger: 'manual', selector: '' })) :
        this.fixTitle()
    }

  , getOptions: function (options) {
      options = $.extend({}, $.fn[this.type].defaults, options, this.$element.data())

      if (options.delay && typeof options.delay == 'number') {
        options.delay = {
          show: options.delay
        , hide: options.delay
        }
      }

      return options
    }

  , enter: function (e) {
      var self = $(e.currentTarget)[this.type](this._options).data(this.type)

      if (!self.options.delay || !self.options.delay.show) return self.show()

      clearTimeout(this.timeout)
      self.hoverState = 'in'
      this.timeout = setTimeout(function() {
        if (self.hoverState == 'in') self.show()
      }, self.options.delay.show)
    }

  , leave: function (e) {
      var self = $(e.currentTarget)[this.type](this._options).data(this.type)

      if (this.timeout) clearTimeout(this.timeout)
      if (!self.options.delay || !self.options.delay.hide) return self.hide()

      self.hoverState = 'out'
      this.timeout = setTimeout(function() {
        if (self.hoverState == 'out') self.hide()
      }, self.options.delay.hide)
    }

  , show: function () {
      var $tip
        , inside
        , pos
        , actualWidth
        , actualHeight
        , placement
        , tp

      if (this.hasContent() && this.enabled) {
        $tip = this.tip()
        this.setContent()

        if (this.options.animation) {
          $tip.addClass('fade')
        }

        placement = typeof this.options.placement == 'function' ?
          this.options.placement.call(this, $tip[0], this.$element[0]) :
          this.options.placement

        inside = /in/.test(placement)

        $tip
          .detach()
          .css({ top: 0, left: 0, display: 'block' })
          .insertAfter(this.$element)

        pos = this.getPosition(inside)

        actualWidth = $tip[0].offsetWidth
        actualHeight = $tip[0].offsetHeight

        switch (inside ? placement.split(' ')[1] : placement) {
          case 'bottom':
            tp = {top: pos.top + pos.height, left: pos.left + pos.width / 2 - actualWidth / 2}
            break
          case 'top':
            tp = {top: pos.top - actualHeight, left: pos.left + pos.width / 2 - actualWidth / 2}
            break
          case 'left':
            tp = {top: pos.top + pos.height / 2 - actualHeight / 2, left: pos.left - actualWidth}
            break
          case 'right':
            tp = {top: pos.top + pos.height / 2 - actualHeight / 2, left: pos.left + pos.width}
            break
        }

        $tip
          .offset(tp)
          .addClass(placement)
          .addClass('in')
      }
    }

  , setContent: function () {
      var $tip = this.tip()
        , title = this.getTitle()

      $tip.find('.tooltip-inner')[this.options.html ? 'html' : 'text'](title)
      $tip.removeClass('fade in top bottom left right')
    }

  , hide: function () {
      var that = this
        , $tip = this.tip()

      $tip.removeClass('in')

      function removeWithAnimation() {
        var timeout = setTimeout(function () {
          $tip.off($.support.transition.end).detach()
        }, 500)

        $tip.one($.support.transition.end, function () {
          clearTimeout(timeout)
          $tip.detach()
        })
      }

      $.support.transition && this.$tip.hasClass('fade') ?
        removeWithAnimation() :
        $tip.detach()

      return this
    }

  , fixTitle: function () {
      var $e = this.$element
      if ($e.attr('title') || typeof($e.attr('data-original-title')) != 'string') {
        $e.attr('data-original-title', $e.attr('title') || '').removeAttr('title')
      }
    }

  , hasContent: function () {
      return this.getTitle()
    }

  , getPosition: function (inside) {
      return $.extend({}, (inside ? {top: 0, left: 0} : this.$element.offset()), {
        width: this.$element[0].offsetWidth
      , height: this.$element[0].offsetHeight
      })
    }

  , getTitle: function () {
      var title
        , $e = this.$element
        , o = this.options

      title = $e.attr('data-original-title')
        || (typeof o.title == 'function' ? o.title.call($e[0]) :  o.title)

      return title
    }

  , tip: function () {
      return this.$tip = this.$tip || $(this.options.template)
    }

  , validate: function () {
      if (!this.$element[0].parentNode) {
        this.hide()
        this.$element = null
        this.options = null
      }
    }

  , enable: function () {
      this.enabled = true
    }

  , disable: function () {
      this.enabled = false
    }

  , toggleEnabled: function () {
      this.enabled = !this.enabled
    }

  , toggle: function (e) {
      var self = $(e.currentTarget)[this.type](this._options).data(this.type)
      self[self.tip().hasClass('in') ? 'hide' : 'show']()
    }

  , destroy: function () {
      this.hide().$element.off('.' + this.type).removeData(this.type)
    }

  }


 /* TOOLTIP PLUGIN DEFINITION
  * ========================= */

  $.fn.tooltip = function ( option ) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('tooltip')
        , options = typeof option == 'object' && option
      if (!data) $this.data('tooltip', (data = new Tooltip(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.tooltip.Constructor = Tooltip

  $.fn.tooltip.defaults = {
    animation: true
  , placement: 'top'
  , selector: false
  , template: '<div class="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>'
  , trigger: 'hover'
  , title: ''
  , delay: 0
  , html: false
  }

}(window.jQuery);
/* ===========================================================
 * bootstrap-popover.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#popovers
 * ===========================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * =========================================================== */



!function ($) {

  "use strict"; // jshint ;_;


 /* POPOVER PUBLIC CLASS DEFINITION
  * =============================== */

  var Popover = function (element, options) {
    this.init('popover', element, options)
  }


  /* NOTE: POPOVER EXTENDS BOOTSTRAP-TOOLTIP.js
     ========================================== */

  Popover.prototype = $.extend({}, $.fn.tooltip.Constructor.prototype, {

    constructor: Popover

  , setContent: function () {
      var $tip = this.tip()
        , title = this.getTitle()
        , content = this.getContent()

      $tip.find('.popover-title')[this.options.html ? 'html' : 'text'](title)
      $tip.find('.popover-content > *')[this.options.html ? 'html' : 'text'](content)

      $tip.removeClass('fade top bottom left right in')
    }

  , hasContent: function () {
      return this.getTitle() || this.getContent()
    }

  , getContent: function () {
      var content
        , $e = this.$element
        , o = this.options

      content = $e.attr('data-content')
        || (typeof o.content == 'function' ? o.content.call($e[0]) :  o.content)

      return content
    }

  , tip: function () {
      if (!this.$tip) {
        this.$tip = $(this.options.template)
      }
      return this.$tip
    }

  , destroy: function () {
      this.hide().$element.off('.' + this.type).removeData(this.type)
    }

  })


 /* POPOVER PLUGIN DEFINITION
  * ======================= */

  $.fn.popover = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('popover')
        , options = typeof option == 'object' && option
      if (!data) $this.data('popover', (data = new Popover(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.popover.Constructor = Popover

  $.fn.popover.defaults = $.extend({} , $.fn.tooltip.defaults, {
    placement: 'right'
  , trigger: 'click'
  , content: ''
  , template: '<div class="popover"><div class="arrow"></div><div class="popover-inner"><h3 class="popover-title"></h3><div class="popover-content"><p></p></div></div></div>'
  })

}(window.jQuery);
/* =============================================================
 * bootstrap-typeahead.js v2.2.1
 * http://twitter.github.com/bootstrap/javascript.html#typeahead
 * =============================================================
 * Copyright 2012 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ============================================================ */



!function($){

  "use strict"; // jshint ;_;


 /* TYPEAHEAD PUBLIC CLASS DEFINITION
  * ================================= */

  var Typeahead = function (element, options) {
    this.$element = $(element)
    this.options = $.extend({}, $.fn.typeahead.defaults, options)
    this.matcher = this.options.matcher || this.matcher
    this.sorter = this.options.sorter || this.sorter
    this.highlighter = this.options.highlighter || this.highlighter
    this.updater = this.options.updater || this.updater
    this.$menu = $(this.options.menu).appendTo('body')
    this.source = this.options.source
    this.shown = false
    this.listen()
  }

  Typeahead.prototype = {

    constructor: Typeahead

  , select: function () {
      var val = this.$menu.find('.active').attr('data-value')
      this.$element
        .val(this.updater(val))
        .change()
      return this.hide()
    }

  , updater: function (item) {
      return item
    }

  , show: function () {
      var pos = $.extend({}, this.$element.offset(), {
        height: this.$element[0].offsetHeight
      })

      this.$menu.css({
        top: pos.top + pos.height
      , left: pos.left
      })

      this.$menu.show()
      this.shown = true
      return this
    }

  , hide: function () {
      this.$menu.hide()
      this.shown = false
      return this
    }

  , lookup: function (event) {
      var items

      this.query = this.$element.val()

      if (!this.query || this.query.length < this.options.minLength) {
        return this.shown ? this.hide() : this
      }

      items = $.isFunction(this.source) ? this.source(this.query, $.proxy(this.process, this)) : this.source

      return items ? this.process(items) : this
    }

  , process: function (items) {
      var that = this

      items = $.grep(items, function (item) {
        return that.matcher(item)
      })

      items = this.sorter(items)

      if (!items.length) {
        return this.shown ? this.hide() : this
      }

      return this.render(items.slice(0, this.options.items)).show()
    }

  , matcher: function (item) {
      return ~item.toLowerCase().indexOf(this.query.toLowerCase())
    }

  , sorter: function (items) {
      var beginswith = []
        , caseSensitive = []
        , caseInsensitive = []
        , item

      while (item = items.shift()) {
        if (!item.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(item)
        else if (~item.indexOf(this.query)) caseSensitive.push(item)
        else caseInsensitive.push(item)
      }

      return beginswith.concat(caseSensitive, caseInsensitive)
    }

  , highlighter: function (item) {
      var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
      return item.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
        return '<strong>' + match + '</strong>'
      })
    }

  , render: function (items) {
      var that = this

      items = $(items).map(function (i, item) {
        i = $(that.options.item).attr('data-value', item)
        i.find('a').html(that.highlighter(item))
        return i[0]
      })

      items.first().addClass('active')
      this.$menu.html(items)
      return this
    }

  , next: function (event) {
      var active = this.$menu.find('.active').removeClass('active')
        , next = active.next()

      if (!next.length) {
        next = $(this.$menu.find('li')[0])
      }

      next.addClass('active')
    }

  , prev: function (event) {
      var active = this.$menu.find('.active').removeClass('active')
        , prev = active.prev()

      if (!prev.length) {
        prev = this.$menu.find('li').last()
      }

      prev.addClass('active')
    }

  , listen: function () {
      this.$element
        .on('blur',     $.proxy(this.blur, this))
        .on('keypress', $.proxy(this.keypress, this))
        .on('keyup',    $.proxy(this.keyup, this))

      if (this.eventSupported('keydown')) {
        this.$element.on('keydown', $.proxy(this.keydown, this))
      }

      this.$menu
        .on('click', $.proxy(this.click, this))
        .on('mouseenter', 'li', $.proxy(this.mouseenter, this))
    }

  , eventSupported: function(eventName) {
      var isSupported = eventName in this.$element
      if (!isSupported) {
        this.$element.setAttribute(eventName, 'return;')
        isSupported = typeof this.$element[eventName] === 'function'
      }
      return isSupported
    }

  , move: function (e) {
      if (!this.shown) return

      switch(e.keyCode) {
        case 9: // tab
        case 13: // enter
        case 27: // escape
          e.preventDefault()
          break

        case 38: // up arrow
          e.preventDefault()
          this.prev()
          break

        case 40: // down arrow
          e.preventDefault()
          this.next()
          break
      }

      e.stopPropagation()
    }

  , keydown: function (e) {
      this.suppressKeyPressRepeat = !~$.inArray(e.keyCode, [40,38,9,13,27])
      this.move(e)
    }

  , keypress: function (e) {
      if (this.suppressKeyPressRepeat) return
      this.move(e)
    }

  , keyup: function (e) {
      switch(e.keyCode) {
        case 40: // down arrow
        case 38: // up arrow
        case 16: // shift
        case 17: // ctrl
        case 18: // alt
          break

        case 9: // tab
        case 13: // enter
          if (!this.shown) return
          this.select()
          break

        case 27: // escape
          if (!this.shown) return
          this.hide()
          break

        default:
          this.lookup()
      }

      e.stopPropagation()
      e.preventDefault()
  }

  , blur: function (e) {
      var that = this
      setTimeout(function () { that.hide() }, 150)
    }

  , click: function (e) {
      e.stopPropagation()
      e.preventDefault()
      this.select()
    }

  , mouseenter: function (e) {
      this.$menu.find('.active').removeClass('active')
      $(e.currentTarget).addClass('active')
    }

  }


  /* TYPEAHEAD PLUGIN DEFINITION
   * =========================== */

  $.fn.typeahead = function (option) {
    return this.each(function () {
      var $this = $(this)
        , data = $this.data('typeahead')
        , options = typeof option == 'object' && option
      if (!data) $this.data('typeahead', (data = new Typeahead(this, options)))
      if (typeof option == 'string') data[option]()
    })
  }

  $.fn.typeahead.defaults = {
    source: []
  , items: 8
  , menu: '<ul class="typeahead dropdown-menu"></ul>'
  , item: '<li><a href="#"></a></li>'
  , minLength: 1
  }

  $.fn.typeahead.Constructor = Typeahead


 /*   TYPEAHEAD DATA-API
  * ================== */

  $(document).on('focus.typeahead.data-api', '[data-provide="typeahead"]', function (e) {
    var $this = $(this)
    if ($this.data('typeahead')) return
    e.preventDefault()
    $this.typeahead($this.data())
  })

}(window.jQuery);













