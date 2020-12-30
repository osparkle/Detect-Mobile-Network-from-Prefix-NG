<?php
/**
 * Nigerian Mobile Network Detector from Prefix
 *
 * Note that this script cannot detect if a phone number has been ported to other network
 * 
 * Before you run this file, Import the mobile_network_prefixes_ng.sql into your database
 * And modify the database connection ($db) below to your database settings
 *
 * @author Simeon Adedokun <femsimade@gmail.com>
 * @copyright (c) 2020, Simeon Adedokun
 * ====================================================
 * Last modified 30th December, 2020
 *
*/

// Edit the following line based on your database settings
$db = new mysqli("localhost","root","","database_name");

//$result = $db->query("SELECT * FROM mobile_network_prefixes_ng") or die($db->error);

function detectNetwork($phoneNo)
{
	GLOBAL $db; // call the global var $db (your database connection) in the function

	$phoneNo = (substr($phoneNo, 0, 1) == "+") ? substr($phoneNo, 1) : $phoneNo;// don't change - it removes +

	// don't change - it replaces 234 with 0
	$phoneNo = (substr($phoneNo, 0, 3) == "234") ? "0".substr($phoneNo, 3) :  $phoneNo;

	// remove one '0' in case a number starts with 00
	$phoneNo = (substr($phoneNo, 0, 2) == "00") ? substr($phoneNo, 1) : $phoneNo; 

	$get4Prefix = substr($phoneNo, 0, 4);//0806
	$get5Prefix = substr($phoneNo, 0, 5);//08060 because of some of the networks

	$foundNetwork = $db->query("SELECT network FROM mobile_network_prefixes_ng WHERE (prefix='".$get5Prefix."' OR prefix='".$get4Prefix."')") or die($db->error);

	$row = $foundNetwork->fetch_assoc();

	return $theNetwork = ($row) ? $row['network'] : false;
}


// Usage
$phoneNo = "08060530063";// Try 08060530063, 2348060530063, 23408060530063, 07028530063
$network = detectNetwork($phoneNo);
echo $network;//returns false (nothing) if network not found
?>