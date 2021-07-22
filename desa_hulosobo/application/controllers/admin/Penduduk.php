<?php
class Penduduk extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masuk') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('m_penduduk');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}


	function index()
	{
		$x['data'] = $this->m_penduduk->get_all_penduduk();
		$this->load->view('admin/v_penduduk', $x);
	}

	function simpan_penduduk()
	{
		$config['upload_path'] = './assets/images/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = './assets/images/' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 300;
				$config['height'] = 300;
				$config['new_image'] = './assets/images/' . $gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();

				$photo = $gbr['file_name'];
				$nip = strip_tags($this->input->post('xnip'));
				$nama = strip_tags($this->input->post('xnama'));
				$jenkel = strip_tags($this->input->post('xjenkel'));
				$tmp_lahir = strip_tags($this->input->post('xtmp_lahir'));
				$tgl_lahir = strip_tags($this->input->post('xtgl_lahir'));
				$alamat = strip_tags($this->input->post('xalamat'));

				$this->m_penduduk->simpan_penduduk($nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $alamat, $photo);
				echo $this->session->set_flashdata('msg', 'success');
				redirect('admin/penduduk');
			} else {
				echo $this->session->set_flashdata('msg', 'warning');
				redirect('admin/penduduk');
			}
		} else {
			$nip = strip_tags($this->input->post('xnip'));
			$nama = strip_tags($this->input->post('xnama'));
			$jenkel = strip_tags($this->input->post('xjenkel'));
			$tmp_lahir = strip_tags($this->input->post('xtmp_lahir'));
			$tgl_lahir = strip_tags($this->input->post('xtgl_lahir'));
			$alamat = strip_tags($this->input->post('xalamat'));

			$this->m_penduduk->simpan_penduduk_tanpa_img($nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $alamat);
			echo $this->session->set_flashdata('msg', 'success');
			redirect('admin/penduduk');
		}
	}

	function update_penduduk()
	{

		$config['upload_path'] = './assets/images/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = './assets/images/' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 300;
				$config['height'] = 300;
				$config['new_image'] = './assets/images/' . $gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$gambar = $this->input->post('gambar');
				$path = './assets/images/' . $gambar;
				unlink($path);

				$photo = $gbr['file_name'];
				$kode = $this->input->post('kode');
				$nip = strip_tags($this->input->post('xnip'));
				$nama = strip_tags($this->input->post('xnama'));
				$jenkel = strip_tags($this->input->post('xjenkel'));
				$tmp_lahir = strip_tags($this->input->post('xtmp_lahir'));
				$tgl_lahir = strip_tags($this->input->post('xtgl_lahir'));
				$alamat = strip_tags($this->input->post('xalamat'));

				$this->m_penduduk->update_penduduk($kode, $nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $alamat, $photo);
				echo $this->session->set_flashdata('msg', 'info');
				redirect('admin/penduduk');
			} else {
				echo $this->session->set_flashdata('msg', 'warning');
				redirect('admin/penduduk');
			}
		} else {
			$kode = $this->input->post('kode');
			$nip = strip_tags($this->input->post('xnip'));
			$nama = strip_tags($this->input->post('xnama'));
			$jenkel = strip_tags($this->input->post('xjenkel'));
			$tmp_lahir = strip_tags($this->input->post('xtmp_lahir'));
			$tgl_lahir = strip_tags($this->input->post('xtgl_lahir'));
			$alamat = strip_tags($this->input->post('xalamat'));
			$this->m_penduduk->update_penduduk_tanpa_img($kode, $nip, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $alamat);
			echo $this->session->set_flashdata('msg', 'info');
			redirect('admin/penduduk');
		}
	}

	function hapus_penduduk()
	{
		$kode = $this->input->post('kode');
		$gambar = $this->input->post('gambar');
		$path = './assets/images/' . $gambar;
		unlink($path);
		$this->m_penduduk->hapus_penduduk($kode);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('admin/penduduk');
	}

	// export excel
	function export_ex()
	{
		$penduduk = $this->m_penduduk->listing();
		// var_dump($penduduk);
		// exit;
		$data = array(
			'title' => 'Data Penduduk',
			'penduduk' => $penduduk,
			// 'content' => 'admin/penduduk/list2'
		);
		// $data['penduduk'] = $this->m_pend->listing('penduduk')->result();

		require(APPPATH . 'PHPExcel-1.8/Classes/PHPExcel.php');
		require(APPPATH . 'PHPExcel-1.8/Classes/PHPExcel/Writer/Excel2007.php');

		$objPHPExcel = new PHPExcel();
		$objPHPExcel->getProperties()->setCreator("idr corner");
		$objPHPExcel->getProperties()->setLastModifiedBy("idr corner");
		$objPHPExcel->getProperties()->setTitle("Data Penduduk");
		$objPHPExcel->getProperties()->setSubject("");
		$objPHPExcel->getProperties()->setDescription("");

		$objPHPExcel->setActiveSheetIndex(0);
		$objPHPExcel->getActiveSheet()->setCellValue('A1', 'NO');
		$objPHPExcel->getActiveSheet()->setCellValue('B1', 'NIK');
		$objPHPExcel->getActiveSheet()->setCellValue('C1', 'NAMA');
		$objPHPExcel->getActiveSheet()->setCellValue('D1', 'JENIS KELAMIN');
		$objPHPExcel->getActiveSheet()->setCellValue('E1', 'TEMPAT LAHIR');
		$objPHPExcel->getActiveSheet()->setCellValue('F1', 'TANGGAL LAHIR');
		$objPHPExcel->getActiveSheet()->setCellValue('G1', 'ALAMAT');


		$baris = 2;
		$no = 1;
		foreach ($data['penduduk'] as $data) {
			$objPHPExcel->getActiveSheet()->setCellValue('A' . $baris, $no);
			$objPHPExcel->getActiveSheet()->setCellValue('B' . $baris, $data->penduduk_nip);
			$objPHPExcel->getActiveSheet()->setCellValue('C' . $baris, $data->penduduk_nama);
			$objPHPExcel->getActiveSheet()->setCellValue('D' . $baris, $data->penduduk_jenkel);
			$objPHPExcel->getActiveSheet()->setCellValue('E' . $baris, $data->penduduk_tmp_lahir);
			$objPHPExcel->getActiveSheet()->setCellValue('F' . $baris, $data->penduduk_tgl_lahir);
			$objPHPExcel->getActiveSheet()->setCellValue('G' . $baris, $data->penduduk_alamat);
			$no++;
			$baris++;
		}


		$filename = "Data-Penduduk" . date("d-m-Y-H-i-s") . '.xlsx';
		$objPHPExcel->getActiveSheet()->setTitle('Data Penduduk');

		header('Content-Type: application/vnd.openxmlformats-officedocument.speardsheetml.sheet');
		header('Content-Disposition: attacment;filename="' . $filename . '"');
		header('Cache-Control: max-age-0');

		$writer = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		$writer->save('php://output');

		exit;
	}

	public function export()
	{
		$penduduk = $this->m_penduduk->get_all();
		// $tanggal = date('d-m-Y');

		$pdf = new \TCPDF();
		$pdf->AddPage();
		$pdf->SetFont('', 'B', 20);
		$pdf->Cell(115, 0, "Laporan Data Penduduk", 0, 1, 'L');
		$pdf->SetAutoPageBreak(true, 0);

		// Add Header
		$pdf->Ln(10);
		$pdf->SetFont('', 'B', 12);
		$pdf->Cell(10, 8, "No", 1, 0, 'C');
		$pdf->Cell(55, 8, "Nama", 1, 0, 'C');
		$pdf->Cell(35, 8, "Tempat Lahir", 1, 0, 'C');
		$pdf->Cell(35, 8, "Tanggal Lahir", 1, 0, 'C');
		$pdf->Cell(50, 8, "Alamat", 1, 1, 'C');
		$pdf->SetFont('', '', 12);
		foreach ($penduduk->result_array() as $k => $penduduk) {
			$this->addRow($pdf, $k + 1, $penduduk);
		}
		// $tanggal = date('d-m-Y');
		$pdf->Output('Laporan.pdf');
	}

	private function addRow($pdf, $no, $penduduk)
	{
		$pdf->Cell(10, 8, $no, 1, 0, 'C');
		$pdf->Cell(55, 8, $penduduk['penduduk_nama'], 1, 0, 'C');
		$pdf->Cell(35, 8, $penduduk['penduduk_tmp_lahir'], 1, 0, 'C');
		$pdf->Cell(35, 8, $penduduk['penduduk_tgl_lahir'], 1, 0, 'C');
		$pdf->Cell(50, 8, $penduduk['penduduk_alamat'], 1, 1, 'C');
	}
}
