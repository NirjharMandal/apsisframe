<header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>P</b>rism</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Partner</b> promotion</span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- Notifications: style can be found in dropdown.less -->
                <li class="dropdown notifications-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-bell-o"></i>
                        <span class="label label-warning"><?php echo ($count_new_notification>99?$count_new_notification.'+':$count_new_notification); ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">You have <?php echo ($count_new_notification>99?$count_new_notification.'+':$count_new_notification); ?> notifications</li>
<!--                        <li>-->
<!--                            <ul class="menu">-->
<!--                                <li>-->
<!--                                    <a href="#">-->
<!--                                        <i class="fa fa-users text-aqua"></i> 5 new members joined today-->
<!--                                    </a>-->
<!--                                </li>-->
<!--                            </ul>-->
<!--                        </li>-->
<!--                        <li class="footer"><a href="#">View all</a></li>-->
                    </ul>
                </li>

<!--                 Module Name Here-->
                <li class="dropdown notifications-menu">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="<?php echo $module_name->module_icon ?>"></i>
                        <?php echo $module_name->module_name; ?>
                        <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu"><?php echo $module_html ?></ul>
                </li>




                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <img src="<?php echo base_url().''.$this->session->userdata('USER_IMAGE'); ?>" class="user-image" alt="<?php echo $this->session->userdata('FIRSTNAME'); ?>">
                        <span class="hidden-xs"><?php echo $this->session->userdata('FIRSTNAME'); ?></span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <img src="<?php echo base_url().''.$this->session->userdata('USER_IMAGE'); ?>" class="img-circle" alt="<?php echo $this->session->userdata('FIRSTNAME'); ?>">

                            <p>
                                <?php echo $this->session->userdata('FIRSTNAME'); ?> <?php echo $this->session->userdata('LASTNAME'); ?>
<!--                                <small>Member since Nov. 2012</small>-->
                            </p>
                        </li>
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="<?php echo base_url('master/edit_profile')?>" class="btn btn-default btn-flat">Profile</a>
                            </div>
                            <div class="pull-right">
                                <a href="<?php echo base_url('login_cont/logout')?>" class="btn btn-default btn-flat">Sign out</a>
                            </div>
                        </li>
                    </ul>
                </li>

                <!-- Control Sidebar Toggle Button -->
                <!--<li>
                    <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                </li>-->
            </ul>
        </div>
    </nav>
</header>