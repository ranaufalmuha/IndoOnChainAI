# Proyek IndoOnChainAI

Selamat datang di proyek **IndoOnChainAI**! Proyek ini merupakan aplikasi yang mengintegrasikan model AI untuk memberikan respons yang relevan berdasarkan input pengguna. Berikut adalah panduan untuk memulai dan informasi tentang cara mengakses backend.

## Prerequisites

Sebelum memulai, pastikan Anda telah menginstal [Node.js](https://nodejs.org/) dan [DFX](https://internetcomputer.org/docs/current/developers-guide/dfx/).

## Instalasi

1. **Buat API key di Gemini AI**: Kunjungi [Gemini AI](https://generativelanguage.googleapis.com/) untuk membuat API key yang diperlukan untuk mengakses model.

2. **Clone repository ini:**
   bash git clone https://github.com/ranaufalmuha/IndoOnChainAI

3. **Instal dependensi:**
   bash npm install

## Menjalankan Aplikasi

1. **Mulai DFX:**
   bash dfx start --clean

2. **Deploy aplikasi:**
   bash dfx deploy

3. **Jalankan frontend secara live:**
   bash npm start

## Mengakses Backend di Candid

Setelah backend berjalan, Anda dapat mengaksesnya melalui Candid. Berikut adalah penjelasan tentang output yang dihasilkan:

### 1. Candidates

Bagian ini berisi daftar kandidat respons yang dihasilkan oleh model. Dalam kasus ini, hanya ada satu kandidat.

### 2. Content

Ini adalah bagian yang berisi konten dari respons yang dihasilkan oleh model.

- **Parts**
  - Ini adalah array yang berisi bagian-bagian dari respons. Dalam hal ini, hanya ada satu bagian.
- **Text**
  - Ini adalah teks yang dihasilkan oleh model. Contoh: "Ya, saya dapat berbahasa Indonesia."

### 3. Role

Menunjukkan peran dari model dalam konteks ini. Dalam hal ini, peran tersebut adalah "model", yang berarti bahwa respons ini dihasilkan oleh model AI.

### 4. Finish Reason

Menunjukkan alasan mengapa model berhenti memberikan respons. Dalam hal ini, "STOP" menunjukkan bahwa model telah menyelesaikan responsnya dengan normal.

### 5. Index

Menunjukkan indeks dari kandidat dalam daftar kandidat. Dalam hal ini, indeksnya adalah 0, yang berarti ini adalah kandidat pertama (dan satu-satunya) dalam daftar.

### 6. Safety Ratings

Bagian ini memberikan informasi tentang penilaian keamanan dari respons yang dihasilkan. Ini mencakup beberapa kategori:

- **HARM_CATEGORY_SEXUALLY_EXPLICIT**

  - Menunjukkan kemungkinan bahwa respons mengandung konten seksual eksplisit. Probabilitasnya adalah "NEGLIGIBLE" (tidak signifikan).

- **HARM_CATEGORY_HATE_SPEECH**

  - Menunjukkan kemungkinan bahwa respons mengandung ujaran kebencian. Probabilitasnya juga "NEGLIGIBLE".

- **HARM_CATEGORY_HARASSMENT**

  - Menunjukkan kemungkinan bahwa respons mengandung pelecehan. Probabilitasnya adalah "NEGLIGIBLE".

- **HARM_CATEGORY_DANGEROUS_CONTENT**
  - Menunjukkan kemungkinan bahwa respons mengandung konten berbahaya. Probabilitasnya juga "NEGLIGIBLE".

### 7. Usage Metadata

Bagian ini memberikan informasi tentang penggunaan token dalam permintaan dan respons:

- **Prompt Token Count**

  - Jumlah token yang digunakan dalam prompt (pertanyaan yang Anda kirimkan). Dalam hal ini, ada 8 token.

- **Candidates Token Count**

  - Jumlah token yang digunakan dalam kandidat respons. Dalam hal ini, ada 8 token.

- **Total Token Count**
  - Total jumlah token yang digunakan dalam permintaan dan respons. Dalam hal ini, totalnya adalah 16 token.

### 8. Model Version

Menunjukkan versi model yang digunakan untuk menghasilkan respons. Dalam hal ini, versi modelnya adalah "gemini-pro".

## Kontribusi

Jika Anda ingin berkontribusi pada proyek ini, silakan buat pull request atau buka isu untuk diskusi.

## Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).

---

Terima kasih telah menggunakan **IndoOnChainAI**!
