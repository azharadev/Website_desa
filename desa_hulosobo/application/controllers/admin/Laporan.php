<?php
class Laporan extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_laporan');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_laporan->get_all_laporan();
		$this->load->view('admin/v_laporan',$x);
	}

	function simpan_laporan(){
		$judul=strip_tags($this->input->post('xjudul'));
		$deskripsi=$this->input->post('xdeskripsi');
		$this->m_laporan->simpan_laporan($judul,$deskripsi);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/laporan');
	}

	function update_laporan(){
		$kode=strip_tags($this->input->post('kode'));
		$judul=strip_tags($this->input->post('xjudul'));
		$deskripsi=$this->input->post('xdeskripsi');
		$this->m_laporan->update_laporan($kode,$judul,$deskripsi);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/laporan');
	}
	function hapus_laporan(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_laporan->hapus_laporan($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/laporan');
	}

}