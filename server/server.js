// Anda diminta untuk membuat aplikasi backend sederhana menggunakan Node.js untuk menyediakan API.
//  Aplikasi ini harus memiliki fungsi untuk menyimpan dan mengambil daftar catatan sederhana.
// Buatlah file server.js yang menggunakan Express.js untuk membuat server HTTP.
// Tentukan endpoint API untuk menambahkan catatan baru. Setiap catatan harus memiliki judul dan isi.
// Tentukan endpoint API untuk mendapatkan semua catatan yang telah disimpan.
// Implementasikan mekanisme penyimpanan data sederhana, misalnya menggunakan array JavaScript sebagai basis data.
// Pastikan server dapat menerima permintaan POST untuk menambahkan catatan baru dan permintaan GET untuk mendapatkan semua catatan.

const express = require('express');
const app = express();
const port = 29299;

app.use(express.json()); // Menambahkan middleware untuk mengenali data JSON

let list = [
    {nama : "rifky" , catatan : "aku pergi makan besok"} ,
    {nama : "oyen" , catatan : "aku akan nyolong ikan besok"}
]

app.post('/add' , (req , res) => {
    try {
      const {nama , catatan } = req.body;
      list.push({nama , catatan});
      console.log(`data berhasil ditambahkan ${list}`);
      return res.status(201).json({success: true, data: list});
    } catch (e) {
      return res.status(400).json({success: false, error: e.message});
    }
});

app.get('/data' , (req , res) => {
    try {
        return res.status(200).json({success: true, data: list});
    } catch(e) {
        console.log(`error ${e}`);
        return res.status(500).json({success: false, error: e.message});
    }
});

app.delete('/hapus:id' , (req , res) => {
    try {
        const id = parseInt(req.params.id)
    } catch (error) {
        
    }
})

app.listen(port, () => {
    console.log(`server running on port ${port}`);
});



