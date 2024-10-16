void main() {
  
  isEven(5);
  isEven(6);
  somarDe1AteN(6);
  contarRegressivo(10);
  wichIsBigger(100,100,3);
  allEvenUpToN(10);
  isPositiveNegativeOrZero(2);
  numberOfVowels("Às vezes, o café e a água são ótimos para o pão"); //21 vogais
  
  desenhaPiramide(30);
}

void isEven(int n){
  print(n % 2 == 0 ? "${n} é Par" : "${n} é Ímpar");
}

void somarDe1AteN(int n){
  if(n < 1){
    print("n precisa ser igual ou maior que 1");
    return;
  }
  
  int total = 0;
  while(n >= 1){
    total += n;
    n--;
  }
  print("A soma é ${total}");
}

void contarRegressivo(int n){
  if(n < 0){
    print("Me recuso a reconhecer números negativos");
  }
  for(int i = n; i >= 0; i--){
    print(i);
  }
}

void wichIsBigger(int a, int b, int c){
  var numArray = [a,b,c];
  int biggestNum = 0;
  for(int n in numArray){
    if(n > biggestNum){
      biggestNum = n;
    }
  }
  print("O maior número da lista é ${biggestNum}");
}

void wichIsBiggerList(List<int> nums){
  int biggestNum = 0;
  for(int n in nums){
    if(n > biggestNum){
      biggestNum = n;
    }
  }
  print("O maior número da lista é ${biggestNum}");
}

void allEvenUpToN(int n){
  while(n >= 2){
    if(n % 2 == 0){
      print(n);
    }
    n--;
  }
}

void isPositiveNegativeOrZero(int n){
  print(n < 0 ? "Negativo" : n > 0 ? "Positivo" : "Zero");
}

void numberOfVowels(String phrase){
  int totalOfVowels = 0;
  String upperPhrase = phrase.trim().toUpperCase();
  for(int i = 0; i < upperPhrase.length; i++){
    if(upperPhrase[i] == 'A' || 
       upperPhrase[i] == 'Ã' || 
       upperPhrase[i] == 'Á' || 
       upperPhrase[i] == 'À' || 
       upperPhrase[i] == 'Â' || 
       upperPhrase[i] == 'E' || 
       upperPhrase[i] == 'É' || 
       upperPhrase[i] == 'Ê' || 
       upperPhrase[i] == 'I' || 
       upperPhrase[i] == 'Í' || 
       upperPhrase[i] == 'O' || 
       upperPhrase[i] == 'Ó' ||
       upperPhrase[i] == 'Õ' || 
       upperPhrase[i] == 'Ô' || 
       upperPhrase[i] == 'U' || 
       upperPhrase[i] == 'Ú')
    {
      totalOfVowels++;
    }
  }
  print('O total de vogais em "${phrase}" é ${totalOfVowels}');
}

void desenhaPiramide(int tamanho){
  for(int i = 0; i < tamanho; i++){
    String linha = "";
    for(int j = 0; j <= tamanho-i; j++){
      linha += "_";
    }
    linha += "/";
    for(int j = 0; j <= i * 2; j++){
      linha += "_";
    }
    linha += "\\";
    print(linha);
  }
}