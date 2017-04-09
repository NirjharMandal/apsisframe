<form id="ajax_form" action="" method="post" enctype="multipart/formdata">
    <input type="file" name="userfile" />
    <input type="submit" name="upload" value="upload"/>
</form>
<script>
    var files;
    $('input[type=file]').on('change', prepareUpload);
    function prepareUpload(event)
    {
      files = event.target.files;
    }
    $('form').on('submit', uploadFiles);
    function uploadFiles(event)
    {
        event.stopPropagation();
        event.preventDefault();
        var data = new FormData();
        $.each(files, function(key, value){
            data.append(key, value);
        });

        $.ajax({
            url: '<?php echo base_url() ?>file_upload/ajax_upload',
            type: 'POST',
            data: data,
            cache: false,
            dataType: 'json',
            processData: false,
            contentType: false,
            success: function(data, textStatus, jqXHR){
                if(typeof data.error === 'undefined'){
                    submitForm(event, data);
                }else{
                    console.log('ERRORS: ' + data.error);
                }
            },
            error: function(jqXHR, textStatus, errorThrown){
                console.log('ERRORS: ' + textStatus);
            }
        });
    }
</script>