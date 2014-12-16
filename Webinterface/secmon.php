<?php
	$rootDir = '</pad/naar/configuratie/directory>';
	$files = scandir($rootDir);
	
?>

<html>
	<head>
		<title>
			Secmon Config Form
		</title>
	</head>
	<body>
		<center>
			<h3> 
				Security Monitor configuration form
			</h3>
			<?php
				if(isset($_POST['btnEdit']))
				{	
					if($_POST['fileList'] != '') 
					{
						$fileName = htmlspecialchars($_POST['fileList']);
						$selectedFile = $rootDir . '//' . $fileName;
					} else {
						echo '<center>';
						echo "Please select a file from dropdown list";
						echo '</center>';
					}
				}
				if(isset($_POST['btnSave']))
				{
					$fileName = htmlspecialchars($_POST['fileList']);
					$txtBoxAreaData = $_POST['txtBoxArea'];
					$selectedFile = $rootDir . '//' . $fileName;
					$openFile = fopen($selectedFile, "w");
					fwrite($openFile, $txtBoxAreaData);
					fclose($openFile);
				}
			?>
			<form action="" method="post">
			<textarea name="txtBoxArea" id="txtBoxArea01" rows="20" cols="50"><?php 
			if(isset($selectedFile))
			{
				include($selectedFile);
			}
			?></textarea>
			<?php
				echo '<br>Configurable files:<br>';
				echo '<select name="fileList">';
			?>
			<?php
				if($_POST['btnEdit'] == true ^ $_POST['btnSave'] == true)
				{ 
			?> 
				<option value="<?php echo $_POST['fileList']; ?>" selected="selected"><?php echo $_POST['fileList']; ?></option>
			<?php 
				} 
			?>
			<?php
				
				echo '<option value="">Select your file over here...</option>">'; 
				foreach($files as $filename) 
				{ 
					echo '<option value="' . urlencode($filename) . '">' .urlencode($filename) . '</option>'; 
				}
				echo '</select>';
			?>
			<input type="submit" name="btnEdit" value="Edit file">
			<input type="submit" name="btnSave" value="Save file">
			<input type="submit" name="btnCreate" value="Create new file">
			</form>
	</body>
</html>
