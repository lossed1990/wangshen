<#assign path=request.contextPath />

<!-- bootstrap-wysiwyg -->
<script src="${path}/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="${path}/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="${path}/vendors/google-code-prettify/src/prettify.js"></script>

<script type="text/javascript" src="${path}/js/jquery.base64.js"></script>

<!-- begin 富文本编辑框逻辑 -->
<script>
    $(document).ready(function() {
        $.base64.utf8encode = true;

        function initToolbarBootstrapBindings() {
            var fonts = [
                {
                    "name":'SimSun',
                    "tip":'宋体'
                },{
                    "name":'SimHei',
                    "tip":'黑体'
                },{
                    "name":'Microsoft YaHei',
                    "tip":'微软雅黑'
                },{
                    "name":'Microsoft JhengHei',
                    "tip":'微软正黑体'
                },{
                    "name":'NSimSun',
                    "tip":'新宋体'
                },{
                    "name":'FangSong',
                    "tip":'仿宋'
                },{
                    "name":'KaiTi',
                    "tip":'楷体'
                }],    

                fontTarget = $('[title=字体]').siblings('.dropdown-menu');
            $.each(fonts, function(idx, fontName) {
                fontTarget.append($('<li><a data-edit="fontName ' + fontName.name + '" style="font-family:\'' + fontName.name + '\'">' + fontName.tip + '</a></li>'));
            });
            $('a[title]').tooltip({
                container: 'body'
            });
            $('.dropdown-menu input').click(function() {
                    return false;
                })
                .change(function() {
                    $(this).parent('.dropdown-menu').siblings('.dropdown-toggle').dropdown('toggle');
                })
                .keydown('esc', function() {
                    this.value = '';
                    $(this).change();
                });

            $('[data-role=magic-overlay]').each(function() {
                var overlay = $(this),
                    target = $(overlay.data('target'));
                overlay.css('opacity', 0).css('position', 'absolute').offset(target.offset()).width(target.outerWidth()).height(target.outerHeight());
            });

            if ("onwebkitspeechchange" in document.createElement("input")) {
                var editorOffset = $('#editor').offset();

                $('.voiceBtn').css('position', 'absolute').offset({
                    top: editorOffset.top,
                    left: editorOffset.left + $('#editor').innerWidth() - 35
                });
            } else {
                $('.voiceBtn').hide();
            }
        }

        function showErrorAlert(reason, detail) {
            var msg = '';
            if (reason === 'unsupported-file-type') {
                msg = "Unsupported format " + detail;
            } else {
                console.log("error uploading file", reason, detail);
            }
            $('<div class="alert"> <button type="button" class="close" data-dismiss="alert">&times;</button>' +
                '<strong>File upload error</strong> ' + msg + ' </div>').prependTo('#alerts');
        }

        initToolbarBootstrapBindings();

        $('#editor').wysiwyg({
            fileUploadError: showErrorAlert
        });

        $("#btn_save").click(function(){
            saveAdsConfig();
        });

        getAdsConfig();

        function getAdsConfig() {
            $.ajax({    
                type: "GET",
                url: "${path}/config/ads-get.json",
                dataType: "json",
                success: function (data)  {
                    console.log(data);
                    if (data.ok) {
                        $('#editor').html($.base64.atob(data.result, true));
                    }
                },
                error: function() {
                    toastr.error('获取广告配置信息失败，请刷新重试！');
                }  
            }); 
        }

        function saveAdsConfig() {
            var data = JSON.stringify({
                "data": $.base64.btoa($("#editor").html())
                });
            
            if(data.length > 1024*1024){
                toastr.error('广告配置图片及文字内容过多，请压缩图片或删除部分文字后重试！');
                return;
            }

            $.ajax({    
                type: "POST",
                url: "${path}/config/ads-save.json",
                cache:  false,
                contentType: "application/json",
                data: data,
                dataType: "json",
                success: function (data)  {
                    if (data.ok) {
                        toastr.success('广告配置信息保存成功！');
                    } else {
                        toastr.error(data.errorinfo);
                    }  
                },
                error: function() {
                    toastr.error('广告配置信息保存失败，请稍后重试！');
                }  
            }); 
        }
    });
</script>
<!-- end 富文本编辑框逻辑 -->