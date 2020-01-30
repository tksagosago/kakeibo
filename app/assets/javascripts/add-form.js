$(function(){
  $(document).on('change', '#ex_sub', function(){
    var subject_value = document.getElementById('ex_sub').value;
    if (subject_value == 'その他' || subject_value == '課金'){
      $(".hidden").removeClass("hidden");
    } else{
      $(".app_new__contents__right__bottom__contents__spending__form__other__form").addClass("hidden");
    }
  });
 });