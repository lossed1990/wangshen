<#--  实践经历 预览  -->
<div class="col-md-12 col-sm-12 col-xs-12" id="shijian">
    <div class="x_panel">
        <div class="x_title">
            <h2>实践经历 <small>  </small></h2>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <table class="table table-striped table-bordered resume-table" data="shijian" style="width:100%">
                <thead>
                    <tr>
                        <th>开始时间</th>
                        <th>结束时间</th>
                        <th>项目名称</th>
                        <th>内容描述</th>
                        <th>操作</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
            <!-- begin edit --> 
            <div class="ln_solid"></div>
            <h2>新增|修改 <small>  </small></h2>
            <div class="form-horizontal form-label-left">
                <div class="form-group">
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>开始时间</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" id="start_date" required="required" type="text">
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>结束时间</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" id="end_date" required="required" type="text">
                    </div>
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>项目名称</label>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input type="text" class="form-control resume-data" id="name" placeholder="">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>内容描述</label>
                    <div class="col-md-11 col-sm-11 col-xs-12">
                        <textarea required="required" class="form-control resume-data" id="memo" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                            data-parsley-validation-threshold="10"></textarea>
                    </div>
                </div>
                <div class="form-group" >
                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                        <button class="btn btn-primary btn-resume-additem" data="shijian">新增|修改</button>
                    </div >
                </div>
            </div >
            <!-- end edit --> 
            <div class = "ln_solid" ></div>
            <div class="form-horizontal form-label-left">
                <div class="form-group" >
                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                        <button class="btn btn-primary btn-resume-savetable" data="shijian">保存</button>
                        <button class="btn btn-primary btn-resume-score" data="实践经历">评分</button>
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