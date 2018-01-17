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
            self.createModle();
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
                var option = '<option>不评分</option>';
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
                                        <select class="form-control rule-select">' + option + '</select>\
                                    </div>\
                                    <div class="col-md-7 col-sm-7 col-xs-12">\
                                        <input type="text" class="form-control" placeholder="" readonly>\
                                    </div>\
                                </div>';
                strHtml = strHtml + strSubHtml;
            }
            self.$elem.html(strHtml);
        },

        createModle: function() {
            var modal1 = '<div class="modal fade bs-example-modal-sm" id="modal_rule_1" tabindex="-1" role="dialog" aria-hidden="true">\
                                <div class="modal-dialog modal-sm">\
                                    <div class="modal-content">\
                                        <div class="modal-header">\
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>\
                                            <h4 class="modal-title" id="myModalLabel2">评分规则设置</h4>\
                                        </div>\
                                        <div class="modal-body">\
                                            <h5>填写得分值：</h5>\
                                            <input type="text" class="form-control" placeholder="">\
                                        </div>\
                                        <div class="modal-footer">\
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                            <button type="button" class="btn btn-primary">保存设置</button>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>';
            $('body').append(modal1);

            var modal2 = '<div class="modal fade bs-example-modal-sm" id="modal_rule_2" tabindex="-1" role="dialog" aria-hidden="true">\
                                <div class="modal-dialog modal-sm">\
                                    <div class="modal-content">\
                                        <div class="modal-header">\
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>\
                                            <h4 class="modal-title" id="myModalLabel2">评分规则设置</h4>\
                                        </div>\
                                        <div class="modal-body">\
                                            <h5>正确号码得分值：</h5>\
                                            <input type="text" class="form-control" placeholder="">\
                                        </div>\
                                        <div class="modal-footer">\
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                            <button type="button" class="btn btn-primary">保存设置</button>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>';
            $('body').append(modal2);

            var modal3 = '<div class="modal fade bs-example-modal-sm" id="modal_rule_3" tabindex="-1" role="dialog" aria-hidden="true">\
                                <div class="modal-dialog modal-sm">\
                                    <div class="modal-content">\
                                        <div class="modal-header">\
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>\
                                            <h4 class="modal-title" id="myModalLabel2">评分规则设置</h4>\
                                        </div>\
                                        <div class="modal-body">\
                                            <h5>正确身份证得分值：</h5>\
                                            <input type="text" class="form-control" placeholder="">\
                                        </div>\
                                        <div class="modal-footer">\
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                            <button type="button" class="btn btn-primary">保存设置</button>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>';
            $('body').append(modal3);

            var modal4 = '<div class="modal fade bs-example-modal-lg" id="modal_rule_4" tabindex="-1" role="dialog" aria-hidden="true">\
                            <div class="modal-dialog modal-lg">\
                                <div class="modal-content">\
                                    <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>\
                                        <h4 class="modal-title" id="myModalLabel">评分规则设置</h4>\
                                    </div>\
                                    <div class="modal-body">\
                                        <table class="table table-striped table-bordered">\
                                            <thead>\
                                                <tr>\
                                                    <th>关键字</th>\
                                                    <th>分值</th>\
                                                    <th>操作</th>\
                                                </tr>\
                                            </thead>\
                                            <tbody>\
                                                <tr>\
                                                    <td>姓名</td>\
                                                    <td>1</td>\
                                                    <td>删除</td>\
                                                </tr>\
                                            </tbody>\
                                        </table>\
                                        <h5 class="fa fa-edit">新增</h5>\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group">\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">关键字</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">得分值</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" placeholder="" />\
                                                </div>\
                                                <button type="button" class="btn btn-default">新增</button>\
                                            </div>\
                                        </div>\
                                    </div>\
                                    <div class="modal-footer">\
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                        <button type="button" class="btn btn-primary">保存设置</button>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>';

            $('body').append(modal4);

            var modal5 = '<div class="modal fade bs-example-modal-lg" id="modal_rule_5" tabindex="-1" role="dialog" aria-hidden="true">\
                            <div class="modal-dialog modal-lg">\
                                <div class="modal-content">\
                                    <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>\
                                        <h4 class="modal-title" id="myModalLabel">评分规则设置</h4>\
                                    </div>\
                                    <div class="modal-body">\
                                        <h4>Text in a modal</h4>\
                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\
                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>\
                                    </div>\
                                    <div class="modal-footer">\
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                        <button type="button" class="btn btn-primary">保存设置</button>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>';

            $('body').append(modal5);

            var modal6 = '<div class="modal fade bs-example-modal-lg" id="modal_rule_6" tabindex="-1" role="dialog" aria-hidden="true">\
                            <div class="modal-dialog modal-lg">\
                                <div class="modal-content">\
                                    <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>\
                                        <h4 class="modal-title" id="myModalLabel">评分规则设置</h4>\
                                    </div>\
                                    <div class="modal-body">\
                                        <table class="table table-striped table-bordered">\
                                            <thead>\
                                                <tr>\
                                                    <th>关键字</th>\
                                                    <th>分值</th>\
                                                    <th>操作</th>\
                                                </tr>\
                                            </thead>\
                                            <tbody>\
                                                <tr>\
                                                    <td>姓名</td>\
                                                    <td>1</td>\
                                                    <td>删除</td>\
                                                </tr>\
                                            </tbody>\
                                        </table>\
                                        <h4>Text in a modal</h4>\
                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\
                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>\
                                    </div>\
                                    <div class="modal-footer">\
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                        <button type="button" class="btn btn-primary">保存设置</button>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>';

            $('body').append(modal6);

            var modal7 = '<div class="modal fade bs-example-modal-lg" id="modal_rule_7" tabindex="-1" role="dialog" aria-hidden="true">\
                            <div class="modal-dialog modal-lg">\
                                <div class="modal-content">\
                                    <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>\
                                        <h4 class="modal-title" id="myModalLabel">评分规则设置</h4>\
                                    </div>\
                                    <div class="modal-body">\
                                        <h4>Text in a modal</h4>\
                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>\
                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>\
                                    </div>\
                                    <div class="modal-footer">\
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                        <button type="button" class="btn btn-primary">保存设置</button>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>';

            $('body').append(modal7);
        },

        setTrigger: function() {
            var self = this;

            $(".rule-select").change(function() {
                var str = $(this).children('option:selected').val();
                switch (str) {
                    case '是否填写规则':
                        $('#modal_rule_1').modal();
                        break;
                    case '手机号规则':
                        $('#modal_rule_2').modal();
                        break;
                    case '身份证规则':
                        $('#modal_rule_3').modal();
                        break;
                    case '关键字规则':
                        $('#modal_rule_4').modal();
                        break;
                    case '身高规则':
                        $('#modal_rule_5').modal();
                        break;
                    case '体重规则':
                        $('#modal_rule_6').modal();
                        break;
                    case '字数规则':
                        $('#modal_rule_7').modal();
                        break;
                }
            });
        }
    };

    $.fn.scorerule = function(options) {
        if ($.isArray(options)) {
            return this.each(function() {
                var scoreruleObj = Object.create(ScoreRule);
                scoreruleObj.init(options, this);
            });
        }
    };

})(jQuery, window, document);