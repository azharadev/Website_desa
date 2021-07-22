<?php
class Inbox extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masuk') != TRUE) {
			$url = base_url('administrator');
			redirect($url);
		};
		$this->load->model('m_kontak');
	}

	function index()
	{
		$this->m_kontak->update_status_kontak();
		$x['data'] = $this->m_kontak->get_all_inbox();
		$this->load->view('admin/v_inbox', $x);
	}

	function hapus_inbox()
	{
		$kode = $this->input->post('kode');
		$this->m_kontak->hapus_kontak($kode);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('admin/inbox');
	}

	function export_ex()
	{
		$surat = $this->m_kontak->listing();
		// var_dump($surat);
		// exit;
		$data = array(
			'title' => 'Data surat',
			'surat' => $surat,
			// 'content' => 'admin/surat/list2'
		);
		// $data['surat'] = $this->m_pend->listing('surat')->result();

		require(APPPATH . 'PHPExcel-1.8/Classes/PHPExcel.php');
		require(APPPATH . 'PHPExcel-1.8/Classes/PHPExcel/Writer/Excel2007.php');

		$objPHPExcel = new PHPExcel();
		$objPHPExcel->getProperties()->setCreator("idr corner");
		$objPHPExcel->getProperties()->setLastModifiedBy("idr corner");
		$objPHPExcel->getProperties()->setTitle("Data Surat");
		$objPHPExcel->getProperties()->setSubject("");
		$objPHPExcel->getProperties()->setDescription("");

		$objPHPExcel->setActiveSheetIndex(0);
		$objPHPExcel->getActiveSheet()->setCellValue('A1', 'NO');
		$objPHPExcel->getActiveSheet()->setCellValue('B1', 'NAMA');
		$objPHPExcel->getActiveSheet()->setCellValue('C1', 'EMAIL');
		$objPHPExcel->getActiveSheet()->setCellValue('D1', 'PHONE');
		$objPHPExcel->getActiveSheet()->setCellValue('E1', 'PESAN');



		$baris = 2;
		$no = 1;
		foreach ($data['surat'] as $data) {
			$objPHPExcel->getActiveSheet()->setCellValue('A' . $baris, $no);
			$objPHPExcel->getActiveSheet()->setCellValue('B' . $baris, $data->inbox_nama);
			$objPHPExcel->getActiveSheet()->setCellValue('C' . $baris, $data->inbox_email);
			$objPHPExcel->getActiveSheet()->setCellValue('D' . $baris, $data->inbox_kontak);
			$objPHPExcel->getActiveSheet()->setCellValue('E' . $baris, $data->inbox_pesan);

			$no++;
			$baris++;
		}


		$filename = "Data-surat" . date("d-m-Y-H-i-s") . '.xlsx';
		$objPHPExcel->getActiveSheet()->setTitle('Data Surat');

		header('Content-Type: application/vnd.openxmlformats-officedocument.speardsheetml.sheet');
		header('Content-Disposition: attacment;filename="' . $filename . '"');
		header('Cache-Control: max-age-0');

		$writer = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
		$writer->save('php://output');

		exit;
	}

	public function export()
	{
		$surat = $this->m_kontak->get_all();
		// $tanggal = date('d-m-Y');

		$pdf = new \TCPDF();
		$pdf->AddPage();
		$pdf->SetFont('', 'B', 20);
		$pdf->Cell(115, 0, "Laporan Layanan Surat", 0, 1, 'L');
		$pdf->SetAutoPageBreak(true, 0);

		// Add Header
		$pdf->Ln(10);
		$pdf->SetFont('', 'B', 9);
		$pdf->Cell(8, 15, "No", 1, 0, 'C');
		$pdf->Cell(27, 15, "Nama", 1, 0, 'C');
		$pdf->Cell(35, 15, "Email", 1, 0, 'C');
		$pdf->Cell(25, 15, "Phone", 1, 0, 'C');
		$pdf->Cell(95, 15, "Pesan", 1, 1, 'C');
		$pdf->SetFont('', '', 9);
		foreach ($surat->result_array() as $k => $surat) {
			$this->addRow($pdf, $k + 1, $surat);
		}
		// $tanggal = date('d-m-Y');
		$pdf->Output('Laporan_Surat.pdf');
	}

	private function addRow($pdf, $no, $surat)
	{
		$pdf->Cell(8, 15, $no, 1, 0, 'C');
		$pdf->Cell(27, 15, $surat['inbox_nama'], 1, 0, 'C');
		$pdf->Cell(35, 15, $surat['inbox_email'], 1, 0, 'C');
		$pdf->Cell(25, 15, $surat['inbox_kontak'], 1, 0, 'C');
		$pdf->Cell(95, 15, $surat['inbox_pesan'], 1, 1, 'C');
	}
}
