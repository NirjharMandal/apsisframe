<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends Custom_controller {

    public function __construct() {
        parent::__construct();
    }
    public function index(){
        $this->static_view('dashboard1');
    }
    public function dashboard2(){
        $this->static_view('dashboard2');
    }
    public function widgets(){
        $this->static_view('widgets');
    }
    public function calendar(){
        $this->static_view('calendar');
    }
    public function advanced(){
        $this->static_view('forms/advanced');
    }
    public function editors(){
        $this->static_view('forms/editors');
    }
    public function general(){
        $this->static_view('forms/general');
    }
}
