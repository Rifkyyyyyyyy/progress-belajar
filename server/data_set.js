const express = require('express');
const cors = require('cors');

class BelajarHttp {
    constructor() {
        this.port = 29291;
        this.port2 = 29221;
        this.app = express();
        this.app.use(cors());
        this.index = 0;
        this.nama = 'admin';
        this.catatan = 'admin';
        this.data = [{ index: this.index , nama: this.nama, catatan: this.catatan }];
    }

    MethodGet() {
        this.app.get('/dapatkan', (req, res) => {
            try {
                if (res.statusCode === 200) {
                    const filteredData = this.data.filter(item => Object.keys(item).length > 0);
    
                    return res.json({ data: filteredData });
                } else {
                    throw new Error('eror cuy');
                }
            } catch (e) {
                return res.status(400).json({ message: 'Server error', error: e.message });
            }
        });
    }
    

    MethodPost() {
        this.app.use(express.json());

        this.app.post('/masukan', (req, res) => {
            try {
                const {index , nama, catatan  } = req.body;
                this.data.push({ index ,nama, catatan });
                res.json({ message: 'Data berhasil dimasukkan', data: this.data });
            } catch (e) {
                return res.status(400).json({ success: false, message: e.message });
            }
        });
    }

    StartServers() {
        this.MethodPost();
        this.MethodGet();

        this.app.listen(this.port, () => {
            console.log(`server 1 berjalan di port ${this.port}`);
        });

        this.app.listen(this.port2, () => {
            console.log(`server 2 berjalan di port ${this.port2}`);
        });
    }
}

const aiueo = new BelajarHttp();
aiueo.StartServers();
