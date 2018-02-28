<#assign path=request.contextPath />
<#assign as_currentuser=Session.userss.strUsername />
<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />

<link href="${path}/vendors/bootstrapvalidator/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="${path}/vendors/bootstrap-fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css">
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <#include "inc/inc_leftmenu_user.ftl" />

        <#include "inc/inc_toprightnav.ftl" />

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <!--  begin 个人基本信息  -->  
                            <#include "div/div_resume_view_personal.ftl" />
                            <!--  end 个人基本信息  -->
                            <!--  begin 教育背景  -->
                            <#include "div/div_resume_view_education.ftl" />
                            <!--  end 教育背景  -->
                            <!--  begin 获奖阶段  -->
                            <#include "div/div_resume_view_awards.ftl" />
                            <!--  end 获奖阶段  -->
                            <!--  begin 外语能力描述  -->
                            <#include "div/div_resume_view_language.ftl" />
                            <!--  end 外语能力描述  -->
                            <!--  begin 计算机能力描述  -->
                            <#include "div/div_resume_view_computer.ftl" />
                            <!--  end 计算机能力描述  -->
                            <!--  begin 学生干部任职情况/学生工作  -->
                            <#include "div/div_resume_view_student_works.ftl" />
                            <!--  end 学生干部任职情况/学生工作  -->
                            <!--  begin 培训经历  -->
                            <#include "div/div_resume_view_train.ftl" />
                            <!--  end 培训经历  -->
                            <!--  begin 实践经历  -->
                            <#include "div/div_resume_view_practice.ftl" />
                            <!--  end 实践经历  -->
                            <!--  begin 实习经历  -->
                            <#include "div/div_resume_view_work.ftl" />
                            <!--  end 实习经历  -->
                            <!--  begin 专业职业资格证书  -->
                            <#include "div/div_resume_view_certificate.ftl" />
                            <!--  end 专业职业资格证书  -->
                            <!--  begin 家庭背景与社会资源  -->
                            <#include "div/div_resume_view_family.ftl" />
                            <!--  end 家庭背景与社会资源  -->
                            <!--  begin 毕业论文及发表期刊  -->
                            <#include "div/div_resume_view_dissertation.ftl" />
                            <!--  end 毕业论文及发表期刊  -->
                        </div>
                    </div>
                    <!--  begin 职业规划  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel" id="workplan">
                            <div class="x_title">
                                <h2>职业规划 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">未来五年职业规划</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control" id="plan" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10" readonly></textarea>
                                        </div>
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 职业规划  -->
                    <!--  begin 自我评价  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel" id="selfjudge">
                            <div class="x_title">
                                <h2>自我评价 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">自我评价</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control" id="info" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10" readonly></textarea>
                                        </div>
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 自我评价  -->
                    <!--  begin 特长爱好  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel" id="speciality">
                            <div class="x_title">
                                <h2>特长爱好 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">特长爱好</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control" id="info" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10" readonly></textarea>
                                        </div>
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 特长爱好  -->
                    <!--  begin 自荐信  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel" id="selfrecomadation">
                            <div class="x_title">
                                <h2>自荐信 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">自荐信</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control" id="info" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10" readonly></textarea>
                                        </div>
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 自荐信  -->
                    <!--  begin 其他说明  -->
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel" id="otherinfo">
                            <div class="x_title">
                                <h2>其他说明 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <label class="control-label col-md-1 col-sm-1 col-xs-12">其他说明</label>
                                        <div class="col-md-11 col-sm-11 col-xs-12">
                                            <textarea required="required" class="form-control" id="info" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100"
                                                data-parsley-validation-threshold="10" readonly></textarea>
                                        </div>
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                    <!--  end 其他说明  -->
                    <!--  begin 报考银行、薪资收入、报考地区  -->
                    <#include "div/div_resume_view_targetbank.ftl" />
                    <!--  end 报考银行、薪资收入、报考地区  -->
                    <!--  begin 是否具有以下情况  -->
                    <#include "div/div_resume_view_promise.ftl" />
                    <!--  end 是否具有以下情况  -->

                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_content">
                                <!-- begin edit --> 
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group">
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <button type="button" class="btn btn-default" id="btn_print">打印</button>
                                            <button type="button" class="btn btn-primary" id="btn_export">导出</button>
                                        </div>
                                    </div>
                                </div >
                                <!-- end edit --> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- /page content -->
        <div class="modal fade bs-example-modal-lg" id="modal_score" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title">网申简历评分</h4>
                    </div>
                    <div class="modal-body" id="chart_body">
                        <div>
                            <h5 class="fa fa-hand-o-right">总得分</h5>
                            <h3 style="text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总得分：<span id="totalscore" style="color:red">0</span></h3>
                        </div>
                        <div>
                            <h5 class="fa fa-bar-chart">网申各项得分柱状图</h5>
                            <div id="chart_score" style="width: 890px;height:300px;"></div> 
                        </div>
                        <hr />
                        <div id="ads">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <#include "inc/inc_footer.ftl" />
    </div>
</div>

<#include "inc/inc_commonjs.ftl" />
<#include "inc/inc_datatablejs.ftl" />

 <!-- 引入 ECharts 文件 -->
<script src="${path}/js/echarts.simple.min.js"></script>
<script type="text/javascript" src="${path}/js/jquery.base64.js"></script>

<script>
    getAdsConfig();

    function getAdsConfig() {
        $.ajax({    
            type: "GET",
            url: "${path}/config/ads-get.json",
            contentType: "application/json",
            dataType: "json",
            success: function (data)  {
                if (data.ok) {
                    $('#ads').html($.base64.atob(data.result, true));
                }
            } 
        }); 
    }

    var chartContainer = document.getElementById('chart_score');
    var chartBody = document.getElementById('chart_body');

    //用于使chart自适应高度和宽度,通过窗体高宽计算容器高宽
    var resizeChartContainer = function () {
        chartContainer.style.width = chartBody.clientWidth+'px';
    };

    // 基于准备好的dom，初始化echarts实例
    var scoreChart = echarts.init(chartContainer);

    window.onresize = function () {
        //重置容器高宽
        resizeChartContainer();
        scoreChart.resize();
    };

    $('#modal_score').modal();
    resizeChartContainer();
    scoreChart.resize();

    ajaxGetResumeInfo(onGetResumeInfo);
    ajaxGetScoreInfo();

    /**
     * @brief 获取评分信息
     */
    function ajaxGetScoreInfo() {
        $.ajax({    
            type: "GET",
            url: "${path}/resume/resume-marks-caculation.json",
            contentType: "application/json",
            cache:  false,
            data: { 'resume_id': '${RequestParameters.resume_guid}'},
            dataType: "json",
            success: function (result)  {
                var items = [];
                var datas = [];
                var totalscore = 0;

                if (result.ok) {
                    for(var i=0; i<result.result.length; ++i){
                        items.push(result.result[i].key);
                        if(result.result[i].value){
                            datas.push(result.result[i].value);
                            totalscore += result.result[i].value; 
                        }else{
                            datas.push(0);
                        }
                    }
                    
                    $('#totalscore').html(totalscore);
                }else{
                    $('#totalscore').html(result.errorinfo);
                }  

                // 指定图表的配置项和数据
                var option = {
                    title: {
                        text: ''
                    },
                    tooltip: {},
                    legend: {
                        data:['得分'],
                        width: chartContainer.style.width
                    },
                    xAxis: {
                        axisLabel:{
                            interval:0,
                            rotate:-40,
                            fontSize:10
                        },
                        data: items
                    },
                    yAxis:{
                        axisLine: {
                            show: false
                        },
                        axisTick: {
                            show: false
                        },
                        axisLabel: {
                            textStyle: {
                                color: '#999'
                            }
                        }
                    },
                    series: [{
                        name: '得分',
                        type: 'bar',
                        data: datas,
                        itemStyle: {
                            normal: {
                                color: function(params) {
                                    var colorList = [
                                        '#3398DB'
                                    ];
                                    return colorList[params.dataIndex]
                                }
                            }
                        },
                    }]
                };
                
                // 使用刚指定的配置项和数据显示图表。
                scoreChart.setOption(option);          
            },
            error: function() {
                toastr.error('简历评分获取失败，请刷新重试！');
            } 
        });
    }

    /**
     * 获取简历信息回调,上数据
     */
    function onGetResumeInfo(data) {
        console.log('onGetResumeInfo>>data:');  //+ JSON.stringify(data)
        console.log(data);
        $.each(data,function(name,value) {
            fillResumeData(name,value);
        });
    } 

    /**
     * @brief 获取简历信息
     */
    function ajaxGetResumeInfo(callback) {
        $.ajax({    
            type: "GET",
            url: "${path}/resume/resume-part-detail.json",
            contentType: "application/json",
            cache:  false,
            data: { 'resume_id': '${RequestParameters.resume_guid}'},
            dataType: "json",
            success: function (result)  {
                if (result.ok) {
                    callback(result.result);
                }            
            },
            error: function() {
                toastr.error('简历信息获取失败，请刷新重试！');
            } 
        });
    }

    function fillResumeData(idname,data) {
        var $elem = $('#' + idname);
        if($elem.length > 0){
            //特殊处理
            if(idname == 'education'){
                $.each(data, function(name, value) {
                    if(name == 'edu_history') {
                        if($.isArray(value)) {
                            var $tbody = $elem.find('tbody'); 
                            if($tbody.length > 0){
                                var items = $tbody.attr('data').split('-');
                                for(var i = 0; i < value.length; ++i){
                                    var $tr = $('<tr></tr>');
                                    for(var k = 0; k < items.length; ++k) {
                                        var $td = $('<td></td>');
                                        $td.html(value[i][items[k]]);
                                        $tr.append($td);
                                    }
                                    $tbody.append($tr);
                                }
                            }
                        }
                       return;
                    }
                    
                    var $item = $elem.find('#' + name); 
                    if($item.length > 0){ 
                        $item.val(value);
                    }
                });
                return;
            }

            if($.isArray(data)) {
                var $tbody = $elem.find('tbody'); 
                if($tbody.length > 0){
                    var items = $tbody.attr('data').split('-');
                    for(var i = 0; i < data.length; ++i){
                        var $tr = $('<tr></tr>');
                        for(var k = 0; k < items.length; ++k) {
                            var $td = $('<td></td>');
                            $td.html(data[i][items[k]]);
                            $tr.append($td);
                        }
                        $tbody.append($tr);
                    }
                }
            }
            else{
                $.each(data, function(name,value) {
                    var $item = $elem.find('#' + name); 
                    if($item.length > 0){ 
                        if(name == 'head_pic' || name == 'live_pic' || name == 'student_pic'){
                            if(value != ''){
                                $item.attr('src','${path}/file/download.page?fid=' + value);       
                            }
                        } else {
                            $item.val(value);
                        }  
                    }
                });
            }
        }
    }

    //打印 导出
    $('#btn_print').click(function(){
        window.location.href = '${path}/resume/resume-view-print.page?resume_id=${RequestParameters.resume_guid}';
    });

    $('#btn_export').click(function(){
        window.location.href = '${path}/resume/resume-view-print.page?resume_id=${RequestParameters.resume_guid}&type=docx';
    }); 
</script>

</body>
</html>