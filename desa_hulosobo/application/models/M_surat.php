<?php 

class M_surat extends CI_Model{

	function get_all_surat(){
		$hsl=$this->db->query("SELECT * FROM tbl_surat");
		return $hsl;
	}

	function simpan_surat($nip,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$alamat,$photo,$keperluan){
		$hsl=$this->db->query("INSERT INTO tbl_surat (surat_nip,surat_nama,surat_jenkel,surat_tmp_lahir,surat_tgl_lahir,
		surat_alamat,surat_photo,surat_keperluan) 
		VALUES ('$nip','$nama','$jenkel','$tmp_lahir','$tgl_lahir','$alamat','$photo','$keperluan')");
		return $hsl;
	}
	function simpan_surat_tanpa_img($nip,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$alamat,$keperluan){
		$hsl=$this->db->query("INSERT INTO tbl_surat (surat_nip,surat_nama,surat_jenkel,surat_tmp_lahir,
		surat_tgl_lahir,surat_alamat,surat_keperluan) 
		VALUES ('$nip','$nama','$jenkel','$tmp_lahir','$tgl_lahir','$alamat','$keperluan')");
		return $hsl;
	}

	function update_surat($kode,$nip,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$alamat,$photo,$keperluan){
		$hsl=$this->db->query("UPDATE tbl_surat SET surat_nip='$nip',surat_nama='$nama',surat_jenkel='$jenkel',surat_tmp_lahir='$tmp_lahir',
		surat_tgl_lahir='$tgl_lahir',surat_alamat='$alamat',surat_photo='$photo',surat_keperluan='$keperluan' WHERE surat_id='$kode'");
		return $hsl;
	}
	function update_surat_tanpa_img($kode,$nip,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$alamat,$keperluan){
		$hsl=$this->db->query("UPDATE tbl_surat SET surat_nip='$nip',surat_nama='$nama',surat_jenkel='$jenkel',surat_tmp_lahir='$tmp_lahir',
		surat_tgl_lahir='$tgl_lahir',surat_alamat='$alamat',surat_keperluan='$keperluan' WHERE surat_id='$kode'");
		return $hsl;
	}
	function hapus_surat($kode){
		$hsl=$this->db->query("DELETE FROM tbl_surat WHERE surat_id='$kode'");
		return $hsl;
	}

	//front-end
	function surat(){
		$hsl=$this->db->query("SELECT * FROM tbl_surat");
		return $hsl;
	}
	function surat_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_surat limit $offset,$limit");
		return $hsl;
	}


// class M_siswa extends CI_Model{

// 	function get_all_siswa(){
// 		$hsl=$this->db->query("SELECT tbl_siswa.*,kelas_nama FROM tbl_siswa JOIN tbl_kelas ON siswa_kelas_id=kelas_id");
// 		return $hsl;
// 	}

// 	function simpan_siswa($nis,$nama,$jenkel,$kelas,$photo){
// 		$hsl=$this->db->query("INSERT INTO tbl_siswa (siswa_nis,siswa_nama,siswa_jenkel,siswa_kelas_id,siswa_photo) VALUES ('$nis','$nama','$jenkel','$kelas','$photo')");
// 		return $hsl;
// 	}
// 	function simpan_siswa_tanpa_img($nis,$nama,$jenkel,$kelas){
// 		$hsl=$this->db->query("INSERT INTO tbl_siswa (siswa_nis,siswa_nama,siswa_jenkel,siswa_kelas_id) VALUES ('$nis','$nama','$jenkel','$kelas')");
// 		return $hsl;
// 	}

// 	function update_siswa($kode,$nis,$nama,$jenkel,$kelas,$photo){
// 		$hsl=$this->db->query("UPDATE tbl_siswa SET siswa_nis='$nis',siswa_nama='$nama',siswa_jenkel='$jenkel',siswa_kelas_id='$kelas',siswa_photo='$photo' WHERE siswa_id='$kode'");
// 		return $hsl;
// 	}
// 	function update_siswa_tanpa_img($kode,$nis,$nama,$jenkel,$kelas){
// 		$hsl=$this->db->query("UPDATE tbl_siswa SET siswa_nis='$nis',siswa_nama='$nama',siswa_jenkel='$jenkel',siswa_kelas_id='$kelas' WHERE siswa_id='$kode'");
// 		return $hsl;
// 	}
// 	function hapus_siswa($kode){
// 		$hsl=$this->db->query("DELETE FROM tbl_siswa WHERE siswa_id='$kode'");
// 		return $hsl;
// 	}

// 	function siswa(){
// 		$hsl=$this->db->query("SELECT tbl_siswa.*,kelas_nama FROM tbl_siswa JOIN tbl_kelas ON siswa_kelas_id=kelas_id");
// 		return $hsl;
// 	}
// 	function siswa_perpage($offset,$limit){
// 		$hsl=$this->db->query("SELECT tbl_siswa.*,kelas_nama FROM tbl_siswa JOIN tbl_kelas ON siswa_kelas_id=kelas_id limit $offset,$limit");
// 		return $hsl;
// 	}

}