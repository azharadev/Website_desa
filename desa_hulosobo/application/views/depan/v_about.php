<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>About</title>
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
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/slick.css' ?>">
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/slick-theme.css' ?>">
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
    <!--//END ABOUT IMAGE -->
    <!--============================= WELCOME TITLE =============================-->
    <section class="welcome_about">
        <div class="container">
            <div class="row">
                <div class="col-md-10">
                    <h2>Desa Sekartaji</h2>
                    <br>
                    <img src="<?php echo base_url() . 'theme/images/sejarahpict.jpg' ?>" class="img-fluid" alt="#">
                </div>
                <div class="col-md-20">
                    <br><br><br>
                    <p>Desa Sekartaji adalah salah satu desa di Kecamatan Nusa Penida, yang terletak 22 Kilometer dari Kota Kecamatan.

                        Desa Sekartaji adalah termasuk salah satu desa tua,hal ini dapat dibuktikan dengan ditemukannya banyak kerangka manusia yang ukurannya lebih kecil dari manusia normal dan sudah memakai perhiasan yang terbuat dari tembaga.Tetapi lahirnya nama Desa Sekartaji berawal dari cerita bahwa dahulu kala di Desa Ped ada 8 (delapan) orang bersaudara yang semuanya laki-laki,karena situasi pada saat itu tidak aman maka orang tua mereka memerintahkan kedelapan putra beliau untuk berpencar dan menyebar ke segala penjuru,salah seorang dari delapan bersaudara tersebut adalah I Gusti Nyoman Murdana yang berangkat menuju pesisir selatan Pulau Nusa Penida. Dengan berbekal pusaka berupa patung dan senjata berupa taji (senjata ayam saat diadu ),karena kesekartajian beliau di sepanjang jalan maka senjata (taji) tersebut disuntingkan ditelinga (kasumpangan/kasekaran) setelah sampai kepesisir selatan dan beliau menetap ditempat tersebut maka dinamakan wilayah tersebut dengan nama SEKARTAJI,YANG ARTINYA Taji yang dipakai bunga (sekar) sehingga sampai sekarang desa tersebut bernama Sekartaji.
                    </p>

                </div>

            </div>
        </div>
    </section>
    <!--//END WELCOME TITLE -->
    <!--============================= TESTIMONIAL =============================-->
    <section class="testimonial">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Testimonial</h2>
                </div>
                <div class="col-md-12">
                    <div class="single-item">
                        <div class="quote">
                            <i class="fa fa-quote-left" aria-hidden="true"></i>
                            <p class="quote_text">Wow Desa Sekartaji merupakan desa yang bagus, selain memiliki sejarah yang bagus, desa ini penduduknya ramah-ramah.</p>
                            <div class="testi-img_block">
                                <img src="<?php echo base_url() . 'theme/images/student-1.png' ?>" class="img-fluid" alt="#">
                                <p><span>Hernandez Alvaro</span>Komentar Terbaik 2018</p>
                            </div>
                        </div>
                        <div class="quote">
                            <i class="fa fa-quote-left" aria-hidden="true"></i>
                            <p class="quote_text">Desa Sekartaji benar-benar mengagumkan. </p>
                            <div class="testi-img_block">
                                <img src="<?php echo base_url() . 'theme/images/student-2.png' ?>" class="img-fluid" alt="#">
                                <p><span>Elanoar Rigby</span>Komentar Terbaik 2017</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END TESTIMONIAL -->
    <!--============================= DETAILED CHART =============================-->
    <div class="detailed_chart">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3 chart_bottom">
                    <div class="chart-img">
                        <img src="<?php echo base_url() . 'theme/images/chart-icon_1.png' ?>" class="img-fluid" alt="chart_icon">
                    </div>
                    <!-- <div class="chart-text">
                        <p><span class="counter"><?php //echo $tot_penduduk;
                                                    ?></span> Penduduk
                        </p>
                    </div> -->
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 chart_bottom chart_top">
                    <div class="chart-img">
                        <img src="<?php echo base_url() . 'theme/images/chart-icon_2.png' ?>" class="img-fluid" alt="chart_icon">
                    </div>
                    <!-- <div class="chart-text">
                        <p><span class="counter"><?php //echo $tot_Komentar;
                                                    ?></span> Komentar
                        </p>
                    </div> -->
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3 chart_top">
                    <div class="chart-img">
                        <img src="<?php echo base_url() . 'theme/images/chart-icon_3.png' ?>" class="img-fluid" alt="chart_icon">
                    </div>
                    <div class="chart-text">
                        <p><span class="counter"><?php echo $tot_files; ?></span> Download
                        </p>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="chart-img">
                        <img src="<?php echo base_url() . 'theme/images/chart-icon_4.png' ?>" class="img-fluid" alt="chart_icon">
                    </div>
                    <div class="chart-text">
                        <p><span class="counter"><?php echo $tot_agenda; ?></span> Agenda</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--//END DETAILED CHART -->

    <!--============================= FOOTER =============================-->
    <?php
    $this->load->view('depan/v_footer');
    ?>