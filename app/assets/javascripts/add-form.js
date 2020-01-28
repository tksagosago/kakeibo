$(function(){
  $(document).on('change', '#ex_sub', function(){
    var subject_value = document.getElementById('ex_sub').value;
    if (subject_value == 'その他' || subject_value == '課金'){
      console.log("aaa")
      $(".hidden").removeClass("hidden");
      
    }
  });
 });