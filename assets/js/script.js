console.log("Matrix cargado");

const canvas = document.getElementById("matrix");

if (canvas) {

    const ctx = canvas.getContext("2d");

    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    const letras = "01";
    const array = letras.split("");

    const fontSize = 16;

    const columnas = canvas.width / fontSize;

    const gotas = [];

    for (let i = 0; i < columnas; i++) {

        gotas[i] = 1;
    }

    function draw() {

        ctx.fillStyle = "rgba(0,0,0,0.05)";
        ctx.fillRect(0, 0, canvas.width, canvas.height);

        ctx.fillStyle = "#00ff99";

        ctx.font = fontSize + "px monospace";

        for (let i = 0; i < gotas.length; i++) {

            const texto =
                array[Math.floor(Math.random() * array.length)];

            ctx.fillText(
                texto,
                i * fontSize,
                gotas[i] * fontSize
            );

            if (
                gotas[i] * fontSize > canvas.height &&
                Math.random() > 0.975
            ) {

                gotas[i] = 0;
            }

            gotas[i]++;
        }
    }

    setInterval(draw, 35);
}