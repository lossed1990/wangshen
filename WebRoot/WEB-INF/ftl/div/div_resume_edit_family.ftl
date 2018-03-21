<#--  家庭背景与社会资源 预览  -->
<div class="col-md-12 col-sm-12 col-xs-12" id="family">
    <div class="x_panel">
        <div class="x_title">
            <h2>家庭背景与社会资源 <small>  </small></h2>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <table class="table table-striped table-bordered resume-table" data="family" style="width:100%">
                <thead>
                    <tr>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>关系</th>
                        <th>出生年月</th>
                        <th>人员状态</th>
                        <th>工作单位</th>
                        <th>担任职务</th>
                        <th>政治面貌</th>
                        <th>教育情况</th>
                        <th>联系方式</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
            <!-- begin edit --> 
            <div class = "ln_solid" >
                </div>
            <h2>新增|修改 <small>  </small></h2>
            <div class="form-horizontal form-label-left">
                <form id="form_family">
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>姓名</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="name" name="name" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>性别</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="sex" name="sex">
                                <option>男</option>
                                <option>女</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>关系</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="relation" name="relation">
                                <option>父</option>
                                <option>母</option>
                                <option>兄</option>
                                <option>弟</option>
                                <option>姐</option>
                                <option>妹</option>
                                <option>伯</option>
                                <option>叔</option>
                                <option>舅</option>
                                <option>姨</option>
                                <option>其他</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">出生年月</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" id="birthdate" required="required" type="text">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">人员状态</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="status">
                                <option>有工作</option>
                                <option>无工作</option>
                                <option>已退休</option>
                                <option>已辞世</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>工作单位</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="work_place" name="work_place" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>担任职务</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="work" name="work" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">政治面貌</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="zhengzhimianmao">
                                <option>中共党员</option>
                                <option>中共预备党员</option>
                                <option>团员</option>
                                <option>群众</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">教育情况</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="edu_status" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">联系方式</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="contact" placeholder="">
                        </div>
                    </div>
                </form>    
                <div class="form-group" >
                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                        <button class="btn btn-primary btn-resume-additem" data="family">新增|修改</button>
                    </div>
                </div>
            </div >
            <!-- end edit --> 
            <div class = "ln_solid" ></div>
            <div class="form-horizontal form-label-left">
                <div class="form-group" >
                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                        <button class="btn btn-primary btn-resume-savetable" data="family">保存</button>
                        <button class="btn btn-primary btn-resume-score" data="家庭背景与社会资源">评分</button>
                        <button class="btn btn-default btn-pre" >上一项</button>
                        <button class="btn btn-default btn-next" >下一项</button>
                    </div >
                </div>
                <div class="form-group">
                    <label class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1"><span class="impstar fa fa-star">新增内容填好后，再点击“新增修改”，然后保存，才能进行评分。（系统只评保存到表格里的内容）</span></label>
                </div>
            </div>
        </div>
    </div>
</div>