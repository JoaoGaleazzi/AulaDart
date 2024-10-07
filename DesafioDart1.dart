void main() {
  /*
  String pyramid = "|\\";
  print(pyramid);
  pyramid = "|_\\";
  for(int i = 0; i < 25; i++){
    print(pyramid);
    pyramid = pyramid.replaceFirst('_','__');
  }
  */
  print(convertCelciusToFahrenheit(22.0));
  count1To10();
  print(isEven(1));
  print(canIVote(70));
  print(getParcela(2850.0));
  brinde(Pessoa("fEmInInO", 5));
  getMilhasInfo(120);
}

double convertCelciusToFahrenheit(double celcius){
  return (celcius * 1.8) + 32;
}
  
void count1To10(){
  int n = 1;
  do{
    print(n);
    n++;
  }
  while(n <= 10);
}

bool isEven(int n){
  return n%2 == 0;
}

String canIVote(int age){
  if(age < 16){
    return "Não vota";
  }
  else if(age < 18){
    return "Voto Optativo";
  }
  else if(age < 70){
    return "Voto Obrigatório";
  }
  else{
    return "Voto Facultativo";
  }
}

double getParcela(double salary){
  var parcelaSemJuro = salary * 0.3;
  return parcelaSemJuro * 1.12;
}

void brinde(Pessoa pessoa){
  pessoa.idade >= 18 || pessoa.sexo.toLowerCase().trim() == "feminino" ? 
  print("Brinde"):
  print("Sem brinde");
}

void getMilhasInfo(int milhas){
  print("Milhas = $milhas");
  var pontos = (milhas/12).floor();
  print("Pontos = $pontos");
  print(pontos >= 10 ? "Contemplado" : "Não contemplado");
}

class Pessoa{
  Pessoa(String sexo, int idade){
    this.sexo = sexo;
    this.idade = idade;
  }
  String sexo = "";
  int idade = 0;
}