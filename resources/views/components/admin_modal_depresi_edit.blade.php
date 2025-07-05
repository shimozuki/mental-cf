<!-- Modal Edit depresi -->
<div class="modal fade modal-fullscreen-md-down" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Ubah Kriteria</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        {{-- form --}}
        <form id="edit-depresi" action="" method="post">
          @method("put")
          @csrf
          <div class="input-form d-flex">
            <input type="hidden" name="id" id="id_kriteria">
            <div class="form-floating mb-3 p-2 mx-2">
              <input type="text" class="form-control" id="kode_kriteria" name="kode_kriteria" readonly>
              <label for="kode_kriteria">Kode Kriteria</label>
            </div>
            <div class="form-floating mb-3 p-2 mx-2">
              <input type="text" class="form-control" id="nama_kriteria" name="nama_kriteria">
              <label for="nama_kriteria">Nama Kriteria</label>
            </div>
          </div>
          <button type="submit" class="btn btn-primary">ubah</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
{{-- end modal edit depresi --}}

{{-- modal tambah depresi --}}
<div class="modal fade modal-fullscreen-md-down" id="depresiModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Tambah Kriteria</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        {{-- form edit --}}
        <form id="tambah-depresi" action="{{ route('depresi.store') }}" method="post">
          @csrf
          <div class="input-form d-flex">
            <input type="hidden" name="id" id="id_kriteria">
            <div class="form-floating mb-3 p-2 mx-2">
              <input type="text" class="form-control" id="kode_kriteria" name="kode_kriteria" placeholder="kode kriteria" required>
              <label for="kode_kriteria">Kode Kriteria</label>
            </div>
            <div class="form-floating mb-3 p-2 mx-2">
              <input type="text" class="form-control" id="nama_kriteria" name="nama_kriteria" placeholder="nama kriteria" required>
              <label for="nama_kriteria">Nama Kriteria</label>
            </div>
          </div>
          <button type="submit" class="btn btn-primary">simpan</button>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
{{-- end modal tambah depresi --}}

<script>
  function updateInput(id, kode, nama) {
    document.getElementById("kode_kriteria").value = kode;
    document.getElementById("nama_kriteria").value = nama;
    document.getElementById("id_kriteria").value = id;
  }

  function actionUbahdepresi(params) {
    const form = document.getElementById('edit-depresi');
    form.setAttribute('action', params);
    form.setAttribute('method', 'POST');
    console.log(form);
  }
</script>