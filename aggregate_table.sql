-- create aggregate table 
CREATE TABLE aggregate_table AS(
SELECT
	id_penjualan,
	id_invoice,
	tanggal,
	id_customer,
	id_barang,
	nama_barang AS barang,
	jumlah_barang,
	harga,
    kemasan,
    nama_tipe,
    id_cabang,
	nama AS customer,
	cabang_sales AS kota_cabang,
	id_distributor,
    grup AS group_customer,
	brand_id,
	SUM(jumlah_barang * harga) AS total_sales
FROM base_table
GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16
);
