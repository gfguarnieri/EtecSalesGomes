function checarEmail(email){
    if(email.includes("@")){
        return true;
    }
    return false;
}

const campoExemploKeyDown = document.getElementById("exemplo-keydown");
const paragrafoExemploKeyDown = document.getElementById("espelho-exemplo-keydown");

const campoExemploKeyUp = document.getElementById("exemplo-keyup");
const quadradoKeyUp = document.getElementById("quadrado-keyup");

const campoSenha = document.getElementById("exemplo-senha");
const dicaSenha = document.getElementById("dica-senha");

const campoExemploFocusBlur = document.getElementById("exemplo-focus");

const campoEmail = document.getElementById("exemplo-email");
const dicaEmail = document.getElementById("dica-email");

campoExemploKeyDown.addEventListener("keydown", () => {
    paragrafoExemploKeyDown.innerHTML = campoExemploKeyDown.value;
});

campoExemploKeyUp.addEventListener("keyup", () => {
    quadradoKeyUp.style.backgroundColor = campoExemploKeyUp.value;
});

campoExemploFocusBlur.addEventListener("focus", () => {
    document.body.style.backgroundColor = "green";
});

campoExemploFocusBlur.addEventListener("blur", () => {
    document.body.style.backgroundColor = "white";
});

campoSenha.addEventListener("keyup", () => {

    let senha = campoSenha.value;

    if(senha.length < 6){
        dicaSenha.innerHTML = "A senha precisa ter ao menos 6 caracteres";
        dicaSenha.style.color = "red";
    }else{
        dicaSenha.innerHTML = "Senha válida";
        dicaSenha.style.color = "green";
    }

});

campoEmail.addEventListener("keyup", () => {

    let email = campoEmail.value;

    if(checarEmail(email)){
        dicaEmail.innerHTML = "Email válido";
        dicaEmail.style.color = "green";
    }else{
        dicaEmail.innerHTML = "Email inválido";
        dicaEmail.style.color = "red";
    }

});