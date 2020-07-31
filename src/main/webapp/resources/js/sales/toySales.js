function changeToySelect() {
    const selectedValue = document.getElementById("toy-sales-option").value;
    document.getElementById("toy-sales-color").innerHTML = "고르신 색깔 : " + selectedValue;
}

function addToys() {
    var foo = document.getElementById("number-of-toy").innerHTML;
    foo++;
    document.getElementById("number-of-toy").innerHTML = foo;
    document.getElementById("total-toy-prices").innerHTML = foo * 10000;
}

function absToys() {
    var foo = document.getElementById("number-of-toy").innerHTML;
    foo--;
    if (foo < 0) foo = 0;
    document.getElementById("number-of-toy").innerHTML = foo;
    document.getElementById("total-toy-prices").innerHTML = foo * 10000;
}
