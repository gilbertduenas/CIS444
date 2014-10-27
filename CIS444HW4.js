function checkInput(){
  if(apple.value < 0 || apple.value > 99){
    alert("You have entered an invalid amount. Please enter a number from 0 to 99.");
    return false;
  }
  if(orange.value < 0 || orange.value > 99){
    alert("You have entered an invalid amount. Please enter a number from 0 to 99.");
    return false;
  }
  if(banana.value < 0 || banana.value > 99){
    alert("You have entered an invalid amount. Please enter a number from 0 to 99.");
    return false;
  }
  return true;
}
 
function calculateTotal(){
  var apple = document.getElementById('apple');
  var orange = document.getElementById('orange');
  var banana = document.getElementById('banana');

  var totalCost = (apple.value * 0.59 + orange.value * 0.49 + banana.value * 0.39) * 1.05;
  var finalCost = parseFloat(totalCost).toFixed(2);
  alert("Your total cost is $" + finalCost + ", including 5% sales tax");
  return false;
}