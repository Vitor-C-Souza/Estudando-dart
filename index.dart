main() {
  var hello = HelloWorld();
  hello.mensagem = "Hello World!";
  hello.Saudacao();
}

class HelloWorld {
  String mensagem = "";

  Saudacao() {
    print(mensagem);
  }
}
