<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Surat Cuti</title>
</head>

<body>

    <?php

$id = 0;
foreach($cuti as $i)
:
$id++;
$id_cuti = $i['id_cuti'];
$id_user = $i['id_user'];
$nama_lengkap = $i['nama_lengkap'];
$alasan = $i['alasan'];
// $nip = $i['nip'];
// $pangkat = $i['pangkat'];
// $jabatan = $i['jabatan'];
// $perihal_cuti = $i['perihal_cuti'];
$tgl_diajukan = $i['tgl_diajukan'];
$mulai = $i['mulai'];
$berakhir = $i['berakhir'];
$id_status_cuti = $i['id_status_cuti'];

?>

    <?php endforeach; ?>
</body>

</html>