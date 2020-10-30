//TROCA DE TELAS

function escolheTela(id) {
    escondeTelas();
    document.getElementById(id).style.display = "block";
}

function escondeTelas() {
    var telas = document.getElementsByClassName("tela");
    atualizaRelatorio();
    for (var i = 0; i < telas.length; i++) {
        telas[i].style.display = "none";
    }
}

function start() {
    escondeTelas();
    escolheTela("tela-tamanho");
}

function proximaTela(pos) {
    var telas = document.getElementsByClassName("tela");
    escondeTelas();
    telas[pos + 1].style.display = "block";
}

//OPERAÇÕES DE PEDIDO

function atualizaRelatorio() {
    var tamanho = getTamanho();
    var borda = getBorda();

    document.getElementById("tamanho").innerHTML = tamanho;
    document.getElementById("sabores").innerHTML = getSabores();
    document.getElementById("massa").innerHTML = getMassa();
    document.getElementById("borda").innerHTML = borda;
    document.getElementById("total").innerHTML = calculaTotal(tamanho, borda);
}

function getTamanho() {
    var opcoes = document.getElementsByName("tamanho");
    for (var i = 0; i < opcoes.length; i++) {
        if (opcoes[i].checked) {
            return opcoes[i].value;
        }
    }
}

function getSabores() {
    var opcoes = document.getElementsByName("sabor");
    var sabores = [];
    for (var i = 0; i < opcoes.length; i++) {
        if (opcoes[i].checked) {
            sabores.push(opcoes[i].value);
        }
    }
    if (sabores.length === 0) {
        return "";
    } else {
        return sabores;
    }
}

function getMassa() {
    var opcoes = document.getElementsByName("massa");
    for (var i = 0; i < opcoes.length; i++) {
        if (opcoes[i].checked) {
            return opcoes[i].value;
        }
    }
}

function getBorda() {
    if (document.getElementById("sim").checked) {
        var opcoes = document.getElementsByName("borda-sabor");
        for (var i = 0; i < opcoes.length; i++) {
            if (opcoes[i].checked) {
                return opcoes[i].value;
            }
        }
    } else {
        return "Não";
    }
}

function calculaTotal(tamanho, borda) {
    var valor = 0;
    switch (tamanho) {
        case "Pequena":
            valor += 20;
            break;
        case "Média":
            valor += 30;
            break;
        case "Grande":
            valor += 40;
            break;
        default:
            valor += 0;
    }
    if (borda !== "Não") {
        valor += 5;
    }

    return valor;
}

//CONTROLE DE INPUTS

function selecionaSabores() {
    var tamanho = getTamanho();
    var qntSabores = 0;
    switch (tamanho) {
        case "Pequena":
            qntSabores = 1;
            break;
        case "Média":
            qntSabores = 2;
            break;
        case "Grande":
            qntSabores = 3;
            break;
        default:
    }

    if (qntSabores <= ($("input[name='sabor']:checked").length)) {
        $("input[name='sabor']").prop("disabled", true);
        $("input[name='sabor']:checked").prop("disabled", false);
    } else {
        $("input[name='sabor']").prop("disabled", false);
    }
}

function mudaTamanho() {
    $("input[name='sabor']").prop("disabled", false);
    $("input[name='sabor']").prop("checked", false);
}

function checkRequirements() {
    if(getSabores() === ""){
        alert("Escolha os sabores!");
        escolheTela('tela-sabores');
    }else{
        alert("Ae");
    }
}

function verificaBordas(){
    if($("#sim").is(":checked")){
        $("input[name='borda-sabor']").prop("disabled", false);
    }else{
        $("input[name='borda-sabor']").prop("disabled", true);
    }
}
