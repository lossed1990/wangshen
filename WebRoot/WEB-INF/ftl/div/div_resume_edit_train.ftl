<#--  培训经历 预览  -->

<div class="col-md-12 col-sm-12 col-xs-12" id="trainning">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>培训经历 <small>  </small></h2>
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
                                
                                <table id="table_train" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>开始时间</th>
                                            <th>结束时间</th>
                                            <th>培训项目名称</th>
                                            <th>内容描述</th>
                                            <th>操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>

                                <!-- begin edit --> 
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_train">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">开始时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="begintime" id="input_train_begin_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">结束时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="endtime" id="input_train_end_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">培训项目名称</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="name" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">内容描述</label>
                                            <div class="col-md-11 col-sm-11 col-xs-12">
                                                <textarea required="required" class="form-control" name="" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                    data-parsley-validation-threshold="10"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-1" >
                                                <button type="submit" class="btn btn-primary" >新增</button>
                                                <button class="btn btn-default btn-pre" >上一项</button>
                                                <button class="btn btn-default btn-next" >下一项</button>
                                            </div >
                                        </div>
                                    </form>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>