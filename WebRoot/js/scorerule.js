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

    function gIsNull(value) {            
        if (value.length == 0) {           
            return true;    
        }    
        return false;
    } 

    function gIsInt(value)  {             
        if (value.length != 0) {    
            reg = /^[0-9]*$/;        
            if (!reg.test(value)) {       
                return false;       
            }  
            return true;  
        }   
        return false; 
    }

    function gIsFloat(value)  {             
        if (value.length != 0) {    
            reg = /(^[1-9]\d*(\.\d{1,2})?$)|(^0(\.\d{1,2})?$)/;   
            if (!reg.test(value)) {       
                return false;       
            }  
            return true;  
        }   
        return false; 
    }

    function formatTipString(config) {            
        if (!config || !config.type) {
            return '';
        }

        switch (config.type) {
            case 1:
                var str = "填写得分：" + config.score + "；";
                return str;
            case 2:
                var str = "正确手机号得分：" + config.score + "；";
                return str;
            case 3:
                var str = "正确身份证号得分：" + config.score + "；";
                return str;
            case 4:
                var str = "最大分值：" + config.max + "；";
                for (var i = 0; i < config.rule.length; ++i) {
                    var sub = "关键字：" + config.rule[i].key + "，得分：" + config.rule[i].score + "；";
                    str += sub;
                }
                return str;
            case 5:
                var str = "";
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
                return str;
            case 6:
                var str = "";
                for (var i = 0; i < config.rule.length; ++i) {
                    var sub = '';
                    if (config.rule[i].flag) {
                        sub = '[' + config.rule[i].begin + "-" + config.rule[i].end + "]，得分：" + config.rule[i].score + " *；";
                    } else {
                        sub = '[' + config.rule[i].begin + "-" + config.rule[i].end + "]，得分：" + config.rule[i].score + "；";
                    }
                    str += sub;
                }
                return str;
            case 7:
                var str = "最大分值：" + config.max + "；";
                for (var i = 0; i < config.rule.length; ++i) {
                    var sub = '[' + config.rule[i].begin + "-" + config.rule[i].end + "]，得分：" + config.rule[i].score + "；";
                    str += sub;
                }
                return str;
            case 8:
                var str = "最大分值：" + config.max + "；";
                for (var i = 0; i < config.rule.length; ++i) {
                    var sub = '[' + config.rule[i].begin + "-" + config.rule[i].end + "]，得分：" + config.rule[i].score + "；";
                    str += sub;
                }
                return str;
            default:
                return '';
        }
    }

    var Modal1 = {
        init: function() {
            var self = this;
            self.create();
            self.bingEvent();
        },

        create: function() {
            var self = this;
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
            self.$modal = $('#modal_rule_1');
            self.$score_input = $('#input1_score');
        },

        bingEvent: function() {
            var self = this;
            $('#btn1_save').click(function() {
                self.saveData();
            });
        },

        //清空modal上的数据
        clearData: function() {
            var self = this;
            self.$score_input.val("");
        },

        /**
         * @brief 显示模态框
         * 
         * @param onSaveCallBack 保存事件回调函数 
         * @param config           初始数据，为空不处理 
         */
        showModal: function(onSaveCallBack, config) {
            var self = this;
            self.onSave = onSaveCallBack;
            self.clearData();
            self.fillData(config);
            self.$modal.modal();
        },

        hideModal: function() {
            var self = this;
            self.onSave = null;
            self.clearData();
            self.$modal.modal('hide');
        },

        saveData: function() {
            var self = this;
            if (self.onSave) {
                var score = self.$score_input.val().trim();
                if (gIsNull(score)) {
                    alert('得分值不能为空！');
                    return;
                }

                if (!gIsFloat(score)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                var config = self.formatConfig(score);
                var tip = formatTipString(config);
                self.onSave(config, tip);
                self.hideModal();
            }
        },

        fillData: function(config) {
            var self = this;
            if (config && config.type == 1 && config.score) {
                self.$score_input.val(config.score);
            }
        },

        formatConfig: function(score) {
            var config = {
                "name": "是否填写",
                "type": 1,
                "score": parseFloat(score)
            };
            return config;
        }
    };

    var Modal2 = {
        init: function() {
            var self = this;
            self.create();
            self.bingEvent();
        },

        create: function() {
            var self = this;
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
            self.$modal = $('#modal_rule_2');
            self.$score_input = $('#input2_score');
        },

        bingEvent: function() {
            var self = this;
            $('#btn2_save').click(function() {
                self.saveData();
            });
        },

        //清空modal上的数据
        clearData: function() {
            var self = this;
            self.$score_input.val("");
        },

        /**
         * @brief 显示模态框
         * 
         * @param onSaveCallBack 保存事件回调函数 
         * @param config           初始数据，为空不处理 
         */
        showModal: function(onSaveCallBack, config) {
            var self = this;
            self.onSave = onSaveCallBack;
            self.clearData();
            self.fillData(config);
            self.$modal.modal();
        },

        hideModal: function() {
            var self = this;
            self.onSave = null;
            self.clearData();
            self.$modal.modal('hide');
        },

        saveData: function() {
            var self = this;
            if (self.onSave) {
                var score = self.$score_input.val().trim();
                if (gIsNull(score)) {
                    alert('得分值不能为空！');
                    return;
                }

                if (!gIsFloat(score)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                var config = self.formatConfig(score);
                var tip = formatTipString(config);
                self.onSave(config, tip);
                self.hideModal();
            }
        },

        fillData: function(config) {
            var self = this;
            if (config && config.type == 2 && config.score) {
                self.$score_input.val(config.score);
            }
        },

        formatConfig: function(score) {
            var config = {
                "name": "手机号",
                "type": 2,
                "score": parseFloat(score)
            };
            return config;
        }
    };

    var Modal3 = {
        init: function() {
            var self = this;
            self.create();
            self.bingEvent();
        },

        create: function() {
            var self = this;
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
            self.$modal = $('#modal_rule_3');
            self.$score_input = $('#input3_score');
        },

        bingEvent: function() {
            var self = this;
            $('#btn3_save').click(function() {
                self.saveData();
            });
        },

        //清空modal上的数据
        clearData: function() {
            var self = this;
            self.$score_input.val("");
        },

        /**
         * @brief 显示模态框
         * 
         * @param onSaveCallBack 保存事件回调函数 
         * @param config           初始数据，为空不处理 
         */
        showModal: function(onSaveCallBack, config) {
            var self = this;
            self.onSave = onSaveCallBack;
            self.clearData();
            self.fillData(config);
            self.$modal.modal();
        },

        hideModal: function() {
            var self = this;
            self.onSave = null;
            self.clearData();
            self.$modal.modal('hide');
        },

        saveData: function() {
            var self = this;
            if (self.onSave) {
                var score = self.$score_input.val().trim();
                if (gIsNull(score)) {
                    alert('得分值不能为空！');
                    return;
                }

                if (!gIsFloat(score)) {
                    alert('得分值仅能输入数字！');
                    return;
                }

                var config = self.formatConfig(score);
                var tip = formatTipString(config);
                self.onSave(config, tip);
                self.hideModal();
            }
        },

        fillData: function(config) {
            var self = this;
            if (config && config.type == 3 && config.score) {
                self.$score_input.val(config.score);
            }
        },

        formatConfig: function(score) {
            var config = {
                "name": "身份证",
                "type": 2,
                "score": parseFloat(score)
            };
            return config;
        }
    };

    var Modal4 = {
        init: function() {
            var self = this;
            self.create();
            self.bingEvent();
        },

        create: function() {
            var self = this;
            var modal4 = '<div class="modal fade bs-example-modal-lg" id="modal_rule_4" tabindex="-1" role="dialog" aria-hidden="true">\
                            <div class="modal-dialog modal-lg">\
                                <div class="modal-content">\
                                    <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>\
                                        <h4 class="modal-title">评分规则设置</h4>\
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
            self.$modal = $('#modal_rule_4');
            self.$score_input = $('#input4_score');
            self.$key_input = $('#input4_key');
            self.$max_input = $('#input4_max');
            self.$table = $("#table_4").DataTable({
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
        },

        bingEvent: function() {
            var self = this;
            //新增Item事件
            $('#btn4_add').click(function() {
                self.addItemData();
            });

            //删除Item事件
            self.$table.on( 'click', 'a#delrow', function (even)  {
                self.$table.row( $(this).parents('tr') ).remove().draw(false); 
            });

            $('#btn4_save').click(function() {
                self.saveData();
            });
        },

        //清空modal上的数据
        clearData: function() {
            var self = this;
            var info = self.$table.page.info();
            var dataRows = info.recordsTotal;
            for (var i = 0; i < dataRows; ++i) {
                self.$table.row(i).remove().draw(false); 
            }

            self.$max_input.val("");
            self.$key_input.val("");
            self.$score_input.val("");
        },

        /**
         * @brief 显示模态框
         * 
         * @param onSaveCallBack   保存事件回调函数 
         * @param config           初始数据，为空不处理 
         */
        showModal: function(onSaveCallBack, config) {
            var self = this;
            self.onSave = onSaveCallBack;
            self.clearData();
            self.fillData(config);
            self.$modal.modal();
        },

        hideModal: function() {
            var self = this;
            self.onSave = null;
            self.clearData();
            self.$modal.modal('hide');
        },

        addItemData: function() {
            var self = this;
            var key = self.$key_input.val().trim();
            var score = self.$score_input.val().trim();

            if (gIsNull(key)) {
                alert('关键字不能为空！');
                return;
            }

            if (gIsNull(score)) {
                alert('得分值不能为空！');
                return;
            }

            if (!gIsFloat(score)) {
                alert('得分值仅能输入数字！');
                return;
            }

            self.$table.row.add({ 'key': key, 'score': parseFloat(score) }).draw(false);
            self.$key_input.val("");
            self.$score_input.val("");
        },

        saveData: function() {
            var self = this;
            if (self.onSave) {
                var max = self.$max_input.val().trim();
                if (gIsNull(max)) {
                    alert('最大得分值不能为空！');
                    return;
                }

                if (!gIsFloat(max)) {
                    alert('最大得分值仅能输入数字！');
                    return;
                }

                var config = self.formatConfig(max);
                var tip = formatTipString(config);
                self.onSave(config, tip);
                self.hideModal();
            }
        },

        fillData: function(config) {
            var self = this;
            if (config && config.type == 4) {
                self.$max_input.val(config.max);
                for (var i = 0; i < config.rule.length; ++i) {
                    self.$table.row.add({ 'key': config.rule[i].key, 'score': config.rule[i].score }).draw(false);
                }
            }
        },

        formatConfig: function(max) {
            var self = this;
            var config = {
                "name": "关键词",
                "type": 4,
                "rule": [],
                "max": parseFloat(max)
            };

            var dataRows = self.$table.page.info().recordsTotal;
            for (var i = 0; i < dataRows; ++i) {
                config.rule.push(self.$table.row(i).data());
            }
            return config;
        }
    };

    var Modal5 = {
        init: function() {
            var self = this;
            self.create();
            self.bingEvent();
        },

        create: function() {
            var self = this;
            var modal5 = '<div class="modal fade bs-example-modal-lg" id="modal_rule_5" tabindex="-1" role="dialog" aria-hidden="true">\
                            <div class="modal-dialog modal-lg">\
                                <div class="modal-content">\
                                    <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>\
                                        <h4 class="modal-title">评分规则设置</h4>\
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
            self.$modal = $('#modal_rule_5');
            self.$sex_select = $('#select5_sex');
            self.$score_input = $('#input5_score');
            self.$begin_input = $('#input5_begin');
            self.$end_input = $('#input5_end');
            self.$flag_select = $('#select5_flag');
            self.$table = $("#table_5").DataTable({
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
        },

        bingEvent: function() {
            var self = this;
            //新增Item事件
            $('#btn5_add').click(function() {
                self.addItemData();
            });

            //删除Item事件
            self.$table.on( 'click', 'a#delrow', function (even)  {
                self.$table.row( $(this).parents('tr') ).remove().draw(false); 
            });

            $('#btn5_save').click(function() {
                self.saveData();
            });
        },

        //清空modal上的数据
        clearData: function() {
            var self = this;
            var info = self.$table.page.info();
            var dataRows = info.recordsTotal;
            for (var i = 0; i < dataRows; ++i) {
                self.$table.row(i).remove().draw(false); 
            }

            self.$score_input.val("");
            self.$begin_input.val("");
            self.$end_input.val("");
        },

        /**
         * @brief 显示模态框
         * 
         * @param onSaveCallBack   保存事件回调函数 
         * @param config           初始数据，为空不处理 
         */
        showModal: function(onSaveCallBack, config) {
            var self = this;
            self.onSave = onSaveCallBack;
            self.clearData();
            self.fillData(config);
            self.$modal.modal();
        },

        hideModal: function() {
            var self = this;
            self.onSave = null;
            self.clearData();
            self.$modal.modal('hide');
        },

        addItemData: function() {
            var self = this;

            var sex = self.$sex_select.val().trim();
            var begin = self.$begin_input.val().trim();
            var end = self.$end_input.val().trim();
            var score = self.$score_input.val().trim();
            var flag = self.$flag_select.val().trim();

            if (gIsNull(begin)) {
                alert('身高起始值不能为空！');
                return;
            }

            if (!gIsInt(begin)) {
                alert('身高起始值仅能输入数字！');
                return;
            }

            if (gIsNull(end)) {
                alert('身高结束值不能为空！');
                return;
            }

            if (!gIsInt(end)) {
                alert('身高结束仅能输入数字！');
                return;
            }

            if (gIsNull(score)) {
                alert('得分值不能为空！');
                return;
            }

            if (!gIsFloat(score)) {
                alert('得分值仅能输入数字！');
                return;
            }

            self.$table.row.add({ 'sex': sex, 'begin': parseInt(begin), 'end': parseInt(end), 'score': parseFloat(score), 'flag': flag }).draw(false);
            self.$begin_input.val("");
            self.$end_input.val("");
            self.$score_input.val("");
        },

        saveData: function() {
            var self = this;
            if (self.onSave) {
                var config = self.formatConfig();
                var tip = formatTipString(config);
                self.onSave(config, tip);
                self.hideModal();
            }
        },

        fillData: function(config) {
            var self = this;
            if (config && config.type == 5) {
                for (var i = 0; i < config.male.length; ++i) {
                    var flag = config.male[i].flag ? '是' : '否';
                    self.$table.row.add({ 'sex': '男', 'begin': config.male[i].begin, 'end': config.male[i].end, 'score': config.male[i].score, 'flag': flag }).draw(false);
                }
                for (var i = 0; i < config.female.length; ++i) {
                    var flag = config.female[i].flag ? '是' : '否';
                    self.$table.row.add({ 'sex': '女', 'begin': config.female[i].begin, 'end': config.female[i].end, 'score': config.female[i].score, 'flag': flag }).draw(false);
                }
            }
        },

        formatConfig: function() {
            var self = this;
            var config = {
                "name": "身高",
                "type": 5,
                "male": [],
                "female": []
            };
            var dataRows = self.$table.page.info().recordsTotal;
            for (var i = 0; i < dataRows; ++i) {
                var data = self.$table.row(i).data();
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
            return config;
        }
    };

    var Modal6 = {
        init: function() {
            var self = this;
            self.create();
            self.bingEvent();
        },

        create: function() {
            var self = this;
            var modal6 = '<div class="modal fade bs-example-modal-lg" id="modal_rule_6" tabindex="-1" role="dialog" aria-hidden="true">\
                            <div class="modal-dialog modal-lg">\
                                <div class="modal-content">\
                                    <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>\
                                        <h4 class="modal-title">评分规则设置</h4>\
                                    </div>\
                                    <div class="modal-body">\
                                        <table class="table table-striped table-bordered" id="table_6">\
                                            <thead>\
                                                <tr>\
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
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">上限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input6_begin" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">下限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input6_end" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">得分值</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input6_score" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">区间合格</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <select class="form-control" id="select6_flag">\
                                                        <option>是</option>\
                                                        <option>否</option>\
                                                    </select>\
                                                </div>\
                                            </div>\
                                            <div class="form-group">\
                                                <div class="col-md-2 col-sm-2 col-xs-12 col-md-offset-1 col-sm-offset-1">\
                                                    <button type="button" class="btn btn-default" id="btn6_add">新增</button>\
                                                </div>\
                                            </div>\
                                        </div>\
                                    </div>\
                                    <div class="modal-footer">\
                                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                        <button type="button" class="btn btn-primary" id="btn6_save">保存设置</button>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>';
            $('body').append(modal6);
            self.$modal = $('#modal_rule_6');
            self.$score_input = $('#input6_score');
            self.$begin_input = $('#input6_begin');
            self.$end_input = $('#input6_end');
            self.$flag_select = $('#select6_flag');
            self.$table = $("#table_6").DataTable({
                'columns': [ { 
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
        },

        bingEvent: function() {
            var self = this;
            //新增Item事件
            $('#btn6_add').click(function() {
                self.addItemData();
            });

            //删除Item事件
            self.$table.on( 'click', 'a#delrow', function (even)  {
                self.$table.row( $(this).parents('tr') ).remove().draw(false); 
            });

            $('#btn6_save').click(function() {
                self.saveData();
            });
        },

        //清空modal上的数据
        clearData: function() {
            var self = this;
            var info = self.$table.page.info();
            var dataRows = info.recordsTotal;
            for (var i = 0; i < dataRows; ++i) {
                self.$table.row(i).remove().draw(false); 
            }

            self.$score_input.val("");
            self.$begin_input.val("");
            self.$end_input.val("");
        },

        /**
         * @brief 显示模态框
         * 
         * @param onSaveCallBack   保存事件回调函数 
         * @param config           初始数据，为空不处理 
         */
        showModal: function(onSaveCallBack, config) {
            var self = this;
            self.onSave = onSaveCallBack;
            self.clearData();
            self.fillData(config);
            self.$modal.modal();
        },

        hideModal: function() {
            var self = this;
            self.onSave = null;
            self.clearData();
            self.$modal.modal('hide');
        },

        addItemData: function() {
            var self = this;

            var begin = self.$begin_input.val().trim();
            var end = self.$end_input.val().trim();
            var score = self.$score_input.val().trim();
            var flag = self.$flag_select.val().trim();

            if (gIsNull(begin)) {
                alert('体重起始值不能为空！');
                return;
            }

            if (!gIsInt(begin)) {
                alert('体重起始值仅能输入数字！');
                return;
            }

            if (gIsNull(end)) {
                alert('体重结束值不能为空！');
                return;
            }

            if (!gIsInt(end)) {
                alert('体重结束值仅能输入数字！');
                return;
            }

            if (gIsNull(score)) {
                alert('得分值不能为空！');
                return;
            }

            if (!gIsFloat(score)) {
                alert('得分值仅能输入数字！');
                return;
            }

            self.$table.row.add({ 'begin': parseInt(begin), 'end': parseInt(end), 'score': parseFloat(score), 'flag': flag }).draw(false);
            self.$begin_input.val("");
            self.$end_input.val("");
            self.$score_input.val("");
        },

        saveData: function() {
            var self = this;
            if (self.onSave) {
                var config = self.formatConfig();
                var tip = formatTipString(config);
                self.onSave(config, tip);
                self.hideModal();
            }
        },

        fillData: function(config) {
            var self = this;
            if (config && config.type == 6) {
                for (var i = 0; i < config.rule.length; ++i) {
                    var flag = config.rule[i].flag ? '是' : '否';
                    self.$table.row.add({ 'begin': config.rule[i].begin, 'end': config.rule[i].end, 'score': config.rule[i].score, 'flag': flag }).draw(false);
                }
            }
        },

        formatConfig: function() {
            var self = this;

            var dataRows = self.$table.page.info().recordsTotal;
            var config = {
                "name": "体重",
                "type": 6,
                "rule": []
            };
            for (var i = 0; i < dataRows; ++i) {
                var data = self.$table.row(i).data();
                data.flag = (data.flag == '是') ? true : false;
                config.rule.push(data);
            }
            return config;
        }
    };

    var Modal7 = {
        init: function() {
            var self = this;
            self.create();
            self.bingEvent();
        },

        create: function() {
            var self = this;
            var modal7 = '<div class="modal fade bs-example-modal-lg" id="modal_rule_7" tabindex="-1" role="dialog" aria-hidden="true">\
                            <div class="modal-dialog modal-lg">\
                                <div class="modal-content">\
                                    <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>\
                                        <h4 class="modal-title">评分规则设置</h4>\
                                    </div>\
                                    <div class="modal-body">\
                                        <table class="table table-striped table-bordered" id="table_7">\
                                            <thead>\
                                                <tr>\
                                                    <th>上限</th>\
                                                    <th>下限</th>\
                                                    <th>分值</th>\
                                                    <th>操作</th>\
                                                </tr>\
                                            </thead>\
                                            <tbody>\
                                            </tbody>\
                                        </table>\
                                        <h5 class="fa fa-edit">新增</h5>\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group">\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">上限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input7_begin" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">下限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input7_end" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">得分值</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input7_score" placeholder="" />\
                                                </div>\
                                                <button type="button" class="btn btn-default" id="btn7_add">新增</button>\
                                            </div>\
                                        </div>\
                                    </div>\
                                    <div class="modal-footer">\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group">\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">得分上限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input7_max" placeholder="" />\
                                                </div>\
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                                <button type="button" class="btn btn-primary" id="btn7_save">保存设置</button>\
                                            </div>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>';
            $('body').append(modal7);
            self.$modal = $('#modal_rule_7');
            self.$score_input = $('#input7_score');
            self.$begin_input = $('#input7_begin');
            self.$end_input = $('#input7_end');
            self.$max_input = $('#input7_max');
            self.$table = $("#table_7").DataTable({
                'columns': [ { 
                    "data": "begin"
                },        {    
                    "data": "end"
                },        {    
                    "data": "score"
                },        {  
                    "data":  null,
                    "className":   "center",
                    "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
                }]
            });
        },

        bingEvent: function() {
            var self = this;
            //新增Item事件
            $('#btn7_add').click(function() {
                self.addItemData();
            });

            //删除Item事件
            self.$table.on( 'click', 'a#delrow', function (even)  {
                self.$table.row( $(this).parents('tr') ).remove().draw(false); 
            });

            $('#btn7_save').click(function() {
                self.saveData();
            });
        },

        //清空modal上的数据
        clearData: function() {
            var self = this;
            var info = self.$table.page.info();
            var dataRows = info.recordsTotal;
            for (var i = 0; i < dataRows; ++i) {
                self.$table.row(0).remove().draw(false); 
            }

            self.$score_input.val("");
            self.$begin_input.val("");
            self.$end_input.val("");
            self.$max_input.val("");
        },

        /**
         * @brief 显示模态框
         * 
         * @param onSaveCallBack   保存事件回调函数 
         * @param config           初始数据，为空不处理 
         */
        showModal: function(onSaveCallBack, config) {
            var self = this;
            self.onSave = onSaveCallBack;
            self.clearData();
            self.fillData(config);
            self.$modal.modal();
        },

        hideModal: function() {
            var self = this;
            self.onSave = null;
            self.clearData();
            self.$modal.modal('hide');
        },

        addItemData: function() {
            var self = this;

            var begin = self.$begin_input.val().trim();
            var end = self.$end_input.val().trim();
            var score = self.$score_input.val().trim();

            if (gIsNull(begin)) {
                alert('字数起始值不能为空！');
                return;
            }

            if (!gIsInt(begin)) {
                alert('字数起始值仅能输入数字！');
                return;
            }

            if (gIsNull(end)) {
                alert('字数结束值不能为空！');
                return;
            }

            if (!gIsInt(end)) {
                alert('字数结束值仅能输入数字！');
                return;
            }

            if (gIsNull(score)) {
                alert('得分值不能为空！');
                return;
            }

            if (!gIsFloat(score)) {
                alert('得分值仅能输入数字！');
                return;
            }

            self.$table.row.add({ 'begin': parseInt(begin), 'end': parseInt(end), 'score': parseFloat(score) }).draw(false);
            self.$begin_input.val("");
            self.$end_input.val("");
            self.$score_input.val("");
        },

        saveData: function() {
            var self = this;
            if (self.onSave) {
                var max = self.$max_input.val().trim();
                if (gIsNull(max)) {
                    alert('最大得分值不能为空！');
                    return;
                }

                if (!gIsFloat(max)) {
                    alert('最大得分值仅能输入数字！');
                    return;
                }

                var config = self.formatConfig(max);
                var tip = formatTipString(config);
                self.onSave(config, tip);
                self.hideModal();
            }
        },

        fillData: function(config) {
            var self = this;
            if (config && config.type == 7) {
                if (config.max) {
                    self.$max_input.val(config.max);
                }
                for (var i = 0; i < config.rule.length; ++i) {
                    self.$table.row.add({ 'begin': config.rule[i].begin, 'end': config.rule[i].end, 'score': config.rule[i].score }).draw(false);
                }
            }
        },

        formatConfig: function(max) {
            var self = this;

            var dataRows = self.$table.page.info().recordsTotal;
            var config = {
                "name": "字数",
                "type": 7,
                "rule": [],
                "max": parseFloat(max)
            };
            for (var i = 0; i < dataRows; ++i) {
                var data = self.$table.row(i).data();
                config.rule.push(data);
            }
            return config;
        }
    };

    var Modal8 = {
        init: function() {
            var self = this;
            self.create();
            self.bingEvent();
        },

        create: function() {
            var self = this;
            var modal8 = '<div class="modal fade bs-example-modal-lg" id="modal_rule_8" tabindex="-1" role="dialog" aria-hidden="true">\
                            <div class="modal-dialog modal-lg">\
                                <div class="modal-content">\
                                    <div class="modal-header">\
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>\
                                        <h4 class="modal-title">评分规则设置</h4>\
                                    </div>\
                                    <div class="modal-body">\
                                        <table class="table table-striped table-bordered" id="table_8">\
                                            <thead>\
                                                <tr>\
                                                    <th>上限</th>\
                                                    <th>下限</th>\
                                                    <th>分值</th>\
                                                    <th>操作</th>\
                                                </tr>\
                                            </thead>\
                                            <tbody>\
                                            </tbody>\
                                        </table>\
                                        <h5 class="fa fa-edit">新增</h5>\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group">\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">上限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input8_begin" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">下限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input8_end" placeholder="" />\
                                                </div>\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">得分值</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input8_score" placeholder="" />\
                                                </div>\
                                                <button type="button" class="btn btn-default" id="btn8_add">新增</button>\
                                            </div>\
                                        </div>\
                                    </div>\
                                    <div class="modal-footer">\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group">\
                                                <label class="control-label col-md-1 col-sm-1 col-xs-12">得分上限</label>\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input type="text" class="form-control" id="input8_max" placeholder="" />\
                                                </div>\
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                                <button type="button" class="btn btn-primary" id="btn8_save">保存设置</button>\
                                            </div>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>\
                        </div>';
            $('body').append(modal8);
            self.$modal = $('#modal_rule_8');
            self.$score_input = $('#input8_score');
            self.$begin_input = $('#input8_begin');
            self.$end_input = $('#input8_end');
            self.$max_input = $('#input8_max');
            self.$table = $("#table_8").DataTable({
                'columns': [ { 
                    "data": "begin"
                },        {    
                    "data": "end"
                },        {    
                    "data": "score"
                },        {  
                    "data":  null,
                    "className":   "center",
                    "defaultContent":   '<a id="delrow" href="#"><i class="fa fa-trash-o"></i>删除</a>'      
                }]
            });
        },

        bingEvent: function() {
            var self = this;
            //新增Item事件
            $('#btn8_add').click(function() {
                self.addItemData();
            });

            //删除Item事件
            self.$table.on( 'click', 'a#delrow', function (even)  {
                self.$table.row( $(this).parents('tr') ).remove().draw(false); 
            });

            $('#btn8_save').click(function() {
                self.saveData();
            });
        },

        //清空modal上的数据
        clearData: function() {
            var self = this;
            var info = self.$table.page.info();
            var dataRows = info.recordsTotal;
            for (var i = 0; i < dataRows; ++i) {
                self.$table.row(i).remove().draw(false); 
            }

            self.$score_input.val("");
            self.$begin_input.val("");
            self.$end_input.val("");
            self.$max_input.val("");
        },

        /**
         * @brief 显示模态框
         * 
         * @param onSaveCallBack   保存事件回调函数 
         * @param config           初始数据，为空不处理 
         */
        showModal: function(onSaveCallBack, config) {
            var self = this;
            self.onSave = onSaveCallBack;
            self.clearData();
            self.fillData(config);
            self.$modal.modal();
        },

        hideModal: function() {
            var self = this;
            self.onSave = null;
            self.clearData();
            self.$modal.modal('hide');
        },

        addItemData: function() {
            var self = this;

            var begin = self.$begin_input.val().trim();
            var end = self.$end_input.val().trim();
            var score = self.$score_input.val().trim();

            if (gIsNull(begin)) {
                alert('字数起始值不能为空！');
                return;
            }

            if (!gIsFloat(begin)) {
                alert('字数起始值仅能输入数字！');
                return;
            }

            if (gIsNull(end)) {
                alert('字数结束值不能为空！');
                return;
            }

            if (!gIsFloat(end)) {
                alert('字数结束值仅能输入数字！');
                return;
            }

            if (gIsNull(score)) {
                alert('得分值不能为空！');
                return;
            }

            if (!gIsFloat(score)) {
                alert('得分值仅能输入数字！');
                return;
            }

            self.$table.row.add({ 'begin': parseFloat(begin), 'end': parseFloat(end), 'score': parseFloat(score) }).draw(false);
            self.$begin_input.val("");
            self.$end_input.val("");
            self.$score_input.val("");
        },

        saveData: function() {
            var self = this;
            if (self.onSave) {
                var max = self.$max_input.val().trim();
                if (gIsNull(max)) {
                    alert('最大得分值不能为空！');
                    return;
                }

                if (!gIsFloat(max)) {
                    alert('最大得分值仅能输入数字！');
                    return;
                }

                var config = self.formatConfig(max);
                var tip = formatTipString(config);
                self.onSave(config, tip);
                self.hideModal();
            }
        },

        fillData: function(config) {
            var self = this;
            if (config && config.type == 8) {
                if (config.max) {
                    self.$max_input.val(config.max);
                }
                for (var i = 0; i < config.rule.length; ++i) {
                    self.$table.row.add({ 'begin': config.rule[i].begin, 'end': config.rule[i].end, 'score': config.rule[i].score }).draw(false);
                }
            }
        },

        formatConfig: function(max) {
            var self = this;

            var dataRows = self.$table.page.info().recordsTotal;
            var config = {
                "name": "数字范围",
                "type": 8,
                "rule": [],
                "max": parseFloat(max)
            };
            for (var i = 0; i < dataRows; ++i) {
                var data = self.$table.row(i).data();
                config.rule.push(data);
            }
            return config;
        }
    };

    var SubModule = {
        init: function(options, elem, temp_id, save_callback) {
            var self = this;
            self.elem = elem;
            self.$elem = $(elem);
            self.temp_id = temp_id;
            self.options = options;
            self.save_callback = save_callback;
            self.data = {
                "show": true,
                "max": 0,
                "keys": []
            };
            self.initializeSubModule();
        },

        initializeSubModule: function() {
            var self = this;
            self.createHead();
            self.createBody();
        },

        createHead: function() {
            var self = this;
            var strHtml = '<div class="col-md-12 col-sm-12 col-xs-12">\
                                <div class="x_panel">\
                                    <div class="x_title">\
                                        <h2>' + self.options.title + ' <small>  </small></h2>\
                                        <div class="clearfix"></div>\
                                    </div>\
                                    <div class="x_content">\
                                        <h5><span class="fa fa-edit">&nbsp;&nbsp;模块基础设置</span></h5>\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group">\
                                                <div class="col-md-2 col-sm-2 col-xs-12">\
                                                    <input class="check_grey ' + self.options.name + '" type="checkbox" checked="" required />\
                                                    <label class="control-label">启用模块</label>\
                                                </div>\
                                                <div class="col-md-1 col-sm-1 col-xs-12">\
                                                    <label class="control-label">最大分值</label>\
                                                </div>\
                                                <div class="col-md-3 col-sm-3 col-xs-12">\
                                                    <input type="text" class="form-control ' + self.options.name + '" placeholder="">\
                                                </div>\
                                            </div>\
                                        </div>\
                                        </br>\
                                        <h5><span class="fa fa-edit">&nbsp;&nbsp;字段规则设置</span></h5>\
                                        <div class="form-horizontal form-label-left" id="' + self.options.name + '">\
                                        </div>\
                                        <div class="form-horizontal form-label-left">\
                                            <div class="form-group" >\
                                                <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-2" >\
                                                    <button class="btn btn-primary btn-save-rules" data="' + self.options.name + '">保存</button>\
                                                </div >\
                                            </div>\
                                        </div>\
                                    </div>\
                                </div>\
                            </div>';

            self.$elem.append(strHtml);
            self.$elembody = $('#' + self.options.name);
        },

        createBody: function() {
            var self = this;
            //清空
            //self.$elem.html("");
            //构建
            var strHtml = '';
            for (var i = 0; i < self.options.keys.length; i++) {
                var option = '';
                if (self.options.keys[i].ruletype != '') {
                    var keyArray = self.options.keys[i].ruletype.split(',');
                    for (var j = 0; j < keyArray.length; j++) {
                        switch (keyArray[j]) {
                            case '1':
                                option += '<li><a class="rule-select">是否填写规则</a></li>';
                                break;
                            case '2':
                                option += '<li><a class="rule-select">手机号规则</a></li>';
                                break;
                            case '3':
                                option += '<li><a class="rule-select">身份证规则</a></li>';
                                break;
                            case '4':
                                option += '<li><a class="rule-select">关键字规则</a></li>';
                                break;
                            case '5':
                                option += '<li><a class="rule-select">身高规则</a></li>';
                                break;
                            case '6':
                                option += '<li><a class="rule-select">体重规则</a></li>';
                                break;
                            case '7':
                                option += '<li><a class="rule-select">字数规则</a></li>';
                                break;
                            case '8':
                                option += '<li><a class="rule-select">数字范围规则</a></li>';
                                break;
                        }
                    }
                } else {
                    option += '<li><a class="rule-select">是否填写规则</a></li>';
                    option += '<li><a class="rule-select">关键字规则</a></li>';
                }

                var isDisabled = '';
                if (self.options.keys[i].hasOwnProperty('enable') && self.options.keys[i].enable == false) {
                    isDisabled = 'disabled';
                }

                var strSubHtml = '<div class="form-group" id="' + self.options.keys[i].keypath + '">\
                                    <div class="col-md-2 col-sm-2 col-xs-12">\
                                        <input class="check_grey check_key_enable" type="checkbox" checked ' + isDisabled + '/>\
                                        <label class="control-label">' + self.options.keys[i].label + '</label>\
                                    </div>\
                                    <div class="col-md-1 col-sm-1 col-xs-12">\
                                        <div class="dropdown">\
                                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">\
                                                <span class="fa fa-cog fa-spin" style="color:rgb(115,135,156);"></span>\
                                            </button>\
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">' + option + '</ul>\
                                        </div>\
                                    </div>\
                                    <div class="col-md-9 col-sm-9 col-xs-12">\
                                        <input type="text" class="form-control" placeholder="" readonly>\
                                    </div>\
                                </div>';
                strHtml = strHtml + strSubHtml;
            }
            self.$elembody.html(strHtml);
        },

        getSubName: function() {
            var self = this;
            return self.options.name;
        },

        setTempData: function(data) {
            var self = this;
            self.data = data;

            //设置模块是否启用及最大值；
            if (self.data.show) {
                $('input.check_grey.' + self.options.name).iCheck('check');
            } else {
                $('input.check_grey.' + self.options.name).iCheck('uncheck');
            }
            $('input.form-control.' + self.options.name).val(self.data.max);
            //更新keys；（根据keypath寻找）
            for (var i = 0; i < self.data.keys.length; ++i) {
                var parentElem = $('#' + self.data.keys[i]['keypath']);
                var tip = formatTipString(self.data.keys[i].judge);
                console.log('setTempData:' + self.data.keys[i]['keypath']);

                parentElem.find('input.form-control').val(tip);
                if (!self.data.keys[i]['enable']) {
                    parentElem.find('input.check_grey').iCheck('uncheck');
                }
            }
        },

        //通过keypath,查找当前点击项的配置信息
        findJudgeInfo: function(keypath) {
            var self = this;
            for (var i = 0; i < self.data.keys.length; ++i) {
                if (keypath == self.data.keys[i]['keypath']) {
                    console.log('findJudgeInfo:' + self.data.keys[i].judge);
                    return self.data.keys[i].judge;
                }
            }

            console.log('findJudgeInfo: not find');
            return null;
        },

        //通过keypath,保存当前点击项的配置信息
        saveJudgeInfo: function(keypath, config) {
            var self = this;

            var isHaving = false;
            for (var i = 0; i < self.data.keys.length; ++i) {
                if (keypath == self.data.keys[i].keypath) {
                    self.data.keys[i].judge = config;
                    isHaving = true;
                    break;
                }
            }

            if (!isHaving) {
                var sub = {
                    "keypath": keypath,
                    "enable": true,
                    "judge": config
                };
                self.data.keys.push(sub);
            }

            console.log('saveJudgeInfo:' + JSON.stringify(self.data));
        },

        //设置某个子字段是否启用参数
        changeKeyEnableParam: function(keypath, enable) {
            var self = this;

            var isHaving = false;
            for (var i = 0; i < self.data.keys.length; ++i) {
                if (keypath == self.data.keys[i].keypath) {
                    self.data.keys[i].enable = enable;
                    isHaving = true;
                    break;
                }
            }

            if (!isHaving) {
                var sub = {
                    "keypath": keypath,
                    "enable": enable,
                    "judge": {}
                };
                self.data.keys.push(sub);
            }

            console.log('changeKeyEnableParam:' + JSON.stringify(self.data));
        },

        submitData: function() {
            var self = this;
            //检测输入值，并更新缓存
            if ($('input.check_grey.' + self.options.name).is(':checked')) {
                self.data.show = true;

                var max = $('input.form-control.' + self.options.name).val().trim();
                if (gIsNull(max)) {
                    alert('模块最大分数值不能为空！');
                    return;
                }

                if (!gIsFloat(max)) {
                    alert('模块最大分数值仅能输入数字！');
                    return;
                }

                self.data.max = parseInt(max);
            } else {
                self.data.show = false;
                self.data.max = 0;
            }

            //todo:提交self.data
            var param = {
                "temp_id": self.temp_id,
                "key": self.options.name,
                "value": self.data
            };

            console.log('submit saveinfo：' + JSON.stringify(param));
            self.save_callback(param);
        }
    };

    var Manager = {
        init: function(elem, temp_id, save_callback, data) {
            var self = this;
            self.elem = elem;
            self.$elem = $(elem);
            self.temp_id = temp_id;
            self.save_callback = save_callback;
            self.subs = [];
            self.initUI(data);
        },

        //初始化设置界面
        initUI: function(data) {
            var self = this;

            var subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.baseinfo, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.education, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.rewards, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.language, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.computer, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.student_ganbu, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.trainning, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.shijian, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.shixi, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.zigezhengshu, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.family, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.dissertation, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.workplan, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.selfjudge, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.speciality, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.selfrecomadation, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.otherinfo, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.targetbank, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            subModule = Object.create(SubModule);
            subModule.init($.fn.scorerule.promise, self.elem, self.temp_id, self.save_callback);
            self.subs.push(subModule);

            self.createModle();
            self.setTrigger();
            self.requestTempData(data);
        },

        //获取模板详情
        requestTempData: function(data) {
            var self = this;

            console.log('requestTempData:' + data);
            self.setTempData(data);
            self.startListenCheckChangeEvent();
        },

        //刷新模板界面
        setTempData: function(data) {
            var self = this;
            //按模块名称，设置各模块数据
            if (data) {
                for (var i = 0; i < self.subs.length; ++i) {
                    var subName = self.subs[i].getSubName();
                    if (data[subName]) {
                        self.subs[i].setTempData(data[subName]);
                    }
                }
            }
        },

        createModle: function() {
            var self = this;
            self.modal_1 = Object.create(Modal1);
            self.modal_1.init();

            self.modal_2 = Object.create(Modal2);
            self.modal_2.init();

            self.modal_3 = Object.create(Modal3);
            self.modal_3.init();

            self.modal_4 = Object.create(Modal4);
            self.modal_4.init();

            self.modal_5 = Object.create(Modal5);
            self.modal_5.init();

            self.modal_6 = Object.create(Modal6);
            self.modal_6.init();

            self.modal_7 = Object.create(Modal7);
            self.modal_7.init();

            self.modal_8 = Object.create(Modal8);
            self.modal_8.init();
        },

        setTrigger: function() {
            var self = this;

            //规则模板选择事件
            $(".rule-select").click(function() {
                var str = $(this).html();
                var type = 0;
                self.cur_ui = $(this).parent().parent().parent().parent().parent();

                var keyconfig = self.findJudgeInfo(self.cur_ui.attr("id"));
                switch (str) {
                    case '是否填写规则':
                        self.modal_1.showModal(function(config, tip) {
                            self.cur_ui.find('input').val(tip);
                            self.saveJudgeInfo(self.cur_ui.attr("id"), config);
                        }, keyconfig);
                        break;
                    case '手机号规则':
                        self.modal_2.showModal(function(config, tip) {
                            self.cur_ui.find('input').val(tip);
                            self.saveJudgeInfo(self.cur_ui.attr("id"), config);
                        }, keyconfig);
                        break;
                    case '身份证规则':
                        self.modal_3.showModal(function(config, tip) {
                            self.cur_ui.find('input').val(tip);
                            self.saveJudgeInfo(self.cur_ui.attr("id"), config);
                        }, keyconfig);
                        break;
                    case '关键字规则':
                        self.modal_4.showModal(function(config, tip) {
                            self.cur_ui.find('input').val(tip);
                            self.saveJudgeInfo(self.cur_ui.attr("id"), config);
                        }, keyconfig);
                        break;
                    case '身高规则':
                        self.modal_5.showModal(function(config, tip) {
                            self.cur_ui.find('input').val(tip);
                            self.saveJudgeInfo(self.cur_ui.attr("id"), config);
                        }, keyconfig);
                        break;
                    case '体重规则':
                        self.modal_6.showModal(function(config, tip) {
                            self.cur_ui.find('input').val(tip);
                            self.saveJudgeInfo(self.cur_ui.attr("id"), config);
                        }, keyconfig);
                        break;
                    case '字数规则':
                        self.modal_7.showModal(function(config, tip) {
                            self.cur_ui.find('input').val(tip);
                            self.saveJudgeInfo(self.cur_ui.attr("id"), config);
                        }, keyconfig);
                    case '数字范围规则':
                        self.modal_8.showModal(function(config, tip) {
                            self.cur_ui.find('input').val(tip);
                            self.saveJudgeInfo(self.cur_ui.attr("id"), config);
                        }, keyconfig);
                        break;
                }
            });

            //模板保存事件
            $(".btn-save-rules").click(function() {
                for (var i = 0; i < self.subs.length; ++i) {
                    var subName = self.subs[i].getSubName();
                    if (subName == $(this).attr('data')) {
                        self.subs[i].submitData();
                        break;
                    }
                }
            });
        },

        //通过keypath,查找当前点击项的配置信息
        findJudgeInfo: function(keypath) {
            var self = this;

            for (var i = 0; i < self.subs.length; ++i) {
                var subName = self.subs[i].getSubName();
                var KeyArray = keypath.split("-");
                if (subName == KeyArray[0]) {
                    return self.subs[i].findJudgeInfo(keypath);
                }
            }

            return null;
        },

        //通过keypath,保存当前点击项的配置信息
        saveJudgeInfo: function(keypath, config) {
            var self = this;

            for (var i = 0; i < self.subs.length; ++i) {
                var subName = self.subs[i].getSubName();
                var KeyArray = keypath.split("-");
                if (subName == KeyArray[0]) {
                    self.subs[i].saveJudgeInfo(keypath, config);
                    break;
                }
            }
        },

        //设置某个子字段是否启用参数
        changeKeyEnableParam: function(keypath, enable) {
            var self = this;

            for (var i = 0; i < self.subs.length; ++i) {
                var subName = self.subs[i].getSubName();
                var KeyArray = keypath.split("-");
                if (subName == KeyArray[0]) {
                    self.subs[i].changeKeyEnableParam(keypath, enable);
                    break;
                }
            }
        },

        //开始监听子字段是否启用事件
        startListenCheckChangeEvent: function() {
            var self = this;
            $(".check_key_enable").on('ifChecked', function() {
                console.log($(this).parent().parent().parent().attr('id') + ' checked');
                self.changeKeyEnableParam($(this).parent().parent().parent().attr('id'), true);
            }).on('ifUnchecked', function() {
                console.log($(this).parent().parent().parent().attr('id') + ' unchecked');
                self.changeKeyEnableParam($(this).parent().parent().parent().attr('id'), false);
            });
        }
    };


    // $.fn.scorerule = function(options) {
    //     if ($.isArray(options)) {
    //         return this.each(function() {
    //             var scoreruleObj = Object.create(Manager);
    //             scoreruleObj.init(options, this);
    //         });
    //     }
    // };

    $.fn.scorerule = function(temp_id, save_callback, data) {
        return this.each(function() {
            var scoreruleObj = Object.create(Manager);
            scoreruleObj.init(this, temp_id, save_callback, data);
        });
    };

    $.fn.scorerule.baseinfo = {
        "name": "baseinfo",
        "title": "个人基础信息",
        "keys": [{
            "label": "姓名",
            "ruletype": "",
            "keypath": "baseinfo-name"
        }, {
            "label": "曾用名",
            "ruletype": "",
            "keypath": "baseinfo-old_name"
        }, {
            "label": "性别",
            "ruletype": "",
            "keypath": "baseinfo-sex"
        }, {
            "label": "出生年月",
            "ruletype": "",
            "keypath": "baseinfo-birth_date"
        }, {
            "label": "民族",
            "ruletype": "",
            "keypath": "baseinfo-nation"
        }, {
            "label": "籍贯",
            "ruletype": "",
            "keypath": "baseinfo-birthplace"
        }, {
            "label": "政治面貌",
            "ruletype": "",
            "keypath": "baseinfo-party"
        }, {
            "label": "入党团时间",
            "ruletype": "",
            "keypath": "baseinfo-party_entry_date"
        }, {
            "label": "身高",
            "ruletype": "1,5",
            "keypath": "baseinfo-height_cm"
        }, {
            "label": "体重",
            "ruletype": "1,6",
            "keypath": "baseinfo-weight_kg"
        }, {
            "label": "血型",
            "ruletype": "",
            "keypath": "baseinfo-bloodtype"
        }, {
            "label": "婚姻状况",
            "ruletype": "",
            "keypath": "baseinfo-marrage"
        }, {
            "label": "生育状况",
            "ruletype": "",
            "keypath": "baseinfo-have_kid"
        }, {
            "label": "健康状况",
            "ruletype": "",
            "keypath": "baseinfo-heath"
        }, {
            "label": "生源地",
            "ruletype": "",
            "keypath": "baseinfo-gaokao_place"
        }, {
            "label": "现居住地",
            "ruletype": "",
            "keypath": "baseinfo-living_place"
        }, {
            "label": "通讯地址",
            "ruletype": "",
            "keypath": "baseinfo-address"
        }, {
            "label": "家庭地址",
            "ruletype": "",
            "keypath": "baseinfo-home_address"
        }, {
            "label": "户口所在地",
            "ruletype": "",
            "keypath": "baseinfo-hukou_place"
        }, {
            "label": "户口类别",
            "ruletype": "",
            "keypath": "baseinfo-hukou_type"
        }, {
            "label": "毕业时间",
            "ruletype": "",
            "keypath": "baseinfo-graduate_date"
        }, {
            "label": "参加工作时间",
            "ruletype": "",
            "keypath": "baseinfo-work_date"
        }, {
            "label": "证件类型",
            "ruletype": "",
            "keypath": "baseinfo-idcard_type"
        }, {
            "label": "证件号",
            "ruletype": "1,3,4",
            "keypath": "baseinfo-idcard_num"
        }, {
            "label": "移动电话",
            "ruletype": "1,2,4",
            "keypath": "baseinfo-mobile"
        }, {
            "label": "固定电话",
            "ruletype": "",
            "keypath": "baseinfo-fix_phone"
        }, {
            "label": "E-mail",
            "ruletype": "",
            "keypath": "baseinfo-email"
        }, {
            "label": "紧急联系人",
            "ruletype": "",
            "keypath": "baseinfo-emergency_contact"
        }, {
            "label": "紧急联系人电话",
            "ruletype": "1,2,4",
            "keypath": "baseinfo-emergency_phone"
        }, {
            "label": "免冠一寸照",
            "ruletype": "",
            "keypath": "baseinfo-head_pic"
        }, {
            "label": "近期生活照",
            "ruletype": "",
            "keypath": "baseinfo-live_pic"
        }, {
            "label": "学生证照片",
            "ruletype": "",
            "keypath": "baseinfo-student_pic"
        }]
    };

    $.fn.scorerule.education = {
        "name": "education",
        "title": "教育背景",
        "keys": [{
            "label": "最高学历",
            "ruletype": "",
            "keypath": "education-top_grade"
        }, {
            "label": "高考录取批次",
            "ruletype": "",
            "keypath": "education-gaokao_level"
        }, {
            "label": "高考分数",
            "ruletype": "",
            "keypath": "education-gaokao_point"
        }, {
            "label": "起始日期",
            "ruletype": "",
            "keypath": "education-edu_history-start_date",
            "enable": false
        }, {
            "label": "结束日期",
            "ruletype": "",
            "keypath": "education-edu_history-end_date",
            "enable": false
        }, {
            "label": "阶段",
            "ruletype": "",
            "keypath": "education-edu_history-stage",
            "enable": false
        }, {
            "label": "省份",
            "ruletype": "",
            "keypath": "education-edu_history-province",
            "enable": false
        }, {
            "label": "学校",
            "ruletype": "",
            "keypath": "education-edu_history-school",
            "enable": false
        }, {
            "label": "学院",
            "ruletype": "",
            "keypath": "education-edu_history-institude",
            "enable": false
        }, {
            "label": "专业",
            "ruletype": "",
            "keypath": "education-edu_history-study",
            "enable": false
        }, {
            "label": "研究/专业方向",
            "ruletype": "",
            "keypath": "education-edu_history-study_apect",
            "enable": false
        }, {
            "label": "平均绩点",
            "ruletype": "",
            "keypath": "education-edu_history-gpa",
            "enable": false
        }, {
            "label": "所获学位",
            "ruletype": "",
            "keypath": "education-edu_history-xuewei",
            "enable": false
        }, {
            "label": "学习形式",
            "ruletype": "",
            "keypath": "education-edu_history-study_type",
            "enable": false
        }, {
            "label": "教育类型",
            "ruletype": "",
            "keypath": "education-edu_history-edu_type",
            "enable": false
        }, {
            "label": "毕业方式",
            "ruletype": "",
            "keypath": "education-edu_history-graduate_type",
            "enable": false
        }, {
            "label": "毕业排名",
            "ruletype": "",
            "keypath": "education-edu_history-graduate_pos",
            "enable": false
        }, {
            "label": "所学课程及成绩",
            "ruletype": "1,8",
            "keypath": "education-edu_history-scores-score",
            "enable": false
        }]
    };

    $.fn.scorerule.rewards = {
        "name": "rewards",
        "title": "获奖阶段",
        "keys": [{
            "label": "获奖名称",
            "ruletype": "",
            "keypath": "rewards-name"
        }, {
            "label": "获奖级别",
            "ruletype": "",
            "keypath": "rewards-level"
        }, {
            "label": "颁发单位",
            "ruletype": "",
            "keypath": "rewards-source"
        }, {
            "label": "获奖次数",
            "ruletype": "",
            "keypath": "rewards-times"
        }, {
            "label": "获奖时间",
            "ruletype": "",
            "keypath": "rewards-date"
        }]
    };

    $.fn.scorerule.language = {
        "name": "language",
        "title": "英语能力描述",
        "keys": [{
            "label": "证书级别",
            "ruletype": "",
            "keypath": "language-level"
        }, {
            "label": "具体成绩",
            "ruletype": "",
            "keypath": "language-score"
        }, {
            "label": "获证日期",
            "ruletype": "",
            "keypath": "language-date"
        }, {
            "label": "其他外语掌握情况",
            "ruletype": "",
            "keypath": "language-other"
        }, {
            "label": "方言掌握情况",
            "ruletype": "",
            "keypath": "language-local_lan"
        }, {
            "label": "其它说明",
            "ruletype": "",
            "keypath": "language-memo"
        }]
    };

    $.fn.scorerule.computer = {
        "name": "computer",
        "title": "计算机能力描述",
        "keys": [{
            "label": "证书级别",
            "ruletype": "",
            "keypath": "computer-name"
        }, {
            "label": "获取时间",
            "ruletype": "",
            "keypath": "computer-date"
        }, {
            "label": "掌握程度",
            "ruletype": "",
            "keypath": "computer-level"
        }]
    };

    $.fn.scorerule.student_ganbu = {
        "name": "student_ganbu",
        "title": "学生干部任职情况/学生工作",
        "keys": [{
            "label": "起始时间",
            "ruletype": "",
            "keypath": "student_ganbu-start_date"
        }, {
            "label": "结束时间",
            "ruletype": "",
            "keypath": "student_ganbu-end_date"
        }, {
            "label": "职务名称",
            "ruletype": "",
            "keypath": "student_ganbu-zhiwu_name"
        }, {
            "label": "职务类别",
            "ruletype": "",
            "keypath": "student_ganbu-zhiwu_type"
        }, {
            "label": "工作业绩",
            "ruletype": "",
            "keypath": "student_ganbu-memo"
        }]
    };

    $.fn.scorerule.trainning = {
        "name": "trainning",
        "title": "培训经历",
        "keys": [{
            "label": "起始时间",
            "ruletype": "",
            "keypath": "trainning-start_date"
        }, {
            "label": "结束时间",
            "ruletype": "",
            "keypath": "trainning-end_date"
        }, {
            "label": "培训项目名称",
            "ruletype": "",
            "keypath": "trainning-name"
        }, {
            "label": "内容描述",
            "ruletype": "",
            "keypath": "trainning-memo"
        }]
    };

    $.fn.scorerule.shijian = {
        "name": "shijian",
        "title": "实践经历",
        "keys": [{
            "label": "起始时间",
            "ruletype": "",
            "keypath": "shijian-start_date"
        }, {
            "label": "结束时间",
            "ruletype": "",
            "keypath": "shijian-end_date"
        }, {
            "label": "培训项目名称",
            "ruletype": "",
            "keypath": "shijian-name"
        }, {
            "label": "内容描述",
            "ruletype": "",
            "keypath": "shijian-memo"
        }]
    };

    $.fn.scorerule.shixi = {
        "name": "shixi",
        "title": "实习经历",
        "keys": [{
            "label": "起始时间",
            "ruletype": "",
            "keypath": "shixi-start_date"
        }, {
            "label": "结束时间",
            "ruletype": "",
            "keypath": "shixi-end_date"
        }, {
            "label": "所在行业",
            "ruletype": "",
            "keypath": "shixi-hangye"
        }, {
            "label": "所在单位及部门",
            "ruletype": "",
            "keypath": "shixi-apartment"
        }, {
            "label": "所在岗位",
            "ruletype": "",
            "keypath": "shixi-work"
        }, {
            "label": "单位性质",
            "ruletype": "",
            "keypath": "shixi-company_type"
        }, {
            "label": "工作类型",
            "ruletype": "",
            "keypath": "shixi-work_type"
        }, {
            "label": "绩效考核等级",
            "ruletype": "",
            "keypath": "shixi-kpi_level"
        }, {
            "label": "工作经历描述",
            "ruletype": "",
            "keypath": "shixi-work_memo"
        }, {
            "label": "薪资（税前含福利）",
            "ruletype": "",
            "keypath": "shixi-salary"
        }, {
            "label": "证明人",
            "ruletype": "",
            "keypath": "shixi-zhengming_people"
        }, {
            "label": "证明人职务",
            "ruletype": "",
            "keypath": "shixi-zhengming_work"
        }, {
            "label": "证明人电话",
            "ruletype": "",
            "keypath": "shixi-zhengming_phone"
        }, {
            "label": "离职原因",
            "ruletype": "",
            "keypath": "shixi-lizhi_info"
        }]
    };

    $.fn.scorerule.zigezhengshu = {
        "name": "zigezhengshu",
        "title": "专业职业资格证书",
        "keys": [{
            "label": "证书类别",
            "ruletype": "",
            "keypath": "zigezhengshu-type"
        }, {
            "label": "证书名称",
            "ruletype": "",
            "keypath": "zigezhengshu-name"
        }, {
            "label": "获得年份",
            "ruletype": "",
            "keypath": "zigezhengshu-got_date"
        }, {
            "label": "认证机构",
            "ruletype": "",
            "keypath": "zigezhengshu-source"
        }, {
            "label": "认证时间",
            "ruletype": "",
            "keypath": "zigezhengshu-cert_date"
        }, {
            "label": "证书编号",
            "ruletype": "",
            "keypath": "zigezhengshu-zhengshu_code"
        }]
    };

    $.fn.scorerule.family = {
        "name": "family",
        "title": "家庭背景与社会资源",
        "keys": [{
            "label": "姓名",
            "ruletype": "",
            "keypath": "family-name"
        }, {
            "label": "性别",
            "ruletype": "",
            "keypath": "family-sex"
        }, {
            "label": "关系",
            "ruletype": "",
            "keypath": "family-relation"
        }, {
            "label": "出生年月",
            "ruletype": "",
            "keypath": "family-birthdate"
        }, {
            "label": "人员状态",
            "ruletype": "",
            "keypath": "family-status"
        }, {
            "label": "工作单位",
            "ruletype": "",
            "keypath": "family-work_place"
        }, {
            "label": "担任职务",
            "ruletype": "",
            "keypath": "family-work"
        }, {
            "label": "政治面貌",
            "ruletype": "",
            "keypath": "family-zhengzhimianmao"
        }, {
            "label": "教育情况",
            "ruletype": "",
            "keypath": "family-edu_status"
        }]
    };

    $.fn.scorerule.dissertation = {
        "name": "dissertation",
        "title": "毕业论文及发表期刊",
        "keys": [{
            "label": "论文/期刊名称",
            "ruletype": "",
            "keypath": "dissertation-name"
        }, {
            "label": "刊物级别",
            "ruletype": "",
            "keypath": "dissertation-level"
        }, {
            "label": "刊载时间/出版时间",
            "ruletype": "",
            "keypath": "dissertation-date"
        }, {
            "label": "作者",
            "ruletype": "",
            "keypath": "dissertation-author"
        }, {
            "label": "文章/专著简介",
            "ruletype": "",
            "keypath": "dissertation-memo"
        }]
    };

    $.fn.scorerule.workplan = {
        "name": "workplan",
        "title": "职业规划",
        "keys": [{
            "label": "未来五年的职业规划",
            "ruletype": "",
            "keypath": "workplan-plan"
        }]
    };

    $.fn.scorerule.selfjudge = {
        "name": "selfjudge",
        "title": "自我评价",
        "keys": [{
            "label": "自我评价",
            "ruletype": "",
            "keypath": "selfjudge-info"
        }]
    };

    $.fn.scorerule.speciality = {
        "name": "speciality",
        "title": "特长爱好",
        "keys": [{
            "label": "特长爱好",
            "ruletype": "",
            "keypath": "speciality-info"
        }]
    };

    $.fn.scorerule.selfrecomadation = {
        "name": "selfrecomadation",
        "title": "自荐信",
        "keys": [{
            "label": "自荐信",
            "ruletype": "",
            "keypath": "selfrecomadation-info"
        }]
    };

    $.fn.scorerule.otherinfo = {
        "name": "otherinfo",
        "title": "其他说明",
        "keys": [{
            "label": "其他说明",
            "ruletype": "",
            "keypath": "otherinfo-info"
        }]
    };

    $.fn.scorerule.targetbank = {
        "name": "targetbank",
        "title": "报考银行、薪资收入、报考地区",
        "keys": [{
            "label": "报考银行",
            "ruletype": "",
            "keypath": "targetbank-bank"
        }, {
            "label": "报考地区",
            "ruletype": "",
            "keypath": "targetbank-area"
        }, {
            "label": "报考上述地区的理由",
            "ruletype": "",
            "keypath": "targetbank-reason"
        }, {
            "label": "期望年薪（税前含福利）",
            "ruletype": "1,4,8",
            "keypath": "targetbank-expect_salary"
        }, {
            "label": "期望参加笔试地点",
            "ruletype": "",
            "keypath": "targetbank-exam_place"
        }, {
            "label": "招聘信息来源",
            "ruletype": "",
            "keypath": "targetbank-info_source"
        }]
    };

    $.fn.scorerule.promise = {
        "name": "promise",
        "title": "是否具有以下情况",
        "keys": [{
            "label": "是否曾受过处罚或处分",
            "ruletype": "",
            "keypath": "promise-is_punished"
        }, {
            "label": "是否曾患过重大疾病",
            "ruletype": "",
            "keypath": "promise-is_disease"
        }, {
            "label": "是否是本行员工",
            "ruletype": "",
            "keypath": "promise-is_thisbank_worker"
        }, {
            "label": "是否有亲属在本行工作",
            "ruletype": "",
            "keypath": "promise-is_relative_worker"
        }]
    };
})(jQuery, window, document);