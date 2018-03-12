<#--  实习经历 预览  -->
<div class="col-md-12 col-sm-12 col-xs-12" id="shixi">
    <div class="x_panel">
        <div class="x_title">
            <h2>实习经历 <small>  </small></h2>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <table class="table table-striped table-bordered resume-table" data="shixi" style="width:100%">
                <thead>
                    <tr>
                        <th>开始时间</th>
                        <th>结束时间</th>
                        <th>所在行业</th>
                        <th>所在单位及部门</th>
                        <th>所在岗位</th>
                        <th>单位性质</th>
                        <th>工作类型</th>
                        <th>绩效考核等级</th>
                        <th>薪资（万/年）</th>
                        <th>工作经历描述</th>
                        <th>证明人</th>
                        <th>证明人职务</th>
                        <th>证明人电话</th>
                        <th>离职原因</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
            <!-- begin edit --> 
            <div class="ln_solid"></div>
            <h2>新增 <small>  </small></h2>
            <div class="form-horizontal form-label-left">
                <form id="form_shixi">
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>开始时间</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" id="start_date" name="start_date" required="required" type="text">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>结束时间</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" id="end_date" name="end_date" required="required" type="text">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>所在行业</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="hangye" name="hangye" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>所在单位及部门</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="apartment" name="apartment" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">所在岗位</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="work" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>单位性质</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="company_type" name="company_type">
                                <option>国有企业</option>
                                <option>国有控股企业</option>
                                <option>外资企业</option>
                                <option>民营企业</option>
                                <option>社会团体</option>
                                <option>自由职业</option>
                                <option>政府机关/事业单位</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">工作类型</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="work_type">
                                <option>实习</option>
                                <option>社会实践</option>
                                <option>工作</option>
                                <option>项目经验</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">绩效考核等级</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="kpi_level">
                                <option>优秀</option>
                                <option>良好</option>
                                <option>合格</option>
                                <option>待改进</option>
                                <option>不合格</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">薪资（万/年）</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="salary" name="salary" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>工作经历描述</label>
                        <div class="col-md-11 col-sm-11 col-xs-12">
                            <textarea required="required" class="form-control resume-data" id="work_memo" name="work_memo" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                data-parsley-validation-threshold="10"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>证明人</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="zhengming_people" name="zhengming_people" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>证明人职务</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="zhengming_work" name="zhengming_work" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">证明人电话</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="zhengming_phone" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">离职原因</label>
                        <div class="col-md-11 col-sm-11 col-xs-12">
                            <textarea required="required" class="form-control resume-data" id="lizhi_info" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                data-parsley-validation-threshold="10"></textarea>
                        </div>
                    </div>
                    <div class="form-group" >
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                            <button class="btn btn-primary btn-resume-additem" data="shixi">新增|修改</button>
                        </div >
                    </div>
                </form>    
            </div >
            <!-- end edit --> 
            <div class = "ln_solid" ></div>
            <div class="form-horizontal form-label-left">
                <div class="form-group" >
                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                        <button class="btn btn-primary btn-resume-savetable" data="shixi">保存</button>
                        <button class="btn btn-primary btn-resume-score" data="实习经历">评分</button>
                        <button class="btn btn-default btn-pre" >上一项</button>
                        <button class="btn btn-default btn-next" >下一项</button>
                    </div >
                </div>
            </div>
        </div>
    </div>
</div>