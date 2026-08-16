// funções -  sintaxe
function nome([param],[param],[...paramN]) {
    // instruções
}

// nome = nome da função
// param = o nome de um argumento a ser passado para a função

// exemplo de função
function olaMundo() {
    console.log("Olá");
    console.log("mundo");
}

olaMundo(); // chamando a função

// usando return
function mostrarMsg() {
console.log("mensagem A");
    return;
    console.log("mensagem B"); // não será executada, pois o return encerra a função
}

mostrarMsg();

// parametro da função
function somar(num1, num2) {
    return num1 + num2;
}
somar(35, 2);


// a função arrow (seta) é uma forma mais curta de escrever funções
let somar = (n1, n2) => n1 + n2;
console.log(somar(2, 3)); // 5