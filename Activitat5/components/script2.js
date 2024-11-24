function validarContrasenya(event) {
    event.preventDefault(); // Evita que el formulari es reencarregui

    const password1 = document.getElementById('password1').value;
    const password2 = document.getElementById('password2').value;

    // Comprova si les dues contrasenyes coincideixen
    if (password1 !== password2) {
        alert("Les contrasenyes no coincideixen. Si us plau, torna-ho a intentar.");
        return;
    }

    // Comprova si la contrasenya té almenys 8 caràcters
    if (password1.length < 8) {
        alert("La contrasenya ha de tenir almenys 8 caràcters.");
        return;
    }

    // Si totes les validacions es compleixen
    alert("S'ha canviat correctament la contrasenya.");
}
