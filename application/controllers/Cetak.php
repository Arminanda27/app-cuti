<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cetak extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
		$this->load->model('m_cuti');
    }

    public function surat_cuti_pdf(){

        $data['cuti'] = $this->m_cuti->get_all_cuti_by_id_cuti($id_cuti)->result_array();

        $id_user = $this->session->userdata('id_user');
        $this->load->library('pdf');
    
        $this->pdf->setPaper('Letter', 'potrait');
        $this->pdf->set_option('isRemoteEnabled', true);
        $this->pdf->filename = "surat-cuti.pdf";
        $this->pdf->load_view('laporan_pdf', $data);
    
    
    }

    // public function pdf(){
	// 	$this->load->library('dompdf_gen');

    //     $data['pegawai'] = $this->m_cuti->tampil_data('view_pegawai')->result();

    //     $this->load->view('laporan_pdf', $data);

    //     $paper_size = 'A4';
    //     $orientation = 'landscape';
    //     $html = $this->output->get_output();
    //     $this->dompdf->get_paper($paper_size, $orientation);

    //     $this->dompdf->load_html($html);
    //     $this->dompdf->render();
    //     $this->dompdf->stream("laporan_pdf.php", array('Attachment' =>0));
	// }
    
}