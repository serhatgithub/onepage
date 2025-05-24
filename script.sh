#!/usr/bin/bash

if [ -d /tmp/onepage ]; then
    echo "Proje mevcut"
    cd /tmp/onepage
    git reset --hard origin/main
    git pull
else
    echo "Proje yok. Cloneluyorum"
    git clone https://github.com/serhatgithub/onepage.git
    cd /tmp/onepage
fi

echo "-------"
echo "index.html içerisinde değişiklik yapıyorum"
sed -i 's/ISIM/Serhat/g' index.html && sed -i 's/EPOSTA/stekin010@gmail.com/g' index.html
echo "değişikliler tamamlandı"

echo "-------"

echo "dosyaları /var/www/html adresine kopyalıyorum"
sudo cp -r -f ./* /var/www/html/
echo "dosyalar kopyalandı" 
