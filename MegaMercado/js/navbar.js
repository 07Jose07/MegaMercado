document.addEventListener('DOMContentLoaded', function() {
    const body = document.querySelector('body');
    const sidebar = body.querySelector('nav');
    const toggle = body.querySelector(".toggle");
    const searchBtn = body.querySelector(".search-box");
    const modeSwitch = body.querySelector(".toggle-switch");
    const modeText = body.querySelector(".mode-text");

    function isIndexPage() {
        return window.location.pathname.endsWith('/index.html');
    }

    // Verificar y aplicar el modo oscuro al cargar la página
    const isDarkMode = localStorage.getItem('darkMode') === 'true';
    if (isDarkMode) {
        body.classList.add('dark');
        modeText.innerText = "Modo oscuro";
    } else {
        body.classList.remove('dark');
        modeText.innerText = "Modo claro";
    }

    toggle.addEventListener("click", () => {
        sidebar.classList.toggle("close");
    });

    searchBtn.addEventListener("click", () => {
        sidebar.classList.remove("close");
    });

    modeSwitch.addEventListener("click", () => {
        body.classList.toggle("dark");

        if (body.classList.contains("dark")) {
            modeText.innerText = "Modo oscuro";
            if (isIndexPage()) {
                logoImage.src = "imagenes/logo22.png";
            }
        } else {
            modeText.innerText = "Modo claro";
            if (isIndexPage()) {
                logoImage.src = "imagenes/logo2.png";
            }
        }


        // Guardar estado del modo oscuro en localStorage
        const isDark = body.classList.contains("dark");
        localStorage.setItem('darkMode', isDark.toString());
    });

    if (isDarkMode) {
        logoImage.src = "imagenes/logo22.png";
     } else {
        logoImage.src = "imagenes/logo2.png";
    }

    if (!isDarkMode) {
        logoImage.src = "imagenes/logo2.png"; // Cambiar a la imagen logo2.png si no es darkMode
    }
});

