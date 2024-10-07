void main(){
  Retangulo total = Retangulo.sameSize(20);
  print("Area: ${total.area}");
  
  Pessoa jooj = Pessoa();
  jooj.nome = "        jooj    ";
  print(jooj.nome);
  jooj.idade = 1;
  print(jooj.idade);
}

class Retangulo {
  double largura;
  double altura;
  
  Retangulo(this.largura, this.altura);
  
  Retangulo.sameSize(double lado) : largura = lado, altura = lado;
  
  double get area => largura * altura;
}

class Pessoa {
  String _nome = "";
  int _idade = 0;
  
  String get nome => _nome.trim();
  void set nome(String novoNome){
    if(novoNome.trim().isNotEmpty){
      _nome = novoNome;
    }
    else{
      print("Nome não pode ser vazio");
    }
  }
  
  int get idade => _idade;
  void set idade(int novaIdade){
    if(novaIdade > 0){
      _idade = novaIdade;
    }
    else{
      print("Idade deve ser maior que zero");
    }
  }
}