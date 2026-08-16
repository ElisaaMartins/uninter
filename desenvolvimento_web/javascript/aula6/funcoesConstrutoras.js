// funções contrutoras
const carro = { // objeto carro possui as propriedades marca e preco
    marca: 'Marca' ,
    preco: 0,
}

const honda = carro; // honda recebe o objeto carro - honda e carro apontam para o mesmo objeto na memória
honda.marca = 'Honda ';
honda.preco = 244000;

const nissan = carro;
nissan.marca = 'Nissan' ;
nissan.preco = 120000;

// console.lo(honda.marca); // Nissan e não Honda

// por isso Função construtora
function Carro () {
    // "this" representa o NOVO objeto que será criado.
    this.marca = 'Marca';     // Todo novo carro começará com a marca "Marca"
    this.preco = 0;          // Todo novo carro começará com o preço 0
}

const honda = new Carro (); // new cria um novo objeto do tipo Carro, com as propriedades marca e preco
honda.marca = 'Honda' ;
honda.preco = 244000;

const fiat = new Carro () ;
fiat.marca = 'Nissan';
fiat.preco = 120000;