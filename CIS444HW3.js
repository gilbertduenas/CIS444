var input = prompt("Please enter a number less than 35: ");
 
var fibonacci = function(n){
    if(n==0){    
        return 0;
    }else if(n==1){    
        return 1;
    }else{    
        return fibonacci(n-1) + fibonacci(n-2);
    }
}

if(input>34){
    document.write("The number is too large.")
}else{
    document.write("<table>");
    document.write("<caption>Fibonacci Sequence</caption>");    
    document.write("<tr>", "<th>0 to n </th>", "<th>Fibonacci</th>");
    
    for(var i = 0; i<=input; i++){
        document.write("<tr>", "<td>");
        document.write(i)
        document.write("</td>");
        document.write("<td>");
        document.write(fibonacci(i));
        document.write("</td>", "</tr>");
    }

    document.write("</tr>", "</table>");
}