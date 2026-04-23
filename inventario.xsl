<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<head>
    <title>Inventario de Hardware</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: auto;
            background-color: white;
            box-shadow: 0px 2px 10px rgba(0,0,0,0.1);
        }

        th {
            background-color: #2c3e50;
            color: white;
            padding: 10px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #ecf0f1;
        }

        tr:hover {
            background-color: #d5dbdb;
        }
    </style>
</head>

<body>

<h2>Inventario de Dispositivos Hardware</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Tipo</th>
        <th>Marca</th>
        <th>Modelo</th>
        <th>Precio (€)</th>
    </tr>

    <xsl:for-each select="inventario/dispositivo">
        <tr>
            <td><xsl:value-of select="id"/></td>
            <td><xsl:value-of select="tipo"/></td>
            <td><xsl:value-of select="marca"/></td>
            <td><xsl:value-of select="modelo"/></td>
            <td><xsl:value-of select="precio"/></td>
        </tr>
    </xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>