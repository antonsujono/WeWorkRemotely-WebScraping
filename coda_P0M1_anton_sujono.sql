-- Nama  : Anton Sujono --
-- Batch : CODA-RMT-021 --


-- Proses DDL (Data Definition Language)

-- Membuat database
CREATE DATABASE weworkremotely_db;

-- Membuat tabel remote_jobs
CREATE TABLE remote_jobs (
    id SERIAL PRIMARY KEY,
    judul_pekerjaan TEXT,
    nama_perusahaan TEXT,
    lokasi_region TEXT,
    link_detail TEXT
);

-- Proses DML (Data Manipulation Language)

-- Memasukkan data dari file CSV
COPY remote_jobs (
    judul_pekerjaan,
    nama_perusahaan,
    lokasi_region,
    link_detail
)
FROM 'C:\tmp\weworkremotely.com.csv'
DELIMITER ','
CSV HEADER;

-- Proses Validasi Data

-- Menampilkan seluruh data
SELECT *
FROM remote_jobs;

-- Menghitung jumlah data
SELECT COUNT(*)
FROM remote_jobs;