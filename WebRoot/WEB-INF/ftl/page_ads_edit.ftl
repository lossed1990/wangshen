<#assign path=request.contextPath />
<#assign as_currentuser="张大锤" />
<!DOCTYPE html>
<html lang="zh">

<#include "inc/inc_header.ftl" />

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <#include "inc/inc_leftmenu_admin.ftl" />

        <#include "inc/inc_toprightnav.ftl" />

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="row">
                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>广告模板 <small>  </small></h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <p class="text-muted font-13 m-b-30">
                                    注意：此处不适宜上传较大、较多的图片，以一张10KB以内大小的二维码图片及部分说明文字为宜。
                                </p>
                                <!-- begin text area-->
                                <div id="alerts"></div>
                                <div class="btn-toolbar editor" data-role="editor-toolbar" data-target="#editor">
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="字体"><i class="fa fa-font"></i><b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                        </ul>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn dropdown-toggle" data-toggle="dropdown" title="字体大小"><i class="fa fa-text-height"></i>&nbsp;<b class="caret"></b></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a data-edit="fontSize 5">
                                                    <p style="font-size:17px">大</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a data-edit="fontSize 3">
                                                    <p style="font-size:14px">中</p>
                                                </a>
                                            </li>
                                            <li>
                                                <a data-edit="fontSize 1">
                                                    <p style="font-size:11px">小</p>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="bold" title="加粗"><i class="fa fa-bold"></i></a>
                                        <a class="btn" data-edit="italic" title="斜体"><i class="fa fa-italic"></i></a>
                                        <a class="btn" data-edit="strikethrough" title="删除线"><i class="fa fa-strikethrough"></i></a>
                                        <a class="btn" data-edit="underline" title="下划线"><i class="fa fa-underline"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="insertunorderedlist" title="符号排列"><i class="fa fa-list-ul"></i></a>
                                        <a class="btn" data-edit="insertorderedlist" title="数字排列"><i class="fa fa-list-ol"></i></a>
                                        <a class="btn" data-edit="outdent" title="减少缩进"><i class="fa fa-dedent"></i></a>
                                        <a class="btn" data-edit="indent" title="增加缩进"><i class="fa fa-indent"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="justifyleft" title="左对齐"><i class="fa fa-align-left"></i></a>
                                        <a class="btn" data-edit="justifycenter" title="居中"><i class="fa fa-align-center"></i></a>
                                        <a class="btn" data-edit="justifyright" title="右对齐"><i class="fa fa-align-right"></i></a>
                                        <a class="btn" data-edit="justifyfull" title="两端对齐"><i class="fa fa-align-justify"></i></a>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" title="Insert picture (or just drag & drop)" id="pictureBtn"><i class="fa fa-picture-o"></i></a>
                                        <input type="file" data-role="magic-overlay" data-target="#pictureBtn" data-edit="insertImage" />
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn" data-edit="undo" title="撤销"><i class="fa fa-undo"></i></a>
                                        <a class="btn" data-edit="redo" title="重做"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>

                                <div id="editor" class="editor-wrapper"></div>

                                <textarea name="descr" id="descr" style="display:none;"></textarea>
                                <!-- end text area-->
                                <br/>
                                <div class="form-horizontal form-label-left">
                                    <div class="form-group" >
                                        <button type="submit" class="btn btn-primary" id="btn_save">保存</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <#include "inc/inc_footer.ftl" />

    </div>
</div>

<#include "inc/inc_commonjs.ftl" />

<#include "inc/inc_wysiwygjs.ftl" />

</body>
</html>