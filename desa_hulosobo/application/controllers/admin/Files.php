<?php
class Files extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_files');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
		$this->load->helper('download');
	}


	function index(){
		
		$x['data']=$this->m_files->get_all_files();
		$this->load->view('admin/v_files',$x);
	}

	function download(){
		$id=$this->uri->segment(4);
		$get_db=$this->m_files->get_file_byid($id);
		$q=$get_db->row_array();
		$file=$q['file_data'];
		$path='./assets/files/'.$file;
		$data =  file_get_contents($path);
		$name = $file;

		force_download($name, $data); 
		redirect('admin/files');
	}
	
	function simpan_file(){
				$config['upload_path'] = './assets/files/'; //path folder
	            $config['allowed_types'] = 'pdf|doc|docx|ppt|pptx|zip'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        $file=$gbr['file_name'];
							$judul=strip_tags($this->input->post('xjudul'));
							$deskripsi=$this->input->post('xdeskripsi');
							$oleh=strip_tags($this->input->post('xoleh'));
	
							$this->m_files->simpan_file($judul,$deskripsi,$oleh,$file);
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/files');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/files');
	                }
	                 
	            }else{
					redirect('admin/files');
				}
				
	}
	
	function update_file(){
				
	            $config['upload_path'] = './assets/files/'; //path folder
	            $config['allowed_types'] = 'pdf|doc|docx|ppt|pptx|zip'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        $file=$gbr['file_name'];
	                        $kode=$this->input->post('kode');
	                        $judul=strip_tags($this->input->post('xjudul'));
							$deskripsi=$this->input->post('xdeskripsi');
							$oleh=strip_tags($this->input->post('xoleh'));
							$data=$this->input->post('file');
							$path='./assets/files/'.$data;
							unlink($path);
							$this->m_files->update_file($kode,$judul,$deskripsi,$oleh,$file);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/files');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/files');
	                }
	                
	            }else{
						$kode=$this->input->post('kode');
	                    $judul=strip_tags($this->input->post('xjudul'));
						$deskripsi=$this->input->post('xdeskripsi');
						$oleh=strip_tags($this->input->post('xoleh'));
						$this->m_files->update_file_tanpa_file($kode,$judul,$deskripsi,$oleh);
						echo $this->session->set_flashdata('msg','info');
						redirect('admin/files');
	            } 

	}

	function hapus_file(){
		$kode=$this->input->post('kode');
		$data=$this->input->post('file');
		$path='./assets/files/'.$data;
		unlink($path);
		$this->m_files->hapus_file($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/files');
	}

		// export excel
		function export_ex()
		{
			$_FILES = $this->m_files->listing();
			// var_dump($_FILES);
			// exit;
			$data = array(
				'title' => 'Data Download',
				'files' => $_FILES,
				// 'content' => 'admin/penduduk/list2'
			);
			// $data['penduduk'] = $this->m_pend->listing('penduduk')->result();
	
			require(APPPATH . 'PHPExcel-1.8/Classes/PHPExcel.php');
			require(APPPATH . 'PHPExcel-1.8/Classes/PHPExcel/Writer/Excel2007.php');
	
			$objPHPExcel = new PHPExcel();
			$objPHPExcel->getProperties()->setCreator("idr corner");
			$objPHPExcel->getProperties()->setLastModifiedBy("idr corner");
			$objPHPExcel->getProperties()->setTitle("Data Download");
			$objPHPExcel->getProperties()->setSubject("");
			$objPHPExcel->getProperties()->setDescription("");
	
			$objPHPExcel->setActiveSheetIndex(0);
			$objPHPExcel->getActiveSheet()->setCellValue('A1', 'NO');
			$objPHPExcel->getActiveSheet()->setCellValue('B1', 'JUDUL');
			$objPHPExcel->getActiveSheet()->setCellValue('C1', 'DESKRIPSI');
			$objPHPExcel->getActiveSheet()->setCellValue('D1', 'OLEH');
			$objPHPExcel->getActiveSheet()->setCellValue('E1', 'TANGGAL');

	
	
			$baris = 2;
			$no = 1;
			foreach ($data['files'] as $data) {
				$objPHPExcel->getActiveSheet()->setCellValue('A' . $baris, $no);
				$objPHPExcel->getActiveSheet()->setCellValue('B' . $baris, $data->file_judul);
				$objPHPExcel->getActiveSheet()->setCellValue('C' . $baris, $data->file_deskripsi);
				$objPHPExcel->getActiveSheet()->setCellValue('D' . $baris, $data->file_oleh);
				$objPHPExcel->getActiveSheet()->setCellValue('E' . $baris, $data->file_tanggal);
				$no++;
				$baris++;
			}
	
	
			$filename = "Data-Download" . date("d-m-Y-H-i-s") . '.xlsx';
			$objPHPExcel->getActiveSheet()->setTitle('Data Download');
	
			header('Content-Type: application/vnd.openxmlformats-officedocument.speardsheetml.sheet');
			header('Content-Disposition: attacment;filename="' . $filename . '"');
			header('Cache-Control: max-age-0');
	
			$writer = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
			$writer->save('php://output');
	
			exit;
		}

}