<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>Pacientes</h1>
				<xsl:for-each select="PBL/Patients/Patient">
					<h2><xsl:value-of select="InformaciónPaciente/NamePa"/></h2>
					<p><strong>Edad:</strong> <xsl:value-of select="InformaciónPaciente/Age"/> años</p>
					<p><strong>Altura:</strong> <xsl:value-of select="InformaciónPaciente/Height"/> cm</p>
					<p><strong>Peso:</strong> <xsl:value-of select="InformaciónPaciente/Weight"/> kg</p>
					<p><strong>Fecha prueba:</strong> <xsl:value-of select="DatosPrueba/TestDate"/></p>
					<p><strong>Fecha informe:</strong> <xsl:value-of select="DatosPrueba/ReportDate"/></p>
					<p><strong>Imagen:</strong><br/>
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="Imagen"/>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="InformaciónPaciente/NamePa"/>
							</xsl:attribute>
						</img>
					</p>
					<table>
						<tr>
							<th>Procedimiento</th>
							<th>Diagnóstico</th>
							<th>Tipo de Parásito</th>
							<th>Tratamiento</th>
						</tr>
						<tr>
							<td><xsl:value-of select="ResultadosPrueba/Procedure"/></td>
							<td><xsl:value-of select="ResultadosPrueba/Diagnosis/HasMalaria"/></td>
							<td><xsl:value-of select="ResultadosPrueba/Diagnosis/ParasiteType"/></td>
							<td><xsl:value-of select="ResultadosPrueba/Diagnosis/Treatment"/></td>
						</tr>
					</table>
				</xsl:for-each>
				<h1>Profesionales</h1>
				<xsl:for-each select="PBL/Professionals/Professional">
					<h2><xsl:value-of select="InformaciónProfesional/NamePr"/></h2>
					<p><strong>Especialidad:</strong> <xsl:value-of select="InformaciónProfesional/Specialty"/></p>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>