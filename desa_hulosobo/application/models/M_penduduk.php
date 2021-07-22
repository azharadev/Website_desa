<?php
class M_penduduk extends CI_Model
{

	function get_all_penduduk()
	{
		$hsl = $this->db->query("SELECT * FROM tbl_penduduk");
		return $hsl;
	}

	public function listing()
	{
		$this->db->select('*');
		$this->db->from('tbl_penduduk');
		$this->db->order_by('penduduk_nip', 'desc');
		$query = $this->db->get();
		return $query->result();
	}

	public function get_all()
	{
		return $this->db->get("tbl_penduduk");
	}

	function simpan_penduduk($nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $alamat, $photo)
	{
		$hsl = $this->db->query("INSERT INTO tbl_penduduk (penduduk_nip,penduduk_nama,penduduk_jenkel,penduduk_tmp_lahir,penduduk_tgl_lahir,penduduk_alamat,penduduk_photo) VALUES ('$nip','$nama','$jenkel','$tmp_lahir','$tgl_lahir','$alamat','$photo')");
		return $hsl;
	}
	function simpan_penduduk_tanpa_img($nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $alamat)
	{
		$hsl = $this->db->query("INSERT INTO tbl_penduduk (penduduk_nip,penduduk_nama,penduduk_jenkel,penduduk_tmp_lahir,penduduk_tgl_lahir,penduduk_alamat) VALUES ('$nip','$nama','$jenkel','$tmp_lahir','$tgl_lahir','$alamat')");
		return $hsl;
	}

	function update_penduduk($kode, $nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $alamat, $photo)
	{
		$hsl = $this->db->query("UPDATE tbl_penduduk SET penduduk_nip='$nip',penduduk_nama='$nama',penduduk_jenkel='$jenkel',penduduk_tmp_lahir='$tmp_lahir',penduduk_tgl_lahir='$tgl_lahir',penduduk_alamat='$alamat',penduduk_photo='$photo' WHERE penduduk_id='$kode'");
		return $hsl;
	}
	function update_penduduk_tanpa_img($kode, $nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $alamat)
	{
		$hsl = $this->db->query("UPDATE tbl_penduduk SET penduduk_nip='$nip',penduduk_nama='$nama',penduduk_jenkel='$jenkel',penduduk_tmp_lahir='$tmp_lahir',penduduk_tgl_lahir='$tgl_lahir',penduduk_alamat='$alamat' WHERE penduduk_id='$kode'");
		return $hsl;
	}
	function hapus_penduduk($kode)
	{
		$hsl = $this->db->query("DELETE FROM tbl_penduduk WHERE penduduk_id='$kode'");
		return $hsl;
	}

	//front-end
	function penduduk()
	{
		$hsl = $this->db->query("SELECT * FROM tbl_penduduk");
		return $hsl;
	}
	function penduduk_perpage($offset, $limit)
	{
		$hsl = $this->db->query("SELECT * FROM tbl_penduduk limit $offset,$limit");
		return $hsl;
	}
}
