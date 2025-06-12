<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xhtml="http://www.w3.org/1999/xhtml">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/xhtml:html">
    <html>
      <head>
        <title>Resultat de la Transformació</title>
        <meta charset="UTF-8" />
      </head>
      <body>
        <h1>Informació de la persona</h1>
        <xsl:for-each select="xhtml:body/xhtml:persona">
          <p><strong>Nom:</strong> <xsl:value-of select="xhtml:nom"/></p>

          <xsl:if test="xhtml:rols/xhtml:rol">
            <h2>Rols:</h2>
            <ul>
              <xsl:for-each select="xhtml:rols/xhtml:rol">
                <li>
                  <xsl:value-of select="."/>
                  <xsl:if test=". = 'Administrador'"> - Permisos totals</xsl:if>
                </li>
              </xsl:for-each>
            </ul>
          </xsl:if>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
