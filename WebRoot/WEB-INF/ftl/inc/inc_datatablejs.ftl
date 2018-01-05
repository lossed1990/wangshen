<#assign path=request.contextPath />

<!-- Datatables -->
<script src="${path}/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${path}/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="${path}/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="${path}/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="${path}/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="${path}/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="${path}/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="${path}/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="${path}/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="${path}/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="${path}/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="${path}/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>

<script>
    //汉化table
    var oLanguage = {
        "oAria": {
            "sSortAscending": ": 升序排列",
            "sSortDescending": ": 降序排列"
        },
        "oPaginate": {
            "sFirst": "首页",
            "sLast": "末页",
            "sNext": "下页",
            "sPrevious": "上页"
        },
        "sEmptyTable": "没有相关记录",
        "sInfo": "第 _START_ 到 _END_ 条记录，共 _TOTAL_ 条",
        "sInfoEmpty": "第 0 到 0 条记录，共 0 条",
        "sInfoFiltered": "(从 _MAX_ 条记录中检索)",
        "sInfoPostFix": "",
        "sDecimal": "",
        "sThousands": ",",
        "sLengthMenu": "每页显示条数: _MENU_",
        "sLoadingRecords": "正在载入...",
        "sProcessing": "正在载入...",
        "sSearch": "搜索:",
        "sSearchPlaceholder": "",
        "sUrl": "",
        "sZeroRecords": "没有相关记录"
    }
    $.fn.dataTable.defaults.oLanguage = oLanguage;
</script>