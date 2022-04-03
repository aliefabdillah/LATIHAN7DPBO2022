<?php 

class Task extends DB{
	
	// Mengambil data
	function getTask(){
		// Query mysql select data ke tb_to_do
		$query = "SELECT * FROM tb_to_do";

		// Mengeksekusi query
		return $this->execute($query);
	}

	//function add
	function addData(){
		$name = $_POST['tname'];
		$deadline = $_POST['tdeadline'];
		$detail = $_POST['tdetails'];
		$subject = $_POST['tsubject'];
		$priority = $_POST['tpriority'];
		
		$query = "INSERT INTO tb_to_do (name_td, details_td, subject_td, priority_td, deadline_td, status_td) 
				  VALUES ('$name', '$detail', '$subject', '$priority', '$deadline', 'Belum')";
				
		return $this->execute($query);
	}
	
	//function delete
	function deleteData($key){
		$query = "DELETE from tb_to_do WHERE id = '$key'";

		return $this->execute($query);
	}

	//function updateStatus
	function updateStatus($key){
		$query = "UPDATE tb_to_do SET status_td = 'Sudah' WHERE id = '$key'";
		return $this->execute($query);
	}

	//function sorting
	function sortingData($keyword){
		$query = "SELECT * FROM tb_to_do ORDER BY $keyword ASC";
		return $this->execute($query);
	}
}

?>