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