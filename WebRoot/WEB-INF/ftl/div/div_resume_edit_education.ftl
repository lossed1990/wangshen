<#--  教育背景 预览  -->
<div class="col-md-12 col-sm-12 col-xs-12" id="education">
    <div class="x_panel">
        <div class="x_title">
            <h2>教育背景 <small>  </small></h2>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <h2>基本信息 <small>  </small></h2>
            <div class="form-horizontal form-label-left">
                <form id="form_education">
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>最高学历</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-edudata" id="top_grade">
                                <option>博士研究生</option>
                                <option>硕士</option>
                                <option>大学本科</option>
                                <option>大学专科</option>
                                <option>高中</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">高考录取批次</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-edudata" id="gaokao_level">
                                <option>第一批</option>  
                                <option>第二批</option>
                                <option>第三批</option>
                                <option>其他</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">高考分数</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-edudata" id="gaokao_point" datatype="int" name="gaokao_point" placeholder="">
                        </div>
                    </div>
                </form>    
            </div>
            <div class="ln_solid"></div>
            <h2>教育经历 <small> (请从最高学历依次往下填，填写至高中) </small></h2>
            <table class="table table-striped table-bordered resume-table" data="education" style="width:100%">
                <thead>
                    <tr>
                        <th>起始日期</th>
                        <th>结束日期</th>
                        <th>阶段</th>
                        <th>省份</th>
                        <th>学校</th>
                        <th>学院</th>
                        <th>专业</th>
                        <th>研究/专业方向</th>
                        <th>平均绩点</th>
                        <th>所获学位</th>
                        <th>学习形式</th>
                        <th>教育类型</th>
                        <th>毕业方式</th>
                        <th>毕业排名</th>
                        <th>所学课程及成绩</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
            <!-- begin edit --> 
            <h2>新增|修改 <small>  </small></h2>
            <div class="form-horizontal form-label-left">
            <form id="form_educationhistory">
                <div class="form-group">
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>起始日期</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" id="start_date" name="start_date" required="required" type="text">
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>结束日期</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" id="end_date" name="end_date" required="required" type="text">
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12">阶段</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <select class="form-control resume-data" id="stage">
                            <option>高中</option>
                            <option>大学专科</option>
                            <option>大学本科</option>
                            <option>硕士</option>
                            <option>博士研究生</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-1 col-sm-1 col-xs-12">省份</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input type="text" class="form-control resume-data" id="province" placeholder="">
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>学校</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input type="text" class="form-control resume-data" id="school" name="school" placeholder="">
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12">学院</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input type="text" class="form-control resume-data" id="institude" placeholder="">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="control-label col-md-1 col-sm-1 col-xs-12">专业</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input type="text" class="form-control resume-data" id="study" placeholder="">
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12">研究/专业方向</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input type="text" class="form-control resume-data" id="study_apect" placeholder="">
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12">平均绩点</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input type="text" class="form-control resume-data" id="gpa" placeholder="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>所获学位</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <select class="form-control resume-data" id="xuewei">
                            <option>学士</option>
                            <option>双学士</option>
                            <option>硕士</option>
                            <option>双硕士</option>
                            <option>博士</option>
                            <option>双博士</option>
                        </select>
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>学习形式</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <select class="form-control resume-data" id="study_type">
                            <option>全日制本科</option>
                            <option>业余本科</option>
                            <option>专升本</option>
                            <option>双学历、双学位</option>
                        </select>
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>教育类型</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <select class="form-control resume-data" id="edu_type">
                            <option>全日制</option>
                            <option>在职</option>
                            <option>成人教育</option>
                            <option>自考</option>
                            <option>其他非全日制</option>
                        </select>
                    </div>
                </div>
                
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">毕业方式</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="graduate_type">
                                <option>毕业</option>  
                                <option>结业</option>
                                <option>肄业</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">毕业排名</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="graduate_pos" name="graduate_pos" placeholder="">
                        </div>
                        <input class="resume-data" id="scores" type="hidden" value="">
                    </div>
                </form>  
                <div class="form-group" id="educationscores">
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>所学课程及成绩</label>
                        <div class="col-md-11 col-sm-11 col-xs-12">
                            <table class="table table-striped table-bordered resume-mintable" data="educationscores" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>课程</th>
                                        <th>成绩</th>
                                        <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"></label>
                        <div class="col-md-11 col-sm-11 col-xs-12">
                            <form id="form_educationscores">
                                <div class="form-group">
                                    <label class="control-label col-md-1 col-sm-1 col-xs-12">所学课程</label>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <input type="text" class="form-control resume-mindata" id="xueke" placeholder="">
                                    </div>
                                    <label class="control-label col-md-1 col-sm-1 col-xs-12">成绩</label>
                                    <div class="col-md-3 col-sm-3 col-xs-12">
                                        <input type="text" class="form-control resume-mindata" id="score" name="score" placeholder="">
                                    </div>
                                    <button class="btn btn-default" id="btn-addscores" data="educationscores" >新增|修改课程及成绩</button>
                                </div>
                            </form>    
                        </div>
                    </div>
                </div>
                <div class="form-group" >
                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                        <button class="btn btn-primary" id="btn-addeducation" data="education" >新增|修改</button>
                    </div >
                </div>
            </div >
            <!-- end edit --> 
            <div class = "ln_solid" ></div>
            <div class="form-horizontal form-label-left">
                <div class="form-group" >
                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                        <button class="btn btn-primary" id="btn-saveeducation" data="education">保存</button>
                        <button class="btn btn-primary btn-resume-score" data="教育背景">评分</button>
                        <button class="btn btn-default btn-pre" >上一项</button>
                        <button class="btn btn-default btn-next" >下一项</button>
                    </div >
                </div>
            </div>
        </div>
    </div>
</div>