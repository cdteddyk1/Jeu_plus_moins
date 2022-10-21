function getRandomInt(max){
    return Math.floor(Math.random() * max)
}

resultat = getRandomInt(99);

function demandeNombre(){
    while(true){
        number = parseInt(prompt("Entreez un nombre"))
        if(isNaN(number))[
            alert(`${number} n'est pas un nombre `)
        ]
        console.log(`Votre nombre est : ${number}`)
        return number;
    }
    
}
demandeNombre();

console.log("teddy3");