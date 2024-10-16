void main() {
  /*
  int operacao = -4;
  Menu().run(operacao);
  
  var disparador = Disparador();
  disparador.recarregar(10);
  disparador.disparar();
  disparador.recarregar(3);
  disparador.dispararTodos();
  disparador.disparar();
  */
  var contador = CondeContador();
  contador.count(8,1);
}

class Menu {
  void run(int operacao) {
    switch (operacao) {
      case 1:
        print("Cadastro de usuário");
        break;
      case 2:
        print("Cadastro de cliente");
        break;
      case 3:
        print("Cadastro de produto");
        break;
      case 4:
        print("Listar Usuários");
        break;
      case 5:
        print("Listar Clientes");
        break;
      case 6:
        print("Listar Produtos");
        break;
      default:
        print("Operação inválida");
    }
  }
}

class Disparador{
  int qttFixadores = 0;
  int capacidadeMaxima = 15;
  
  void recarregar(int quantidade){
    if(quantidade + qttFixadores > capacidadeMaxima){
      print("Carregador não aguenta tantos fixadores");
      return;
    }
    print("Adicionando ${quantidade} fixadores");
    qttFixadores += quantidade;
    print("Fixadores totais = ${qttFixadores}");
  }
  
  void disparar(){
    if(qttFixadores < 1){
      print("Disparo vazio, regarregue os fixadores");
      return;
    }
    print("Disparando Fixador ${qttFixadores}");
    print("PLOF!");
    qttFixadores--;
  }
  
  void dispararTodos(){
    print("Disparar todos:");
    while(qttFixadores > 0){
      disparar();
    }
    print("Todos foram disparados");
  }
}

class CondeContador{
  void count(int from, int to){
    if(from <= to){
      for(int i = from; i <= to; i++){
        print(i);
      }
      return;
    }
    else{
      for(int i = to; i >= from; i--){
        print(i);
      }
    }
  }
}