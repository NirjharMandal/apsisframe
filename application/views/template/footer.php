    </section>
</div>
<footer class="main-footer">
    <div class="pull-right hidden-xs">
        <b>Version</b> 1.0.0
    </div>
    <strong>Copyright &copy; CDPRESS @ nirjhar mandal.</strong> All rights
    reserved.
</footer>
<?php //$this->load->view('static/template/theme_settings'); ?>
</div>
<!-- ./wrapper -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<?php echo load_resource('footer'); ?>
<script>
    $(document).ready(function(){
        webshim.setOptions("forms-ext", {
            "widgets": {
                "startView": 2,
                "minView": 0,
                "inlinePicker": false,
                "size": 1,
                "splitInput": false,
                "yearSelect": false,
                "monthSelect": false,
                "daySelect": false,
                "noChangeDismiss": false,
                "openOnFocus": false,
                "buttonOnly": true,
                "classes": "",
                "popover": {
                    //popover options
                },
                "calculateWidth": true,
                "animate": true,
                "toFixed": 0,
                "onlyFixFloat": false
            }
        });
        webshims.polyfill('forms forms-ext');
        $("h1").colorful();
        $('p.money').bdt();
        //$(".amount").calculate();
        $("select[class!='max']").select2();
        $(".max").select2({maximumSelectionSize: 5});

        //----------------- Datetime picker --------------------- //
        $('.datetimepicker').datetimepicker({
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1
        });
        //--------Class for only date picker----------
        $('.datepicker').datetimepicker({
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0
        });
        //--------Class for only month picker------------
        $('.monthpicker').datetimepicker({
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 3,
            minView: 3,
            forceParse: 0
        });
        //----------Class for only time picker------
        $('.timepicker').datetimepicker({
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 1,
            minView: 0,
            maxView: 1,
            forceParse: 0
        });
        // --------------- Datepicker related code ends ----------------- //
        $("#selectAll").click(function (){
            if(this.checked){
                $('#dataTables-checkbox tbody tr').each(function(){
                    if($(this).children('td').first().children('input').length){
                        $('.chkbox:visible').prop('checked',true);
                        $(this).addClass('new_tr');
                    }
                });
            }else{
                $('#dataTables-checkbox tbody tr').each(function(){
                    if($(this).children('td').first().children('input').length){
                        $('.chkbox:visible').prop('checked',false);
                        $(this).removeClass('new_tr');
                    }
                });
            }
        });
        $('.chkbox').click(function(){
            if(this.checked){
                $(this).parent('td').parent('tr').addClass('new_tr');
            }else{
                $(this).parent('td').parent('tr').removeClass('new_tr');
            }
        });
    });
    function stopPropagation(evt) {
        if (evt.stopPropagation !== undefined) {
            evt.stopPropagation();
        } else {
            evt.cancelBubble = true;
        }
    }

    function ajax_call(func_name,val,field_name,conditional_field,id_field){
        var on_change = $('#'+id_field).data('allow_ajax');
        $.ajax({
            url:'../master/generate_combo_by_ajax_call',
            type:"post",
            data:{function_name:func_name,field_name:field_name,id:conditional_field,val:val,on_change:on_change},
            success:function(data){
                $('#'+id_field).html(data);
                $('select').select2();
            }
        });
    }

    $('input[field_type="unique"]').blur(function(){
        var elem = $(this);
        var table_name = elem.data('table_name');
        var field_name = elem.attr('name');
        var val = elem.val();
        if(val == ''){
            elem.next('.draw_msg').html('');
            return;
        }
        var entry_id = $(this).attr('entry_id');
        if (typeof entry_id === typeof undefined && entry_id === false) {
            entry_id = 0;
        }
        $.ajax({
            url:'<?php echo base_url('master/check_uniqueness'); ?>',
            type:'post',
            data:{table_name:table_name,field_name:field_name,field_value:val,entry_id:entry_id},
            success: function(data){
                var obj = $.parseJSON(data);
                elem.next('.draw_msg').html(obj.msg);
                $('button[type="submit"]').removeAttr('disabled');
                $('.label-danger').each(function(){
                    $('button[type="submit"]').attr('disabled','disabled');
                });
            }
        });
    });

    function addCommas(nStr){
        nStr += '';
        x = nStr.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        }
        return x1 + x2;
    }
    function apsis_money(nStr){
        nStr += '';
        x = nStr.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        }
        return x1 + x2 + '.00';
    }
</script>
</body>
</html>
