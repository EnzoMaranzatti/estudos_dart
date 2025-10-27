void enviarEmail(String email) {
  print("Mensagem enviada para: $email");
}

void main() {
  //List<String> listaEmails = ["enzomaranzattisilva@gmail.com", "maria@gmail.com"]; 


  // if(listaEmails.contains("eduardo@gmail.com") == false) {
  //   listaEmails.add("eduardo@gmail.com");
  // }

  // for(String email in listaEmails) {
  //   enviarEmail(email);
  // }

  // Set<String> setEmails = {"enzomaranzattisilva@gmail.com", "maria@gmail.com"};

  // setEmails.add("eduardo@gmail.com");
  // setEmails.add("eduardo@gmail.com");

  // if(setEmails.contains("eduardo@gmail.com") == true) {
  //   print("Eduardo está dentro do set");
  // } else {
  //   print("Eduardo não está no set");
  // }

  // for(String email in setEmails) {
  //   enviarEmail(email);
  // }

  Map<String, String> pessoasEmails = {
    "Enzo Vinícius": "enzomaranzattisilva@gmail",
    "Maria": "maria@gmail.com"
  };

  //pessoasEmails["Eduardo"] = "eduardo@gmail.com";
  // print(pessoasEmails.containsKey("Enzo Vinícius"));
  //print(pessoasEmails.values);

  for(String email in pessoasEmails.values) {
    enviarEmail(email);
  }

  for(String email in pessoasEmails.keys) {
    print(email);
  }
}