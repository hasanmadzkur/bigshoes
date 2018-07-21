<?php 
session_start();
include 'koneksi.php';
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>login pelanggan</title>
	<link rel="stylesheet"  href="admin/assets/css/bootstrap.css">
</head>
<body>

<!--navbar-->
<nav class="navbar navbar-default">
	<div class="container">

		<ul class="nav navbar-nav">
			<li><a href="index.php">Home</a></li>
			<li><a href="keranjang.php">Keranjang</a></li>
			<!--jika sudah login-->
			<?php if (isset($_SESSION["pelanggan"])): ?>
				<li><a href="logout.php">Logout</li>
			<!--jika belom login-->
			<?php else: ?>
				<li><a href="login.php">Login</li>
			<?php endif ?>
			
			<li><a href="checkout.php">Checkout</a></li>
		</ul>
	</div>
</nav>

<div class="container">
	<div class="row">
		<div class="col-md-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Login Pelanggan</h3>
				</div>
				<div class="panel-body">
					<form method="post">
						<div class="form-group">
							<label>Email</label>
							<input type="email" class="form-control" name="email">
						</div>
						<div class="form-group">
							<label>Password</label>
							<input type="password" class="form-control" name="password">
						</div>
						<button class="btn btn-primary" name="login">Login</button>
					</form>
				</div>
			</div>
		</div>
		
	</div>
</div>

<?php 
//jk ada tombol simpan(tombol simpan ditekan)
if (isset($_POST["login"])) 
{
	$email = $_POST["email"];
	$password = $_POST["password"];
	//lakukan query ngecek akun di tabel pelanggan di database
	$ambil = $koneksi->query("SELECT * FROM pelanggan WHERE email_pelanggan='$email' AND password_pelanggan='$password'");
	//hitung akun yang terambil
	$akunyangcocok = $ambil->num_rows;
	//jika 1 aku yang cocok, maka bisa loin
	if ($akunyangcocok==1) 
	{
		//sudah login
		//ingin mendapatkan akun dalam bentuk array
		$akun = $ambil->fetch_assoc();
		//simpan di session pelanggan
		$_SESSION["pelanggan"] = $akun;
		echo "<script>alert('Login Sukses');</script>";
		echo "<script>location='checkout.php';</script>";
	}
	else
	{
		//gagal login
		echo "<script>alert('Login Gagal');</script>";
		echo "<script>location='login.php';</script>";
	}
}
 ?>

</body>
</html>