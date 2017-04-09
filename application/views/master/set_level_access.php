<div class="col-md-6 no-padding">
    <div class="box box-warning">
        <div class="box-header with-border">
            <h3 class="box-title">Menu Priviledge For Level</h3>
        </div>
        <div class="box-body">
            <?php
                echo form_open('master/get_menu_for_level','');
                echo '<div class="form-group">';
                echo '<label>Menu from which Module</label>&nbsp;&nbsp;';
                module(isset($selected_module)?$selected_module:'', array('class'=>"form-control"));
                echo '</div>';
                echo '<div class="form-group">';
                echo '<label>Privilege for which Level</label>&nbsp;&nbsp;';
                user_level(isset($selected_level)?$selected_level:'', array('class'=>"form-control"));
                echo '</div>';
                echo form_submit('mysubmit', 'Submit','class="btn btn-warning btn-flat"');
                echo form_close();

                if(isset($menu_list_array) && !empty($menu_list_array)){
                    echo form_open('master/set_menu_access_for_level');
                    echo form_hidden('module_id', $selected_module);
                    echo form_hidden('level_id', $selected_level);
                    echo '<div class="tree well">';
                    echo($menu_list_array);
                    echo '</div>';
                    echo form_submit('mysubmit', 'Submit','class="btn btn-primary"');
                    echo form_close();
                }
            ?>
        </div>
    </div>
</div>