<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
 
  <h2>Preguntas</h2>
    <table border="1">
      <tr bgcolor="skyblue">
        <th>Tema</th>
		<th>Pregunta</th>
        <th>Complejidad</th>
      </tr>
	  
	  <xsl:for-each select="/items/item">
      <tr>
        <td><xsl:value-of select="tema"/></td>
        <td><xsl:value-of select="pregunta"/></td>
		<td><xsl:value-of select="complejidad"/></td>
      </tr>
    </xsl:for-each>
	     
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>