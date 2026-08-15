// váriaveis
// strings
str = "Javascript";
str.length; // tamanho
stre.charAt(0); // retorna o caractere na posição 0

str.slice(0, 4); // retorna uma parte da string do índice 0 até o índice 4 (não incluso)
str.split(" "); // divide a string usando o espaço como separador

// valores
var x = 1;
x += 10; // soma 10 no x
console.log(x); // 11

var x = 4;
x -= 2; // tira 2 no x
console.log(x); // 2
var y = x ** 2 // eleva o valor de x ao quadrado
console.log(y); // 4

// operadores lógicos 
// booleanos - TRUE ou FALSE
// and - e - &&
var a1 = true&&true; 
console.log(a1); // true
var a2 = true&&false; 
console.log(a2);// false

// or - ou - ||
var a1 = true||false;
console.log(a1); // true

// condicional - if
let pecaPreco = 10;
let pecas = prompt("Qual a quantidade de peças encomendadas?"); // vai pedir pro usuário digitar a quantidade de peças
if (pecas > 0) {
    let total = pecaPreco * pecas;
    console.log(total);
}


let seEstaPronto = confirm("Está pronto?"); // vai pedir pro usuário confirmar se está pronto 
if (seEstaPronto) {
    console.log("Usuário pronto");
} else{
    console.log("Usuário não está pronto");
}



let idade = prompt("Qual a sua idade?"); 
if(idade <= 11) { 
    alert("Você é uma criança");
}
else if(idade>11 && idade<=14) {    
    alert("Você é adolescente");
} else if(idade>21 && idade<=60) { 
    alert("Você é adulto");
} else {
    alert("Você é idoso");
}



let estado = prompt("QUAL SEU ESTADO?");
switch(estado) {
    case "RS":
        alert("Rio Grande do Sul");
        break;
    case "SC":
        alert("Santa catarina");
        break;
    default:
        alert("Não mé um estado válido");
}

// laços de repetição 
// for
for (let i = 0; i < 20; i++) {
    console.log(i);
} // vai imprimir de 0 a 19

for (let i = 0; i < 5; i++) {
    console.log(i);
} // 0 1 2 3 4

for (let i = 1; i < 5; i++) {
    console.log(i);
} // 1 2 3 4

// while
let num = 1;
while (num <= 90) {
    console.log(num);
    num+=10; 
}
// vai imprimir de 1 a 90, pulando de 10 em 10

let num = 0;
while (num <= 90) {
    console.log(num);
    num+=20;
}
// vai imprimir de 0 a 90, pulando de 20 em 20

let continua = false;
let contador =  1;
while(!continua) { // enquanto continua for falso, vai continuar o loop
    continua = !confirm(`[${contador++}] Mais um loop?`);
}

let num = 0;
do {
    console.log(num);
    num+=10;
} while (num <= 90);

