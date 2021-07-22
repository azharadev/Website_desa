<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Layanan</title>
    <link rel="shorcut icon" href="<?php echo base_url() . 'theme/images/logo_desa1.png' ?>">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/bootstrap.min.css' ?>">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/font-awesome.min.css' ?>">
    <!-- Simple Line Font -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/simple-line-icons.css' ?>">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/owl.carousel.min.css' ?>">
    <!-- Main CSS -->
    <link href="<?php echo base_url() . 'theme/css/style.css' ?>" rel="stylesheet">
</head>

<body>
    <!--============================= HEADER =============================-->
    <?php
    $this->load->view('depan/v_header');
    ?>
    <!--//END HEADER -->
    <section class="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="contact-title">
                        <h2>Layanan Surat Online</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="contact-form">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 contact-option">
                                <div class="contact-option_rsp">
                                    <h3>Ajukan Permohonan</h3>
                                    <form action="<?php echo site_url('contact/kirim_pesan'); ?>" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Name" name="xnama" required>
                                        </div>
                                        <!-- // end .form-group -->
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email" name="xemail" required>
                                        </div>
                                        <!-- // end .form-group -->
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Phone" name="xphone" required>
                                        </div>
                                        <!-- // end .form-group -->
                                        <div class="form-group">
                                            <textarea placeholder="Message" class="form-control" name="xmessage" required rows="5"></textarea>
                                        </div>
                                        <!-- // end .form-group -->
                                        <button type="submit" class="btn btn-default btn-submit">SUBMIT</button>
                                        <div><?php echo $this->session->flashdata('msg'); ?></div>
                                        <!-- // end #js-contact-result -->
                                    </form>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6">
                                <div class="contact-address">
                                    <h3>Lokasi</h3>
                                    <div class="contact-details">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <h6>Alamat</h6>
                                        <p> UDIN University
                                            <br> Semarang, Jawa Tengah
                                            <br> Indonesia</p>
                                    </div>
                                    <br>
                                    <div class="contact-details">
                                        <i class="fa fa-envelope-o" aria-hidden="true"></i>
                                        <h6>Email</h6>
                                        <p>desa@gmail.com
                                            <br> admin@gmail.com
                                        </p>
                                    </div>
                                    <br>
                                    <div class="contact-details">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                        <h6>Phone</h6>
                                        <p>+62 877 11xx 1xxx</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <p class="contact-center">OR</p>
                </div>
            </div>
        </div>
    </section>
    <!--//END  ABOUT IMAGE -->
    <!--============================= FOOTER =============================-->
    <?php
    $this->load->view('depan/v_footer');
    ?>