/**
 * resumeedit.js
 *
 * @brief 简历编辑界面前端逻辑控制
 */
var arrayModules = [{ name: 'baseinfo', tip: '个人基本信息' }, { name: 'education', tip: '教育背景' },
    { name: 'rewards', tip: '获奖阶段' }, { name: 'language', tip: '外语能力描述' },
    { name: 'computer', tip: '计算机能力描述' }, { name: 'student_ganbu', tip: '学生工作' },
    { name: 'trainning', tip: '培训经历' }, { name: 'shijian', tip: '实践经历' },
    { name: 'shixi', tip: '实习经历' }, { name: 'zigezhengshu', tip: '资格证书' },
    { name: 'family', tip: '家庭背景' }, { name: 'dissertation', tip: '毕业论文' },
    { name: 'workplan', tip: '职业规划' }, { name: 'selfjudge', tip: '自我评价' },
    { name: 'speciality', tip: '特长爱好' }, { name: 'selfrecomadation', tip: '自荐信' },
    { name: 'otherinfo', tip: '其他说明' }, { name: 'targetbank', tip: '报考银行' }, { name: 'promise', tip: '其他承诺' }
];

var DivModule = {
    init: function($elem, tip, hideSubs) {
        var self = this;
        self.$elem = $elem;
        self.tip = tip;
        self.hideSubs = hideSubs; //需要隐藏的子控件
        self.initElem();
    },

    initElem: function() {
        var self = this;
        for (var i = 0; i < self.hideSubs.length; ++i) {
            $('#' + self.hideSubs[i]).hide();
        }
        self.hide();
    },

    show: function() {
        this.$elem.show();
    },

    hide: function() {
        this.$elem.hide();
    }
};

var ModuleManager = {
    init: function(config) {
        var self = this;
        self.config = config;
        self.subs = [];
        self.curIndex = -1;
        self.initializeSubModule();
        self.createLeftMeun();
    },

    isConfigModule: function(modulename) {
        var self = this;
        if (self.config[modulename]) {
            return true;
        }
        return false;
    },

    isEnableModule: function(modulename) {
        var self = this;
        if (self.config[modulename].show) {
            return true;
        }
        return false;
    },

    getModuleUnEnableKeys: function(modulename) {
        var self = this;
        var ret = [];
        var keysArray = self.config[modulename].keys;
        if (keysArray) {
            for (var i = 0; i < keysArray.length; ++i) {
                var subInfo = keysArray[i];
                if (subInfo && subInfo.enable == false) {
                    if (subInfo.keypath) {
                        ret.push(subInfo.keypath);
                    }
                }
            }
        }
        return ret;
    },

    createModule: function(modulename, tip, hideSubs) {
        var self = this;
        var divModule = Object.create(DivModule);
        divModule.init($('#' + modulename), tip, hideSubs);
        self.subs.push(divModule);
    },

    removeModule: function(modulename) {
        $('#' + modulename).remove();
    },

    //根据简历模板，初始化界面模块
    initializeSubModule: function() {
        var self = this;
        for (var i = 0; i < arrayModules.length; ++i) {
            var modulename = arrayModules[i].name;
            var moduletip = arrayModules[i].tip;
            if (self.isConfigModule(modulename)) {
                if (self.isEnableModule(modulename)) {
                    var keysArray = self.getModuleUnEnableKeys(modulename);
                    self.createModule(modulename, moduletip, keysArray);
                } else {
                    self.removeModule(modulename);
                }
            } else {
                self.createModule(arrayModules[i].name, moduletip, []);
            }
        }
    },

    createLeftMeun: function() {
        var self = this;
        var $newMenu = $('<li><a id="resume_menus"><i class="fa fa-home"></i> 简历编辑 <span class="fa fa-chevron-down"></span></a></li>');
        var $newMenuUl = $('<ul class="nav child_menu"></ul>');

        $newMenu.append($newMenuUl);
        $('#left_menu').append($newMenu);

        for (var i = 0; i < self.subs.length; ++i) {
            var $subMeun = $('<li><a href="#" class="resume_menu" data="' + i + '">' + self.subs[i].tip + '</a></li>');
            $newMenuUl.append($subMeun);
        }

        //绑定菜单事件
        var $SIDEBAR_MENU = $('#sidebar-menu'),
            $SIDEBAR_FOOTER = $('.sidebar-footer'),
            $LEFT_COL = $('.left_col'),
            $RIGHT_COL = $('.right_col'),
            $NAV_MENU = $('.nav_menu'),
            $FOOTER = $('footer');

        // // TODO: This is some kind of easy fix, maybe we can improve this
        var setContentHeight = function() {
            // reset height
            $RIGHT_COL.css('min-height', $(window).height());

            var bodyHeight = $('body').outerHeight(),
                footerHeight = $('body').hasClass('footer_fixed') ? -10 : $FOOTER.height(),
                leftColHeight = $LEFT_COL.eq(1).height() + $SIDEBAR_FOOTER.height(),
                contentHeight = bodyHeight < leftColHeight ? leftColHeight : bodyHeight;

            // normalize content
            contentHeight -= $NAV_MENU.height() + footerHeight;

            $RIGHT_COL.css('min-height', contentHeight);
        };

        $newMenu.find('a#resume_menus').on('click', function(ev) {
            var $li = $(this).parent();

            if ($li.is('.active')) {
                $li.removeClass('active active-sm');
                $('ul:first', $li).slideUp(function() {
                    setContentHeight();
                });
            } else {
                // prevent closing menu if we are on child menu
                if (!$li.parent().is('.child_menu')) {
                    $newMenu.find('li').removeClass('active active-sm');
                    $newMenu.find('li ul').slideUp();
                }

                $li.addClass('active');

                $('ul:first', $li).slideDown(function() {
                    setContentHeight();
                });
            }
        });

        $('.resume_menu').click(function() {
            var index = $(this).attr('data');
            self.selectModule(parseInt(index));
        });
    },

    selectModule: function(index) {
        var self = this;
        if (index < 0 || index >= self.subs.length) {
            return;
        }

        if (self.curIndex != -1) {
            self.subs[self.curIndex].hide();
        }
        self.subs[index].show();
        self.curIndex = index;
    },

    preModule: function() {
        this.selectModule(this.curIndex - 1);
    },

    nextModule: function() {
        this.selectModule(this.curIndex + 1);
    }
};