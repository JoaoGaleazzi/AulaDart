void main() {
  
  List<List<String>> board = List.generate(8,(i) => List.filled(8,''));
  for(int i = 0; i < board.length; i++){
    for(int j = 0; j < board[0].length; j++){
      if(i%2 == 0){
        board[i][j] = j%2 == 0 ? '■' : '□';
      }
      else{
        board[i][j] = j%2 == 0 ? '□' : '■';
      }
    }
  }
  
  board.forEach((x) => print(x));
  
  for(int i = 0; i < 5; i++){
    print("");
  }
  

  var usuarios = Stack<Usuario>();
  usuarios.push(Usuario("Vitor", 40));
  usuarios.push(Usuario("Ana", 30));
  usuarios.push(Usuario("Maria", 22));
  usuarios.push(Usuario("Vitor", 40));
  usuarios.pop();
  usuarios.push(Usuario("Ana", 30));
  
  usuarios.printStack();
  
}

class Stack<T>{
  List<T> info = [];
  
  void push(T data){
    info.add(data);
  }
  
  T? pop(){
    if(info.isEmpty){
      return null;
    }
    return info.removeLast();
  }
  
  T? peek(){
    return info.lastOrNull;
  }
  
  void printStack(){
    print("Topo");
    for(int i = info.length - 1; i >= 0; i--){
      print(info[i]);
    }
    print("Base");
  }
}

class Usuario{
  String nome;
  int idade;
  Usuario(this.nome, this.idade);
  
  @override
  String toString(){
    return "Nome: $nome, Idade: $idade";
  }
}
