function exportarExcel() {
    // Crear un libro de trabajo vacío
    var wb = XLSX.utils.book_new();

    // Obtener todas las tablas
    var tablas = document.querySelectorAll('.tbl-content table');

    // Recorrer cada tabla
    tablas.forEach((tabla, index) => {
        // Crear una matriz para almacenar todos los datos de la tabla
        var tableData = [];

        // Agregar el nombre de la tabla como primera fila
        tableData.push([tabla.id]);

        // Recorrer cada fila de la tabla
        Array.from(tabla.rows).forEach(row => {
            var rowData = [];
            // Recorrer cada celda de la fila
            Array.from(row.cells).forEach(cell => {
                rowData.push(cell.textContent);
            });
            tableData.push(rowData);
        });

        // Convertir la matriz en una hoja de Excel
        var ws = XLSX.utils.aoa_to_sheet(tableData);

        // Establecer estilos para la hoja de Excel
        var range = XLSX.utils.decode_range(ws['!ref']);
        for (var R = range.s.r; R <= range.e.r; ++R) {
            for (var C = range.s.c; C <= range.e.c; ++C) {
                var cell_address = { c: C, r: R };
                var cell_ref = XLSX.utils.encode_cell(cell_address);
                if (!ws[cell_ref]) continue;
                ws[cell_ref].s = {
                    font: { name: "Arial", bold: true },
                    fill: { patternType: "solid", fgColor: { rgb: "FFFFAA00" } }, // Color del fondo: amarillo claro
                    border: { top: { style: "thin", color: { rgb: "000000" } }, bottom: { style: "thin", color: { rgb: "000000" } }, left: { style: "thin", color: { rgb: "000000" } }, right: { style: "thin", color: { rgb: "000000" } } }
                };
            }
        }

        // Agregar la hoja al libro de trabajo
        XLSX.utils.book_append_sheet(wb, ws, 'Tabla_' + (index + 1));
    });

    // Guardar el libro de trabajo como archivo Excel
    XLSX.writeFile(wb, 'exportacion.xlsx');
}
