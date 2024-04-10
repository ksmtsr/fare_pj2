document.addEventListener("turbo:load", () => {
  const addFieldBtn = document.querySelector(".add-row");
  const additionalFields = document.getElementById("additional-fields");

  addFieldBtn.addEventListener("click", () => {
    const newField = document.createElement("div");
    newField.innerHTML = `
      <div class="row mb-2 gy-2 gx-3">
        <div class="col-auto">
          <input type="date" name="fare[date]" class="form-control" required="true">
        </div>
        <div class="col-auto">
          <div class="input-group">
            <input type="text" name="fare[routeA]" class="form-control" required="true">
            <div class="input-group-text">〜</div>
            <input type="text" name="fare[routeB]" class="form-control" required="true">
          </div>
        </div>
        <div class="col-auto">
          <select name="fare[transportation]" class="form-select" required="true">
            <option value="" disabled selected>選択して下さい</option>
            <option value="電車">電車</option>
            <option value="バス">バス</option>
            <option value="新幹線">新幹線</option>
            <option value="タクシー">タクシー</option>
          </select>
        </div>
        <div class="col-auto">
          <input type="number" name="fare[amount]" class="form-control" required="true" min="0">
        </div>
        <div class="col-auto">
          <input type="text" name="fare[remarks]" class="form-control">
        </div>
        <div class="col-auto">
          <button type="button" class="btn btn-danger remove-row">×</button>
        </div>
      </div>
    `;
    additionalFields.appendChild(newField);
  });

  additionalFields.addEventListener("click", (event) => {
    if (event.target.classList.contains("remove-row")) {
      event.target.closest(".row").remove();
    }
  });
});
