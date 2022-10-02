USE kimia_farma;

-- create base table
CREATE TABLE base_table AS(
SELECT
 CONCAT(a.id_invoice,a.id_barang) AS id_penjualan,
 c.id_customer,
 a.id_invoice,
 a.id_distributor,
 str_to_date(a.tanggal, "%d/%m/%Y") tanggal,
 a.brand_id,
 b.lini,
 a.id_barang,
 b.nama_barang,
 b.nama_tipe,
 a.jumlah_barang,
 b.kemasan,
 a.harga,
 a.unit,
 a.id_cabang,
 c.nama,
 c.level,
 c.cabang_sales,
 c.group AS grup
FROM penjualan AS a
LEFT JOIN barang AS b ON a.id_barang = b.kode_barang
LEFT JOIN pelanggan AS c ON a.id_customer = c.id_customer
);

-- determine Primary Key
ALTER TABLE base_table ADD PRIMARY KEY(id_penjualan);

