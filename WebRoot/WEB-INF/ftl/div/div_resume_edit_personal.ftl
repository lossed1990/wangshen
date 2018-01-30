<#--  个人基本信息 预览  -->

<div class="col-md-12 col-sm-12 col-xs-12" id="baseinfo">
    <div class="x_panel">
        <div class="x_title">
            <h2>个人基本信息 <small>  </small></h2>
            <ul class="nav navbar-right panel_toolbox">
                <li>
                    <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a></li>
                        <li><a href="#">Settings 2</a></li>
                    </ul>
                </li>
                <li>
                    <a class="close-link"><i class="fa fa-close"></i></a>
                </li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <!-- begin edit --> 
            <div class="form-horizontal form-label-left">
                <form id="form_edit_baseinfo">
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">姓名</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="name" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">曾用名</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="oldname" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">性别</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select name="sex" class="form-control">
                                <option>男</option>
                                <option>女</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">出生年月</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="birthday" id="input_birthday" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">民族</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="nation" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">籍贯</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="nativeplace" type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">政治面貌</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select name="political" class="form-control">
                                <option>中共党员</option>
                                <option>中共预备党员</option>
                                <option>团员</option>
                                <option>群众</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">入党团时间</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="politicaltime" id="input_political_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">身高(cm)</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="stature" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">体重(kg)</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="weight" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">血型</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select name="bloodtype" class="form-control">
                                <option>A</option>
                                <option>B</option>
                                <option>AB</option>
                                <option>O</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">婚姻状况</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select name="maritalstatus" class="form-control">
                                <option>未婚</option>
                                <option>已婚</option>
                                <option>离异</option>
                                <option>其他</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">生育状况</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select name="reproductivestatus" class="form-control">
                                <option>未育</option>
                                <option>已育</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">健康状况</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="health" type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">生源地</label>
                        <div class="col-md-7 col-sm-11 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">现居住地</label>
                        <div class="col-md-7 col-sm-11 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">通讯地址</label>
                        <div class="col-md-7 col-sm-11 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">户口所在地</label>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">户口类别</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select name="reproductivestatus" class="form-control">
                                <option>学校集体</option>
                                <option>单位集体</option>
                                <option>城镇居民户口</option>
                                <option>农业户口</option>
                                <option>境外居民</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">毕业时间</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="graduationtime" id="input_graduation_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">参加工作时间</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="worktime" id="input_work_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">证件类型</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select name="" class="form-control">
                                <option>身份证</option>
                                <option>护照</option>
                                <option>军人证</option>
                                <option>港澳身份证</option>
                                <option>其他</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">证件号</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">移动电话</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">固定电话</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">E-mail</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">邮编</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">紧急联系人</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">联系人电话</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input name="" type="text" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">免冠一寸照</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input id="input-picture" type="file" data-preview-file-type="text" >
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">近期生活照</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input id="input-picture-normal" type="file" data-preview-file-type="text" >
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">学生证照片</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input id="input-picture-student" type="file" data-preview-file-type="text" >
                        </div>
                    </div>
                    <div class="form-group" >
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                            <button type="submit" class="btn btn-primary" >新增</button>
                            <button class="btn btn-default btn-next" >下一项</button>
                        </div >
                    </div>
                </form>
            </div >
            <!-- end edit --> 
        </div>
    </div>
</div>
