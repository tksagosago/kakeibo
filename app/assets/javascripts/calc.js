$(function(){
  $('#input2').change(function() {
    var inp1 = $('#input1').val();
    var inp2 = $('#input2').val();

    var inp1_i = parseInt(inp1);
    var inp2_i = parseInt(inp2);
  
    var result = inp1_i + inp2_i;

    $("#app_new__contents__right__calc__input3").html(result);
  });
 });