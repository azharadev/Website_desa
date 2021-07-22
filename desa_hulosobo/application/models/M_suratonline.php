<?php
class M_kontak extends CI_Model
{

    function kirim_pesan($nama, $email, $kontak, $pesan)
    {
        $hsl = $this->db->query("INSERT INTO tbl_suratonline(surat_nama,surat_email,surat_kontak,surat_pesan) VALUES ('$nama','$email','$kontak','$pesan')");
        return $hsl;
    }

    function get_all_surat()
    {
        $hsl = $this->db->query("SELECT tbl_suratonline.*,DATE_FORMAT(surat_tanggal,'%d %M %Y') AS tanggal FROM tbl_suratonline ORDER BY surat_id DESC");
        return $hsl;
    }

    function hapus_kontak($kode)
    {
        $hsl = $this->db->query("DELETE FROM tbl_suratonline WHERE surat_id='$kode'");
        return $hsl;
    }

    function update_status_kontak()
    {
        $hsl = $this->db->query("UPDATE tbl_suratonline SET surat_status='0'");
        return $hsl;
    }

    public function listing()
    {
        $this->db->select('*');
        $this->db->from('tbl_suratonline');
        $this->db->order_by('surat_nama', 'desc');
        $query = $this->db->get();
        return $query->result();
    }

    public function get_all()
    {
        return $this->db->get("tbl_suratonline");
    }
}
