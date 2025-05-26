
# **DevOps Bootcamp Projesi**  
## *AWS Tabanlı Portföy Web Sitesi Dağıtımı*

Bu proje, **AytiTech DevOps Bootcamp** kapsamında geliştirilmiştir. Amaç, statik bir portföy web sitesini Linux ortamında çalıştırmak, AWS servisleri (EBS ve Ağ Arayüzü) ile entegre etmek ve Bash script + Crontab kullanarak otomasyon sağlamaktır.

---

##  **Proje Özeti**

### Hazır Portföy Kurulumu
- GitHub’daki `onepage` şablonu klonlandı.
- Web sitesi yerel Linux makinede servis edildi.

### AWS Altyapı Yapılandırması
- EC2 instancelara **EBS diski** eklendi.
- Statik IP’ye sahip yeni bir **Network Interface** oluşturuldu.
- **Route Table** ayarlanarak yönlendirme yapıldı.

### Disk Biçimlendirme ve Montaj
- EBS diski tek partition olarak biçimlendirildi.
- `/var/www/html` dizinine `systemd` ile otomatik mount edildi.

---

## **Otomasyon Script İşlevi**

Yazılan Bash script aşağıdaki işlemleri gerçekleştirdi:

1. **`/tmp` Klasörüne Repo Klonlama**
   - `/tmp/onepage` klasörü var mı kontrol edilir.
   - Yoksa GitHub'dan repo klonlanır (çünkü reboot sonrası `/tmp` silinir).
  
2. **Değişiklikleri Çekme**
   - Klasöre girilir, `git pull` ile son güncellemeler alınır.

3. **İçerik Güncelleme**
   - `index.html` içindeki `"ISIM"` gerçek ad ile değiştirilir.
   - `"EPOSTA"` kısmı kişisel e-posta ile değiştirilir.

4. **Web Dizinine Kopyalama**
   - `onepage` klasöründeki tüm dosyalar `/var/www/html` dizinine kopyalanır. Aynı dosyalar varsa üzerine yazılır.

---

## **Crontab ile Otomasyon**

- Script `crontab` ile belirli aralıklarla çalışacak şekilde zamanlandı.

---

## **Git İş Akışı ve İşbirliği**

- Arkaplan resmi değişikliği için **yeni branch** oluşturuldu.
- Değişiklikler push edilip **Pull Request** açıldı.
- **Issue** kullanılarak iş takibi yapıldı.
- Ana branch'e başarıyla merge edildi.

---

## **Web Sunucusu Yapılandırması**

- **Apache (httpd)** kurulup yapılandırıldı.
- Yerel IP ile sayfaya erişim sağlandı.

---

## **Kullanılan Teknolojiler**

| Araç | Amaç |
|------|------|
| Git & GitHub | Versiyon Kontrolü & İşbirliği |
| Linux (Bash, Crontab, Systemd) | Otomasyon & Sistem Yönetimi |
| Apache HTTP Server | Web Hosting |
| AWS EC2, EBS, ENI | Bulut Altyapısı |
| HTML/CSS | Web Özelleştirme |

---

# **DevOps Bootcamp Project**  
## *AWS-Based Portfolio Website Deployment*

This project was developed as part of the **AytiTech DevOps Bootcamp**. The main goal was to deploy a static portfolio website on a Linux-based environment, integrate AWS services such as EBS and Network Interface, and automate deployment using Bash scripting and Crontab.

---

## **Project Overview**

### Ready-Made Portfolio Setup
- Cloned a pre-built portfolio template (`onepage`) from GitHub.
- Served the website locally on a Linux machine.

### AWS Infrastructure Setup
- Attached an additional **EBS volume** to an EC2 instance.
- Created and assigned a new **Network Interface** with a static IP address.
- Configured **Route Table** to enable proper access.

### Disk Partitioning & Mounting
- Formatted the EBS volume into a single partition.
- Mounted it to `/var/www/html` using a `systemd` unit file for persistent access.

---

## **Automation Script Functionality**

A Bash script was written to handle:

1. **Cloning the Repository to `/tmp`**
   - Checks if `/tmp/onepage` exists.
   - If not, clones the repo from GitHub (since `/tmp` is wiped on reboot).
  
2. **Pulling Remote Changes**
   - Navigates into the folder and pulls the latest updates using `git pull`.

3. **Modifying Content**
   - Replaces `"ISIM"` with the actual name.
   - Replaces `"EPOSTA"` with a personal email in `index.html`.

4. **Copying to Web Directory**
   - Copies all files from `onepage` into `/var/www/html`, replacing existing files if necessary.

---

## **Crontab Automation**

- The script was scheduled using `crontab` to run at defined intervals for continuous synchronization and update.

---

## **Git Workflow and Collaboration**

- Created a **new branch** to update the background image.
- Pushed changes and opened a **Pull Request** on GitHub.
- Utilized **Issues** for task tracking and collaboration.
- Successfully merged changes into the main branch.

---

## **Web Server Configuration**

- Installed and configured **Apache (httpd)**.
- Verified website accessibility using the machine’s local IP address.

---

## **Technologies Used**

| Tool | Purpose |
|------|---------|
| Git & GitHub | Version Control & Collaboration |
| Linux (Bash, Crontab, Systemd) | Automation & System Management |
| Apache HTTP Server | Static Website Hosting |
| AWS EC2, EBS, ENI | Cloud Infrastructure |
| HTML/CSS | Website Customization |
