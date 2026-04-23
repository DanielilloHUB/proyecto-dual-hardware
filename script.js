fetch('inventario.json')
  .then(response => response.json())
  .then(data => {
    crearTabla(data);
  })
  .catch(error => console.error('Error:', error));

function crearTabla(dispositivos) {
  const contenedor = document.getElementById('contenedor');

  const tabla = document.createElement('table');

  // Crear cabecera
  const thead = document.createElement('thead');
  const filaCabecera = document.createElement('tr');

  const columnas = ['ID', 'Tipo', 'Marca', 'Modelo', 'Precio'];

  columnas.forEach(col => {
    const th = document.createElement('th');
    th.textContent = col;
    filaCabecera.appendChild(th);
  });

  thead.appendChild(filaCabecera);
  tabla.appendChild(thead);

  // Crear cuerpo
  const tbody = document.createElement('tbody');

  dispositivos.forEach(dispositivo => {
    const fila = document.createElement('tr');

    fila.innerHTML = `
      <td>${dispositivo.id}</td>
      <td>${dispositivo.tipo}</td>
      <td>${dispositivo.marca}</td>
      <td>${dispositivo.modelo}</td>
      <td>${dispositivo.precio} €</td>
    `;

    tbody.appendChild(fila);
  });

  tabla.appendChild(tbody);
  contenedor.appendChild(tabla);
}