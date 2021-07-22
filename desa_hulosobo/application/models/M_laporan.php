<?php
class M_laporan extends CI_Model{

	function get_all_laporan(){
		$hsl=$this->db->query("SELECT laporan_id,laporan_judul,laporan_deskripsi,DATE_FORMAT(laporan_tanggal,'%d/%m/%Y') AS tanggal,laporan_penulis FROM tbl_laporan ORDER BY laporan_id DESC");
		return $hsl;
	}
	function simpan_laporan($judul,$deskripsi){
		$penulis=$this->session->userdata('nama');
		$hsl=$this->db->query("INSERT INTO tbl_laporan(laporan_judul,laporan_deskripsi,laporan_penulis) VALUES ('$judul','$deskripsi','$penulis')");
		return $hsl;
	}
	function update_laporan($kode,$judul,$deskripsi){
		$penulis=$this->session->userdata('nama');
		$hsl=$this->db->query("UPDATE tbl_laporan SET laporan_judul='$judul',laporan_deskripsi='$deskripsi',laporan_penulis='$penulis' where laporan_id='$kode'");
		return $hsl;
	}
	function hapus_laporan($kode){
		$hsl=$this->db->query("DELETE FROM tbl_laporan WHERE laporan_id='$kode'");
		return $hsl;
	}

	//Front-end
	function get_laporan_home(){
		$hsl=$this->db->query("SELECT laporan_id,laporan_judul,laporan_deskripsi,DATE_FORMAT(laporan_tanggal,'%d/%m/%Y') AS tanggal,laporan_penulis FROM tbl_laporan ORDER BY laporan_id DESC limit 3");
		return $hsl;
	}

	function laporan(){
		$hsl=$this->db->query("SELECT laporan_id,laporan_judul,laporan_deskripsi,DATE_FORMAT(laporan_tanggal,'%d/%m/%Y') AS tanggal,laporan_penulis FROM tbl_laporan ORDER BY laporan_id DESC");
		return $hsl;
	}
	function laporan_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT laporan_id,laporan_judul,laporan_deskripsi,laporan_tanggal,DATE_FORMAT(laporan_tanggal,'%d/%m/%Y') AS tanggal,laporan_penulis FROM tbl_laporan ORDER BY laporan_id DESC limit $offset,$limit");
		return $hsl;
	}


}
