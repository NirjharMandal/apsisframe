<div class="box box-warning">
    <div class="box-header with-border">
        <h3 class="box-title">Create Master Table</h3>
    </div>
    <div class="box-body">
        <?php echo @$msg; ?>
        <form action="" method="post">
            <div class="form-group">
                <label for="table_name">Name</label>
                <input type="text" class="form-control" name="table_name" id="table_name" placeholder="Enter Table Name"/>
            </div>
            <input class="btn btn-warning btn-flat" type="submit" value="Create"/>
        </form>
    </div>
    <!-- /.box-body -->
</div>