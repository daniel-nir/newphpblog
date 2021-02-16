$("#image").on("change", function (e) {
  $(".custom-file-label").text(e.target.files[0].name);
});
