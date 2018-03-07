<#--  个人基本信息 预览  -->
<div class="col-md-12 col-sm-12 col-xs-12" id="baseinfo">
    <div class="x_panel">
        <div class="x_title">
            <h2>个人基本信息 <small>  </small></h2>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <!-- begin edit --> 
            <div class="form-horizontal form-label-left">
                <form id="form_baseinfo">
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>姓名</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="name" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">曾用名</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="old_name" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>性别</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="sex">
                                <option>男</option>
                                <option>女</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>出生年月</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input id="birth_date" class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" required="required" type="text">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>民族</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="nation" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>籍贯</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="birthplace" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>政治面貌</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="party">
                                <option>中共党员</option>
                                <option>中共预备党员</option>
                                <option>团员</option>
                                <option>群众</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">入党团时间</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input id="party_entry_date" class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" required="required" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>身高(cm)</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="height_cm" name="height_cm" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>体重(kg)</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="weight_kg" name="weight_kg" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">血型</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="bloodtype">
                                <option>A</option>
                                <option>B</option>
                                <option>AB</option>
                                <option>O</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>婚姻状况</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="marrage">
                                <option>未婚</option>
                                <option>已婚</option>
                                <option>离异</option>
                                <option>其他</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">生育状况</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="have_kid">
                                <option>未育</option>
                                <option>已育</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>健康状况</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="heath" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>生源地</label>
                        <div class="col-md-7 col-sm-11 col-xs-12">
                            <input type="text" class="form-control resume-data" id="gaokao_place" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>现居住地</label>
                        <div class="col-md-7 col-sm-11 col-xs-12">
                            <input type="text" class="form-control resume-data" id="living_place" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>通讯地址</label>
                        <div class="col-md-7 col-sm-11 col-xs-12">
                            <input type="text" class="form-control resume-data" id="address" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">家庭地址</label>
                        <div class="col-md-7 col-sm-11 col-xs-12">
                            <input type="text" class="form-control resume-data" id="home_address" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>户口所在地</label>
                        <div class="col-md-7 col-sm-7 col-xs-12">
                            <input type="text" class="form-control resume-data" id="hukou_place" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>户口类别</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="hukou_type">
                                <option>学校集体</option>
                                <option>单位集体</option>
                                <option>城镇居民户口</option>
                                <option>农业户口</option>
                                <option>境外居民</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>毕业时间</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input id="graduate_date" class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" required="required" type="text">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>参加工作时间</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input id="work_date" class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" required="required" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>证件类型</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="idcard_type">
                                <option>身份证</option>
                                <option>护照</option>
                                <option>军人证</option>
                                <option>港澳身份证</option>
                                <option>其他</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>证件号</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="idcard_num" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>移动电话</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="mobile" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">固定电话</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="fix_phone" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>E-mail</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="email" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">邮编</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="postal" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>紧急联系人</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="emergency_contact" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>联系人电话</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="emergency_phone" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>免冠一寸照</label>
                        <div class="col-md-11 col-sm-11 col-xs-12">
                            <input class="resume-input-picture" id="head_pic_fileinput" type="file" name="file" data-preview-file-type="text" >
                            <input id="head_pic" class="resume-data" type="hidden" value="">
                        </div>
                        <label class="col-md-offset-1 col-md-11 col-sm-offset-1 col-sm-12 col-xs-12"><span class="small">(大小在200k以内，格式为jpeg/gif/jpg，尺寸为100*140，或2.5*3.5cm。)</span></label>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">近期生活照</label>
                        <div class="col-md-11 col-sm-11 col-xs-12">
                            <input class="resume-input-picture" id="live_pic_fileinput" type="file" name="file" data-preview-file-type="text" >
                            <input id="live_pic" class="resume-data" type="hidden" value="">
                        </div>
                        <label class="col-md-offset-1 col-md-11 col-sm-offset-1 col-sm-12 col-xs-12"><span class="small">(大小在200k以内，格式为jpeg/gif/jpg，尺寸为100*140，或2.5*3.5cm。)</span></label>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">学生证照片</label>
                        <div class="col-md-11 col-sm-11 col-xs-12">
                            <input class="resume-input-picture" id="student_pic_fileinput" type="file" name="file" data-preview-file-type="text" >
                            <input id="student_pic" class="resume-data" type="hidden" value="">
                        </div>
                        <label class="col-md-offset-1 col-md-11 col-sm-offset-1 col-sm-12 col-xs-12"><span class="small">(大小在200k以内，格式为jpeg/gif/jpg，尺寸为100*140，或2.5*3.5cm。)</span></label>
                    </div>
                    <div class="form-group" >
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                            <button class="btn btn-primary" id="btn-savepersonal">保存</button>
                            <button class="btn btn-primary btn-resume-score" data="个人基本信息">评分</button>
                            <button class="btn btn-default btn-next" >下一项</button>
                        </div >
                    </div>
                </form>    
            </div >
            <!-- end edit --> 
        </div>
    </div>
</div>
