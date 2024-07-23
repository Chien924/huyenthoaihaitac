clear; printf "\n
Sau khi cài đặt, mọi quyền hạn và tính năng của Termux sẽ thuộc về HuyenThoaiHaiTac\n
Ví dụ như bạn không thể apt install bất kì cái gì, kể cả dpkg\n\n
Nếu bạn muốn quay về ban đầu, hãy cài đặt lại Termux\n\n
- Bạn có muốn tiếp tục? [Y/N]\n\n"; 
read -p "Lựa chọn: " yesorno; if [[ $yesorno == "Y" ]] || [[ $yesorno == "y" ]]; then printf "\n\n";
echo "Y" | termux-setup-storage &> /dev/null; url="https://raw.githubusercontent.com/KhanhNguyen9872/Ninja_Server_Termux/main";
cpu="$(getprop ro.product.cpu.abi)";
if [[ $cpu == "arm64-v8a" ]]; then archdeb="aarch64";
else if [[ $cpu == "armeabi-v7a" ]] || [[ $cpu == "armeabi" ]]; then archdeb="arm"; url="${url}/bin32";
else if [[ $cpu == "x86_64" ]]; then archdeb="x64"; url="${url}/binx64"; else printf "\n
Không hổ trợ x86 - 32bit!\n\n";
exit 0; fi; fi; fi; clear; printf "\nDownloading package....\n\n";
curl -L --max-redirs 15 --progress-bar "https://github.com/KhanhNguyen9872/Ninja_Server_Termux/releases/download/ninja-server-dev/ninja-server-dev_${archdeb}.deb" --output ninja-server-dev.deb || exit 0; echo "Y" | dpkg -i --force-overwrite ninja-server-dev.deb; curl -L --max-redirs 15 --progress-bar "${url}/install.sh" --output install.sh || exit 0; chmod 777 ./install.sh; ./install.sh https://fb.me/khanh10a1; fi
