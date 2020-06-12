<?php
defined('BASEPATH') OR exit('no direct script access allowed');

function valid($message){
	return "<div style='color: #008000 !imprtant'>".$message."</div>";
}
function error($message){
	return "<div style='color: #008000 !imprtant'>".$message."</div>";
}
function valid_admin($message){
	return "<div style='color: #008000 !imprtant'>".$message."</div>";
}
function info_admin($message){
	return "<div style='color: #008000 !imprtant'>".$message."</div>";
}
function warning_admin($message){
	return "<div style='color: #008000 !imprtant'>".$message."</div>";
}
function error_admin($message){
	return "<div style='color: #008000 !imprtant'>".$message."</div>";
}
?>