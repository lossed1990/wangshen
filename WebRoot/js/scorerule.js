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
            self.data = {};
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
                self.data[tempArray[0]] = {};
            }
            self.$elem.html(strHtml);
        },

        createModle: function() {
            var modal1 = '<div class="modal fade bs-example-modal-sm" id="modal_rule_1" tabindex="-1" role="dialog" aria-hidden="true">\
                                <div class="modal-dialog modal-sm">\
                                    <div class="modal-content">\
                                        <div class="modal-header">\
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>\
                                            <h4 class="modal-title">评分规则设置</h4>\
                                        </div>\
                                        <div class="modal-body">\
                                            <h5>填写得分值：</h5>\
                                            <input class="form-control" id="input1_score" type="text" placeholder="">\
                                        </div>\
                                        <div class="modal-footer">\
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                            <button type="button" class="btn btn-primary" id="btn1_save">保存设置</button>\
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
                                            <h4 class="modal-title">评分规则设置</h4>\
                                        </div>\
                                        <div class="modal-body">\
                                            <h5>正确号码得分值：</h5>\
                                            <input type="text" class="form-control" id="input2_score" placeholder="">\
                                        </div>\
                                        <div class="modal-footer">\
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                            <button type="button" class="btn btn-primary" id="btn2_save">保存设置</button>\
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
                                            <h4 class="modal-title">评分规则设置</h4>\
                                        </div>\
                                        <div class="modal-body">\
                                            <h5>正确身份证得分值：</h5>\
                                            <input type="text" class="form-control" id="input3_score" placeholder="">\
                                        </div>\
                                        <div class="modal-footer">\
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                            <button type="button" class="btn btn-primary" id="btn3_save">保存设置</button>\
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
                                        <table class="table table-striped table-bordered" id="table_4">\
                                            <thead>\
                                                <tr>\
                                                    <th>关键字</th>\
                                                    <th>分值</th>\
                                                    <th>操作</th>\
                                                </tr>\
                                            </thead>\
                                            <tbody>\
                                                <tr>\
                                                    <td>关键字</td>\
                                                    <td>分值</td>\
                                                    <td>操作</td>\
                                                </tr>\
                                            </tbody>\
                                        </table>\
                                        <h5 class="fa fa-edit">新增</h5>\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group">\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">关键字</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input4_key" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">得分值</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input4_score" placeholder="" />\
                                                </div>\
                                                <button type="button" class="btn btn-default" id="btn4_add">新增</button>\
                                            </div>\
                                        </div>\
                                    </div>\
                                    <div class="modal-footer">\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group">\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">得分上限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input4_max" placeholder="" />\
                                                </div>\
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                                <button type="button" class="btn btn-primary" id="btn4_save">保存设置</button>\
                                            </div>\
                                        </div>\
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
                                        <table class="table table-striped table-bordered" id="table_5">\
                                            <thead>\
                                                <tr>\
                                                    <th>性别</th>\
                                                    <th>上限</th>\
                                                    <th>下限</th>\
                                                    <th>分值</th>\
                                                    <th>合格</th>\
                                                    <th>操作</th>\
                                                </tr>\
                                            </thead>\
                                            <tbody>\
                                            </tbody>\
                                        </table>\
                                        <h5 class="fa fa-edit">新增</h5>\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group">\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">性别</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <select class="form-control" id="select5_sex">\
                                                        <option>男</option>\
                                                        <option>女</option>\
                                                    </select>\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">上限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input5_begin" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">下限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input5_end" placeholder="" />\
                                                </div>\
                                            </div>\
                                            <div class="form-group">\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">得分值</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input5_score" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">区间合格</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <select class="form-control" id="select5_flag">\
                                                        <option>是</option>\
                                                        <option>否</option>\
                                                    </select>\
                                                </div>\
                                                <div class="col-md-2 col-sm-2 col-xs-12 col-md-offset-1 col-sm-offset-1">\
                                                    <button type="button" class="btn btn-default" id="btn5_add">新增</button>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>\
                                    <div class="modal-footer">\
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                        <button type="button" class="btn btn-primary" id="btn5_save">保存设置</button>\
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
                self.cur_ui = $(this).parent().parent();

                //如果规则框无数据或者规则与先前不一致，则出空界面；否则出界面的同时，绑定已设置的数据；
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

            //1
            $('#btn1_save').click(function() {
                var score = $('#input1_score').val().trim();
                if (self.isNull(score)) {
                    alert('得分值不能为空！');
                    return;
                }

                if (!self.isInt(score)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                var config = {
                    "name": "是否填写",
                    "type": 1,
                    "score": score
                };

                //更新界面并缓存数据
                self.cur_ui.find('input').val(self.fillRuleResult(config));
                self.data[self.cur_ui.find('label').html()] = config;
                $('#input1_score').val("");
            });

            //2
            $('#btn2_save').click(function() {
                var score = $('#input2_score').val().trim();
                if (self.isNull(score)) {
                    alert('得分值不能为空！');
                    return;
                }

                if (!self.isInt(score)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                var config = {
                    "name": "手机号",
                    "type": 2,
                    "score": score
                };

                //更新界面并缓存数据
                self.cur_ui.find('input').val(self.fillRuleResult(config));
                self.data[self.cur_ui.find('label').html()] = config;
                $('#input2_score').val("");
            });

            //3
            $('#btn3_save').click(function() {
                var score = $('#input3_score').val().trim();
                if (self.isNull(score)) {
                    alert('得分值不能为空！');
                    return;
                }

                if (!self.isInt(score)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                var config = {
                    "name": "身份证",
                    "type": 3,
                    "score": score
                };

                //更新界面并缓存数据
                self.cur_ui.find('input').val(self.fillRuleResult(config));
                self.data[self.cur_ui.find('label').html()] = config;
                $('#input3_score').val("");
            });

            //4
            var $table4 = $("#table_4").DataTable({
                'columns': [ { 
                    "data": "key"
                },        {    
                    "data": "score"
                },        {  
                    "data":  null,
                    "className":   "center",
                    "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
                }]
            });
            $('#btn4_add').click(function() {
                var key = $('#input4_key').val().trim();
                var score = $('#input4_score').val().trim();

                if (self.isNull(key)) {
                    alert('关键字不能为空！');
                    return;
                }

                if (self.isNull(score)) {
                    alert('得分值不能为空！');
                    return;
                }

                if (!self.isInt(score)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                $table4.row.add({ 'key': key, 'score': score }).draw(false);
                $('#input4_key').val("");
                $('#input4_score').val("");

                //var info = $table4.page.info();
                //var dataRows = info.recordsTotal;
                //console.log(dataRows);
                //console.log($table4.row(0).data());
            });

            $table4.on( 'click', 'a#delrow', function (even)  {
                $table4.row( $(this).parents('tr') ).remove().draw(false); 
            });

            $('#btn4_save').click(function() {
                var info = $table4.page.info();
                var dataRows = info.recordsTotal;
                var config = {
                    "name": "关键词",
                    "type": 4,
                    "rule": [],
                    "max": $('#input4_max').val().trim()
                };
                for (var i = 0; i < dataRows; ++i) {
                    config.rule.push($table4.row(i).data());
                }
                self.cur_ui.find('input').val(self.fillRuleResult(config));
                self.data[self.cur_ui.find('label').html()] = config;

                //清空数据
                for (var i = 0; i < dataRows; ++i) {
                    $table4.row(i).remove().draw(false); 
                }
                $('#input4_max').val("");
            });

            //5
            var $table5 = $("#table_5").DataTable({
                'columns': [ { 
                    "data": "sex"
                },        {    
                    "data": "begin"
                },        {    
                    "data": "end"
                },        {    
                    "data": "score"
                },        {    
                    "data": "flag"
                },        {  
                    "data":  null,
                    "className":   "center",
                    "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
                }]
            });

            $('#btn5_add').click(function() {
                var sex = $('#select5_sex').val().trim();
                var begin = $('#input5_begin').val().trim();
                var end = $('#input5_end').val().trim();
                var score = $('#input5_score').val().trim();
                var flag = $('#select5_flag').val().trim();

                if (self.isNull(begin)) {
                    alert('关键字不能为空！');
                    return;
                }

                if (!self.isInt(begin)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                if (self.isNull(end)) {
                    alert('关键字不能为空！');
                    return;
                }

                if (!self.isInt(end)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                if (self.isNull(score)) {
                    alert('得分值不能为空！');
                    return;
                }

                if (!self.isInt(score)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                $table5.row.add({ 'sex': sex, 'begin': begin, 'end': end, 'score': score, 'flag': flag }).draw(false);
                $('#input5_begin').val("");
                $('#input5_end').val("");
                $('#input5_score').val("");

                //var info = $table4.page.info();
                //var dataRows = info.recordsTotal;
                //console.log(dataRows);
                //console.log($table4.row(0).data());
            });

            $table5.on( 'click', 'a#delrow', function (even)  {
                $table5.row( $(this).parents('tr') ).remove().draw(false); 
            });

            $('#btn5_save').click(function() {
                var info = $table5.page.info();
                var dataRows = info.recordsTotal;
                var config = {
                    "name": "身高",
                    "type": 5,
                    "male": [],
                    "female": []
                };
                for (var i = 0; i < dataRows; ++i) {
                    var data = $table5.row(i).data();
                    var subrule = {
                        "begin": data.begin,
                        "end": data.end,
                        "score": data.score,
                        "flag": (data.flag == '是') ? true : false
                    }
                    if (data.sex == '男') {
                        config.male.push(subrule);
                    } else {
                        config.female.push(subrule);
                    }
                }
                self.cur_ui.find('input').val(self.fillRuleResult(config));
                self.data[self.cur_ui.find('label').html()] = config;

                //清空数据
                for (var i = 0; i < dataRows; ++i) {
                    $table5.row(i).remove().draw(false); 
                }
            });
        },

        fillRuleResult: function(config) {
            var str = '';
            switch (config.type) {
                case 1:
                    str = "填写得分：" + config.score + "；";
                    break;
                case 2:
                    str = "正确手机号得分：" + config.score + "；";
                    break;
                case 3:
                    str = "正确身份证号得分：" + config.score + "；";
                    break;
                case 4:
                    str = "最大分值：" + config.max + "；";
                    for (var i = 0; i < config.rule.length; ++i) {
                        var sub = "关键字：" + config.rule[i].key + "，得分：" + config.rule[i].score + "；";
                        str += sub;
                    }
                    break;
                case 5:
                    str += '男：';
                    for (var i = 0; i < config.male.length; ++i) {
                        var sub = '';
                        if (config.male[i].flag) {
                            sub = '[' + config.male[i].begin + "-" + config.male[i].end + "]，得分：" + config.male[i].score + " *；";
                        } else {
                            sub = '[' + config.male[i].begin + "-" + config.male[i].end + "]，得分：" + config.male[i].score + "；";
                        }
                        str += sub;
                    }
                    str += '女：';
                    for (var i = 0; i < config.female.length; ++i) {
                        var sub = '';
                        if (config.female[i].flag) {
                            sub = '[' + config.female[i].begin + "-" + config.female[i].end + "]，得分：" + config.female[i].score + " *；";
                        } else {
                            sub = '[' + config.female[i].begin + "-" + config.female[i].end + "]，得分：" + config.female[i].score + "；";
                        }
                        str += sub;
                    }
                    break;
                case 6:
                    for (var i = 0; i < config.rule.length; ++i) {
                        var sub = '';
                        if (config.rule[i].flag) {
                            sub = '[' + config.rule[i].begin + "-" + config.rule[i].end + "]，得分：" + config.rule[i].score + " *；";
                        } else {
                            sub = '[' + config.rule[i].begin + "-" + config.rule[i].end + "]，得分：" + config.rule[i].score + "；";
                        }
                        str += sub;
                    }
                    break;
                case 7:
                    str = "最大分值：" + config.max + "；";
                    for (var i = 0; i < config.rule.length; ++i) {
                        var sub = '[' + config.rule[i].begin + "-" + config.rule[i].end + "]，得分：" + config.rule[i].score + " *；";
                        str += sub;
                    }
                    break;
            }
            return str;
        },

        isInt: function(value)  {             
            if (value.length != 0) {    
                reg = /^[0-9]*$/;        
                if (!reg.test(value)) {       
                    return false;       
                }  
                return true;  
            }   
            return false; 
        },

        isPrice: function(value)  {             
            if (value.length != 0) {    
                reg = /(^[1-9]\d*(\.\d{1,2})?$)|(^0(\.\d{1,2})?$)/;   
                if (!reg.test(value)) {       
                    return false;       
                }  
                return true;  
            }   
            return false; 
        },

        isNull: function(value) {            
            if (value.length == 0) {           
                return true;    
            }    
            return false;
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