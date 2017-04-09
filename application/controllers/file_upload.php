<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class File_Upload extends Custom_Controller {
    function __construct() {
        parent::__construct();
        $this->load->helper('url','html','form');
        $this->load->library('javascript');
        $this->load->library('session');
        $this->load->model('user_model','','TRUE');    
    }
    
    function index() {
        $this->render_page('ajax_file_upload');
    }
    
    function ajax_upload(){
        $target_dir = "./upload/";
        $target_file = $target_dir . basename($_FILES[0]["name"]);
        $uploadOk = 1;
        $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
        // Check if image file is a actual image or fake image
        if(isset($_POST["submit"])) {
            $check = getimagesize($_FILES[0]["tmp_name"]);
            if($check !== false) {
                echo "File is an image - " . $check["mime"] . ".";
                $uploadOk = 1;
                
            } else {
                echo "File is not an image.";
                $uploadOk = 0;
            }
        }
        
        if (move_uploaded_file($_FILES[0]["tmp_name"], $target_file)) {
            echo $target_file;
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
                
    }
}