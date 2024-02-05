const buscar = () => {
    const textoBusqueda = document.getElementById("busqueda").value.toLowerCase();
    const filas = document.querySelectorAll(".tbl-content tbody tr");
    
    if (textoBusqueda.trim() === "") {
      // Si el campo de búsqueda está vacío, restaura la apariencia original de todas las filas
      filas.forEach((fila) => {
        fila.classList.remove("resultado");
        const celdas = fila.querySelectorAll("td");
        celdas.forEach((celda) => {
          celda.style.backgroundColor = ""; // Elimina el fondo verde
        });
      });
      return;
    }
    const filaEncontrada = Array.from(filas).find((fila) => {
      const celdas = fila.querySelectorAll("td");
      return Array.from(celdas).some((celda) => {
        const texto = celda.textContent.toLowerCase();
        return texto.includes(textoBusqueda);
      });
    });
  
    if (filaEncontrada) {
      filas.forEach((fila) => fila.classList.remove("resultado"));
      filaEncontrada.classList.add("resultado");
      filaEncontrada.scrollIntoView({ behavior: "smooth" });
  
      // Modificación: buscar la celda directamente en el contenido
      const celdasEncontradas = filaEncontrada.querySelectorAll("td");
      celdasEncontradas.forEach((celda) => {
        celda.style.backgroundColor = "rgb(255, 0, 0)"; // Verde (puedes cambiar el color aquí)
      });
    } else {
      // Evitar mostrar el mensaje de "No se encontraron resultados" si el campo está vacío
      if (textoBusqueda.trim() !== "") {
        alert("No se encontraron resultados para la búsqueda proporcionada. Por favor, intenta con otro término.");
      }
    }
  };
  
  document.getElementById("busqueda").addEventListener("keyup", buscar);
  
  
  
  
  
  
  
  
    
    
    
    