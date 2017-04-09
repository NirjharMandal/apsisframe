<div class="col-md-6 no-padding">
    <div class="box box-warning">
        <div class="box-header with-border">
            <h3 class="box-title">Submit Support Ticket</h3>
        </div>
        <div class="box-body">
            <form action="" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="subject">Subject</label>
                    <?php email_subject() ?>
                </div>
                <div class="form-group">
                    <label for="message">Message Body</label>
                    <textarea class="form-control" type="text" name="message" id="message" rows="5"></textarea>
                </div>
                <div class="form-group">
                    <label for="attachment">Select Attachment</label>
                    <input type="file" name="mail_attachment" id="attachment" />
                </div>
                <input type="submit" value="Submit" class="btn btn-primary" />
            </form>
        </div>
    </div>
</div>