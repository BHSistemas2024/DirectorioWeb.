const buscar = () => {
    const textoBusqueda = document.getElementById("busqueda").value.trim().toLowerCase();
    const filas = document.querySelectorAll(".tbl-content tbody tr");
  
    // Limpiar resultados anteriores
    filas.forEach((fila) => {
      fila.classList.remove("resultado");
      const celdas = fila.querySelectorAll("td");
      celdas.forEach((celda) => {
        celda.style.backgroundColor = "";
      });
    });
  
    if (textoBusqueda === "") {
      // Ocultar mensaje de no resultados al limpiar
      const mensajeNoResultados = document.getElementById("mensajeNoResultados");
      mensajeNoResultados.style.display = "none";
      return;
    }
  
    const regex = new RegExp(textoBusqueda, "i");
  
    const filasEncontradas = Array.from(filas).filter((fila) => {
      const celdas = fila.querySelectorAll("td");
      return Array.from(celdas).some((celda) => regex.test(celda.textContent.trim()));
    });
  
    if (filasEncontradas.length > 0) {
      filasEncontradas.forEach((fila) => {
        fila.classList.add("resultado");
        fila.scrollIntoView({ behavior: "smooth" });
  
        const celdasEncontradas = fila.querySelectorAll("td");
        celdasEncontradas.forEach((celda) => {
          celda.style.backgroundColor = "rgb(255, 0, 0)";
        });
      });
    } else {
      // Mostrar mensaje de no resultados
      const mensajeNoResultados = document.getElementById("mensajeNoResultados");
      mensajeNoResultados.style.display = "block";
    }
  };
  
  const limpiarBusqueda = () => {
    document.getElementById("busqueda").value = "";
    buscar(); // Realizar la búsqueda para limpiar los resultados
  };
  
  document.getElementById("busqueda").addEventListener("input", buscar);
  document.getElementById("btnLimpiar").addEventListener("click", limpiarBusqueda);
  
  
  
  
  
    
    
    
    
