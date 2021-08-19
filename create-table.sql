CREATE TABLE barang
(
    id INT NOT NULL,
    nama_barang VARCHAR(100) NOT NULL, 
    kode_barang INT NOT NULL,
    deskripsi TEXT NOT NULL,
    harga INT NOT NULL DEFAULT 0,
    jumlah INT NOT NULL DEFAULT 0,
    waktu_dibuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)
ENGINE = InnoDB;

SHOW TABLES;
DESCRIBE barang;

ALTER TABLE barang
ADD column deskripsi TEXT;

ALTER TABLE barang
ADD column contoh_salah TEXT;

ALTER TABLE barang
DROP column contoh_salah;

ALTER TABLE barang
MODIFY nama VARCHAR(200) AFTER deskripsi;

ALTER TABLE barang
MODIFY nama VARCHAR(200) FIRST;

ALTER TABLE barang
MODIFY nama VARCHAR(200) NOT NULL;