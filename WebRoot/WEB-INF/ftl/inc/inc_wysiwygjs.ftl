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

        $("#editor").html("<div><ul><li>123</li></ul></div>");

        $("#btn_save").click(function(){
           // console.log($.base64.btoa($("#editor").html()));
           // $('#editor').html($.base64.atob('PGRpdj48dWw+PGxpPmRlbW88L2xpPjwvdWw+PC9kaXY+', true));
        });

        window.prettyPrint;
        prettyPrint();
    });
</script>
<!-- end 富文本编辑框逻辑 -->