<!-- Modal Edit Gejala -->
<div class="modal fade modal-fullscreen-md-down" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Ubah Gejala</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="edit-gejala" action="" method="post">
          @method('put')
          @csrf
          <input type="hidden" name="id" id="edit_id_gejala">

          <div class="mb-3">
            <label for="edit_kode_gejala" class="form-label">Kode Gejala</label>
            <input type="text" class="form-control" id="edit_kode_gejala" name="kode_gejala" readonly>
          </div>

          <div class="mb-3">
            <label for="edit_gejala" class="form-label">Gejala</label>
            <input type="text" class="form-control" id="edit_gejala" name="gejala">
          </div>

          <div class="mb-3">
            <label for="edit_rentang_usia" class="form-label">Rentang Usia</label>
            <select class="form-select" id="edit_rentang_usia" name="rentang_usia" required>
              <option value="" disabled>-- Pilih Rentang Usia --</option>
              <option value="4-10">4–10 Tahun</option>
              <option value="11-18">11–18 Tahun</option>
            </select>
          </div>

          <div class="mb-3">
            <label for="edit_kategori_sdq" class="form-label">Kategori SDQ</label>
            <select class="form-select" id="edit_kategori_sdq" name="kategori_sdq" required>
              <option value="" disabled>-- Pilih Kategori SDQ --</option>
              <option value="gejala_emosional">Gejala Emosional</option>
              <option value="masalah_prilaku">Masalah Perilaku</option>
              <option value="hiperaktivitas">Hiperaktivitas</option>
              <option value="teman">Masalah Teman</option>
              <option value="prososial">Perilaku Prososial</option>
            </select>
          </div>



          <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Ubah</button>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
{{-- end modal edit gejala --}}

{{-- modal tambah gejala --}}
<div class="modal fade modal-fullscreen-md-down" id="storeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Tambah Gejala</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="tambah-gejala" action="{{ route('gejala.store') }}" method="post">
          @csrf
          <input type="hidden" name="id" id="id_gejala">

          <div class="mb-3">
            <label for="kode-gejala" class="form-label">Kode Gejala</label>
            <input type="text" class="form-control" id="kode-gejala" name="kode_gejala" placeholder="Contoh: G001" required>
          </div>

          <div class="mb-3">
            <label for="gejala" class="form-label">Gejala</label>
            <input type="text" class="form-control" id="gejala" name="gejala" placeholder="Masukkan nama gejala" required>
          </div>

          <div class="mb-3">
            <label for="rentang_usia" class="form-label">Rentang Usia</label>
            <select class="form-select" id="rentang_usia" name="rentang_usia" required>
              <option value="" disabled selected>-- Pilih Rentang Usia --</option>
              <option value="4-10">4–10 Tahun</option>
              <option value="11-18">11–18 Tahun</option>
            </select>
          </div>

          <div class="mb-3">
            <label for="kategori_sdq" class="form-label">Kategori SDQ</label>
            <select class="form-select" id="kategori_sdq" name="kategori_sdq" required>
              <option value="" disabled selected>-- Pilih Kategori SDQ --</option>
              <option value="gejala_emosional">Gejala Emosional</option>
              <option value="masalah_prilaku">Masalah Perilaku</option>
              <option value="hiperaktivitas">Hiperaktivitas</option>
              <option value="teman">Masalah Teman</option>
              <option value="prososial">Perilaku Prososial</option>
            </select>
          </div>


          <div class="d-grid gap-2">
            <button type="submit" class="btn btn-primary">Simpan</button>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

{{-- end modal tambah gejala --}}

<script>
  function updateInput(idGejala, kode, gejala, rentangUsia, kategoriSDQ) {
    document.getElementById("edit_id_gejala").value = idGejala;
    document.getElementById("edit_kode_gejala").value = kode;
    document.getElementById("edit_gejala").value = gejala;
    document.getElementById("edit_rentang_usia").value = rentangUsia;
    document.getElementById("edit_kategori_sdq").value = kategoriSDQ;
  }



  function actionUbahGejala(params) {
    const formGejala = document.getElementById('edit-gejala');
    formGejala.setAttribute('action', params);
    formGejala.setAttribute('method', 'POST');
    console.log(formGejala);
  }
</script>