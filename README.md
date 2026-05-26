<p align="center">

<img src="https://img.shields.io/badge/PySpark-E25A1C?style=for-the-badge&logo=apachespark&logoColor=white"/>
<img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white"/>
<img src="https://img.shields.io/badge/SQL-Database-blue?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Data%20Warehouse-Dimensional%20Modeling-success?style=for-the-badge"/>
<img src="https://img.shields.io/badge/JDBC-Connection-orange?style=for-the-badge"/>

</p>

---

## 📌 Gambaran Proyek

Proyek ini bertujuan membangun **Data Warehouse E-Commerce** menggunakan **PySpark** dan **PostgreSQL** untuk mengelola data ke dalam bentuk yang lebih terstruktur dan siap digunakan untuk kebutuhan analisis.

Proses dilakukan melalui transformasi data mentah menjadi **fact table** dan **dimension table**, kemudian dimuat ke **PostgreSQL local database** menggunakan **JDBC connection** dari PySpark.

Data warehouse yang dibangun menggunakan pendekatan **dimensional modeling** untuk membantu pengelolaan data yang lebih terorganisir dan mempermudah proses analisis data bisnis.

---

## 🎯 Tujuan Proyek

- Melakukan transformasi data e-commerce menggunakan **PySpark**  
- Membangun struktur **Data Warehouse** menggunakan pendekatan dimensional modeling  
- Membuat **fact table** dan **dimension table** untuk kebutuhan analisis data  
- Memuat hasil transformasi data ke **PostgreSQL local database** menggunakan **JDBC connection**  
- Menyiapkan data yang lebih terstruktur untuk kebutuhan analisis bisnis  

---

## 🛠 Tech Stack

| Tools | Fungsi |
|--------|--------|
| PySpark | Transformasi dan pemrosesan data |
| PostgreSQL | Penyimpanan data warehouse |
| SQL | Query database dan validasi data |
| JDBC | Koneksi PySpark ke PostgreSQL |
| Python | Bahasa pemrograman utama |

---

## ⚙️ Alur Pengerjaan

1. Membaca dataset e-commerce menggunakan **PySpark**  
2. Melakukan transformasi dan pembersihan data  
3. Membentuk struktur **fact table** dan **dimension table**  
4. Memuat data ke **PostgreSQL local database** menggunakan **JDBC connection**  
5. Melakukan validasi hasil load data menggunakan query SQL  
6. Menyiapkan data warehouse untuk kebutuhan analisis bisnis

---

## 📦 Struktur Data Warehouse

Data warehouse dibangun menggunakan pendekatan **fact & dimension table**:

| Table | Deskripsi |
|--------|------------|
| dim_users | Informasi pengguna |
| dim_products | Informasi produk |
| dim_orders | Informasi transaksi pesanan |
| fact_order_items | Data transaksi utama |

---

## ▶️ Cara Menjalankan

1. Jalankan environment **PySpark**  
2. Load dataset e-commerce  
3. Jalankan proses transformasi data  
4. Hubungkan PySpark ke **PostgreSQL local database** menggunakan **JDBC connection**  
5. Jalankan proses load data warehouse  
6. Validasi hasil load menggunakan query SQL

---

## 📈 Hasil Proyek

Proyek berhasil melakukan transformasi data e-commerce menjadi struktur **Data Warehouse** menggunakan pendekatan **fact & dimension table**. Hasil transformasi kemudian dimuat ke **PostgreSQL local database** menggunakan koneksi **JDBC** dari PySpark untuk mendukung kebutuhan analisis data yang lebih terstruktur.

---

## 👨‍💻 Author

**Mardi Wicaksana**  
Data Analyst Enthusiast | Data Warehouse | PySpark | SQL | PostgreSQL