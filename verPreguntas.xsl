<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<HTML> 
	<BODY> <P>PREGUNTAS</P>
		<TABLE border="1">
			<THEAD>
				<TR> <TH>Tema</TH> <TH>Pregunta</TH> <TH>Complejidad</TH> </TR>
			</THEAD>

			<xsl:for-each select="assessmentItems/assessmentItem" >
			<TR>
				<TD>
					<FONT SIZE="2" COLOR="red" FACE="Verdana">
						<xsl:value-of select="@subject"/> <BR/>
					</FONT>
				</TD>
				<TD>
					<FONT SIZE="2" COLOR="blue" FACE="Verdana">
						<xsl:value-of select="itemBody/p"/> <BR/>
					</FONT>
				</TD>
				<TD>
					<FONT SIZE="2" COLOR="green" FACE="Verdana">
						<xsl:value-of select="@complexity"/> <BR/>
					</FONT>
				</TD>
			</TR>
			</xsl:for-each>
		</TABLE>
	</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>