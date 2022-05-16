
<?php

// error_reporting(0);
session_start();

include '../fpdf/code128.php';

require_once("../login/session.php");
include('../login/db_connection_class.php');
$obj = new DB_Connection_Class();
$obj->connection();


class PDF extends PDF_Code128
{
// Page header
function Header()
{
 
    $this->setTopMargin(0);

    $this->SetFont('Arial','B',14);
    $this->setLeftMargin(0);
    $this->SetTextColor(0,0,0);

    $this->Cell(150,5,'বাংলাদেশ জ্বালানি ও বিদ্যুৎ গবেষণা কাউন্সিল (বিইপিআরসি)',"0","0",'L');
    $this->Ln(2);

    $this->Image('../img/beprc_logo2.png',10,16,15);

    $this->setLeftMargin(27);
    $this->Ln(7);
    $this->setTextColor(0,0,0);
    $this->SetFont('Arial','',10);
    $this->Cell(105,5,"Library Management System","0","0","L");
    $this->Ln(1);
    $this->SetFont('Arial','',8);
    $this->Cell(105,3,"Address","0","0","L");

    $this->Ln(3);
    $this->Cell(105,3,"Contact Info : (+8802) 9801012, 9801146 Visit us at www.eprc.gov.bd, ","0","0","L");
    // $this->Ln(1);
    // $this->SetFont('Arial','',8);
    $this->Ln(3);
    $this->Cell(50,3,"E-mail : ","0","0","L");
    // $this->setLeftMargin(5);
    // $this->Ln(4);
    // $this->Cell(170,0,"",1,0,"L");
    // $this->setTopMargin(3);

   
         // $this->SetFont('Arial','',16);
         // $this->Cell(0,6,'Symbol',0,1,'C');
        
    
   //  $this->SetCol(0);


$this->Ln(8);
$this->setLeftMargin(10);

}

// Page footer
function Footer()
{
    // Position at 1.5 cm from bottom
    $this->SetFont('Times','',6);
    $this->SetY(-8);    // Arial italic 8
    $this->SetTextColor(0,0,0);

    $this->SetFont('Arial','I',8);
    // Page number
    $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');

}
}

// Instanciation of inherited class
/*$pdf = new PDF('P','mm','A4');*/
$pdf=new PDF('P','mm','A4');
// $pdf=new PDF_Code128('P','mm',array(101.6,101.6));
$pdf->AliasNbPages();
$pdf->AddPage();

$pdf->Ln(0);
$pdf->setTopMargin(0);
$pdf->setLeftMargin(135);
$pdf->SetAutoPageBreak(true, 10);
$pdf->setTopMargin(10);

$pdf->Cell(60,-25,"Date of Publish:  ",0,0,'L');
$pdf->Ln(3);
$pdf->Cell(60,-20,'Date of Testing:  ',"0","0",'L');
// $pdf->SetFont('Arial','B',25);


$pdf->setLeftMargin(6);

$pdf->SetFont('Arial','',8);
$pdf->Ln(0);

$pdf->Ln(0);
$pdf->SetFont('Arial','B',14);
$pdf->Cell(120,5,"All Test Report - ","0","0","L");
$pdf->Ln(2);






ob_end_clean();

$pdf->Output('I', "all_test_for_process.pdf", true);
?>

?>
