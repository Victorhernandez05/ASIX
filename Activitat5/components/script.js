function iniciarRellotge() {
    console.log("iniciarRellotge s'ha iniciat.");
    const rellotge = document.getElementById('rellotge');
    let segons = 0;
    setInterval(() => {
        segons++;
        rellotge.textContent = `Temps a la pàgina: ${segons} segons`;
    }, 1000);
}
function mostrarImatgeGran(imatge) {
    const contenedor = document.getElementById('imatge-gran');
    contenedor.innerHTML = `<img src="${imatge.src}" alt="${imatge.alt}">`;
}
