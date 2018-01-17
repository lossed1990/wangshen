<#--  个人基本信息 模板设置  -->

<div class="col-md-12 col-sm-12 col-xs-12">
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
            <h5><span class="fa fa-edit">&nbsp;&nbsp;模块基础设置</span></h5>
            <div class="form-horizontal form-label-left">
                <div class="form-group">
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <input class="check_grey" type="checkbox" checked="" required />
                        <label class="control-label">启用模块</label>
                    </div>
                    <div class="col-md-1 col-sm-1 col-xs-12">
                        <label class="control-label">最大分值</label>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <input type="text" class="form-control" placeholder="">
                    </div>
                </div>
            </div>
            </br>
            <#--  <div class = "ln_solid"></div>  -->
            <#--  <h2 > <small><a class="fa fa-edit">字段启用及计分规则设置</a></small></h2>  -->
            <h5><span class="fa fa-edit">&nbsp;&nbsp;字段规则设置</span></h5>
            <div class="form-horizontal form-label-left" id="personal_scorerule">
            </div>
            <div class="form-horizontal form-label-left">
                <div class="form-group" >
                    <div class="col-md-9 col-sm-9 col-xs-12 col-md-offset-2" >
                        <button type="submit" class="btn btn-primary" >保存</button>
                    </div >
                </div>
            </div>
            <!-- end edit --> 
        </div>
    </div>
</div>
