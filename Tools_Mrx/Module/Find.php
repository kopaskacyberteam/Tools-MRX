<?php
// Author Name : MRX.L0LZ404
// Information List : 4001 list
// contact here : Andreaferdyanzah32@gmail.com
// Fb : https://www.facebook.com/andrea.ferdyanzah.142
// greetz :Kopaska Cyber Team - IndoXploit - AnonCyberTeam - 99syndicate

print "   
	
 █████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗    ███████╗██╗███╗   ██╗██████╗ ███████╗██████╗ 
██╔══██╗██╔══██╗████╗ ████║██║████╗  ██║    ██╔════╝██║████╗  ██║██╔══██╗██╔════╝██╔══██╗
███████║██║  ██║██╔████╔██║██║██╔██╗ ██║    █████╗  ██║██╔██╗ ██║██║  ██║█████╗  ██████╔╝
██╔══██║██║  ██║██║╚██╔╝██║██║██║╚██╗██║    ██╔══╝  ██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗
██║  ██║██████╔╝██║ ╚═╝ ██║██║██║ ╚████║    ██║     ██║██║ ╚████║██████╔╝███████╗██║  ██║
╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝    ╚═╝     ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝
                                                                                         
                Admin Finder - Coded By ./MRX.L0LZ404
  Information List : 4001 list
  Thanks To  :Kopaska Cyber Team - IndoXploit - AnonCyberTeam - 99syndicate
";

echo "masukan target  : ";
$target = trim(fgets(STDIN));
$list = "mrxl0lz404_wordlist.txt";
if(!preg_match("/^http:\/\//",$target) AND !preg_match("/^https:\/\//",$target)){
	$targetnya = "http://$target";
}else{
	$targetnya = $target;
}

$buka = fopen("$list","r");
$ukuran = filesize("$list");
$baca = fread($buka,$ukuran);
$lists = explode("\r\n",$baca);

foreach($lists as $login){
	$log = "$targetnya/$login";
	$ch = curl_init("$log");
	curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_exec($ch);
	$httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
	curl_close($ch);
	if($httpcode == 200){
		 $handle = fopen("result.txt", "a+");
		fwrite($handle, "$log\n");
		print "\n\n [".date('H:m:s')."] Mencoba : $log => Ditemukan\n";
	}else{
		print "\n[".date('H:m:s')."] Mencoba : $log => tidak di temukan";
	}
}
  
?>
