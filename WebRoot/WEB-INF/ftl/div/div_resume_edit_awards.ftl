<#--  获奖阶段 预览  -->
<div class="col-md-12 col-sm-12 col-xs-12" id="rewards">
    <div class="x_panel">
        <div class="x_title">
            <h2>获奖阶段 <small>  </small></h2>
            <div class="clearfix"></div>
        </div>
        <div class="x_content">
            <table class="table table-striped table-bordered resume-table" data="rewards" style="width:100%">
                <thead>
                    <tr>
                        <th>获奖名称</th>
                        <th>获奖级别</th>
                        <th>颁发单位</th>
                        <th>获奖次数</th>
                        <th>获奖时间</th>
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
                <form id="form_rewards">
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>获奖名称</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="name" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>获奖级别</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <select class="form-control resume-data" id="level">
                                <option>国家级</option>
                                <option>省级</option>
                                <option>市级</option>
                                <option>校级</option>
                                <option>院、系级</option>
                                <option>班级</option>
                                <option>个人</option>
                                <option>集体</option>
                            </select>
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">颁发单位</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="source" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-1 col-sm-1 col-xs-12">获奖次数</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input type="text" class="form-control resume-data" id="times" name="times" placeholder="">
                        </div>
                        <label class="control-label col-md-1 col-sm-1 col-xs-12"><span class="impstar">*</span>获奖时间</label>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <input class="date-picker form-control col-md-7 col-xs-12 resume-data-picker resume-data" id="date" required="required" type="text">
                        </div>
                    </div>
                    <div class="form-group" >
                        <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                            <button class="btn btn-primary btn-resume-additem" data="rewards">新增|修改</button>
                        </div >
                    </div>
                </form>    
            </div >
            <!-- end edit --> 
            <div class="ln_solid"></div>
            <div class="form-horizontal form-label-left">
                <div class="form-group" >
                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                        <button class="btn btn-primary btn-resume-savetable" data="rewards">保存</button>
                        <button class="btn btn-primary btn-resume-score" data="获奖经历">评分</button>
                        <button class="btn btn-default btn-pre" >上一项</button>
                        <button class="btn btn-default btn-next" >下一项</button>
                    </div >
                </div>
            </div>
        </div>
    </div>
</div>