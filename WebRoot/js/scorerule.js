/**
 * scorerule.js
 *
 * @brief 评分规则设置控件
 */

if (typeof Object.create !== 'function') {
    Object.create = function(obj) {
        function F() {}
        F.prototype = obj;
        return new F();
    };
}

(function($, window, document, undefined) {

    var ScoreRule = {
        init: function(options, elem) {
            var self = this;
            self.elem = elem;
            self.$elem = $(elem);
            self.options = options;
            self.initializeScoreRule();
        },

        initializeScoreRule: function() {
            var self = this;
            self.createElem();
            self.setTrigger();
        },

        createElem: function() {
            var self = this;
            //清空
            self.$elem.html("");
            //构建
            var strHtml = '';
            for (var i = 0; i < self.options.length; i++) {
                var option = '';
                var tempArray = self.options[i].split('#');
                if (tempArray.length > 1) {
                    var keyArray = tempArray[1].split(',');
                    for (var j = 0; j < keyArray.length; j++) {
                        switch (keyArray[j]) {
                            case '1':
                                option += '<option>是否填写规则</option>';
                                break;
                            case '2':
                                option += '<option>手机号规则</option>';
                                break;
                            case '3':
                                option += '<option>身份证规则</option>';
                                break;
                            case '4':
                                option += '<option>关键字规则</option>';
                                break;
                            case '5':
                                option += '<option>身高规则</option>';
                                break;
                            case '6':
                                option += '<option>体重规则</option>';
                                break;
                            case '7':
                                option += '<option>字数规则</option>';
                                break;
                        }
                    }
                } else {
                    option += '<option>是否填写规则</option>';
                    option += '<option>关键字规则</option>';
                }

                var strSubHtml = '<div class="form-group">\
                                    <div class="col-md-2 col-sm-2 col-xs-12">\
                                        <input class="check_grey" type="checkbox" checked="" required />\
                                        <label class="control-label">' + tempArray[0] + '</label>\
                                    </div>\
                                    <div class="col-md-3 col-sm-3 col-xs-12">\
                                        <select name="" class="form-control">' + option + '</select>\
                                    </div>\
                                    <div class="col-md-7 col-sm-7 col-xs-12">\
                                        <input name="" type="text" class="form-control" placeholder="" readonly>\
                                    </div>\
                                </div>';
                strHtml = strHtml + strSubHtml;
            }
            self.$elem.html(strHtml);
        },

        setTrigger: function() {
            var self = this;



            // if (self.options.hover) {
            //     var moveTime;

            //     function decideTimeout() {
            //         if (self.$elem.hasClass('pressed')) {
            //             moveTime = setTimeout(function() {
            //                 self.hide();
            //             }, 150);
            //         } else {
            //             clearTimeout(moveTime);
            //         };
            //     };

            //     self.$elem.on({
            //         mouseenter: function(event) {
            //             if (self.$elem.hasClass('pressed')) {
            //                 clearTimeout(moveTime);
            //             } else {
            //                 self.show();
            //             }
            //         }
            //     });

            //     self.$elem.parent().on({
            //         mouseleave: function(event) { decideTimeout(); }
            //     });

            //     $('.tool-container').on({
            //         mouseenter: function(event) { clearTimeout(moveTime); },
            //         mouseleave: function(event) { decideTimeout(); }
            //     });
            // }

            // $(window).resize(function(event) {
            //     event.stopPropagation();
            //     if (self.toolbar.is(":visible")) {
            //         self.toolbarCss = self.getCoordinates(self.options.position, 20);
            //         self.collisionDetection();
            //         self.toolbar.css(self.toolbarCss);
            //         self.toolbar_arrow.css(self.arrowCss);
            //     }
            // });
        }
    };

    $.fn.scorerule = function(options) {
        if ($.isArray(options)) {
            return this.each(function() {
                var scoreruleObj = Object.create(ScoreRule);
                scoreruleObj.init(options, this);
                //$(this).data('scoreruleObj', scoreruleObj);
            });
        }
    };

})(jQuery, window, document);