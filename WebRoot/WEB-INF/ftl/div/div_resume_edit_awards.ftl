<#--  获奖阶段 预览  -->

<div class="col-md-12 col-sm-12 col-xs-12" id="rewards">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>获奖阶段 <small>  </small></h2>
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
                                
                                <table id="table_awards" class="table table-striped table-bordered">
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
                                <div class = "ln_solid" >
                                    </div>
                                <h2>新增 <small>  </small></h2>
                                <div class="form-horizontal form-label-left">
                                    <form id="form_edit_awards">
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获奖名称</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="name" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获奖级别</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <select name="level" class="form-control">
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
                                                <input name="unit" type="text" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获奖次数</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="count" type="text" class="form-control" placeholder="">
                                            </div>
                                            <label class="control-label col-md-1 col-sm-1 col-xs-12">获奖时间</label>
                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <input name="time" id="input_awards_time" class="date-picker form-control col-md-7 col-xs-12" required="required" type="text">
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