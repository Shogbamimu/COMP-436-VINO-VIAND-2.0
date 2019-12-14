<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/">
  <html>  

  <body style="font-family:'Barlow Semi Condensed', Helvetica, sans-serif; background-color:#FFFFFF">

  <h2>Beef Pairings</h2>
  <xsl:apply-templates/>
  </body>
  </html> 
 </xsl:template> 

<xsl:template match="beef">
    <p>
      <xsl:apply-templates select="cut"/>
      <xsl:apply-templates select="taste"/>
      <xsl:apply-templates select="temperature"/>
      <xsl:apply-templates select="wine"/>
   </p> 
</xsl:template>

<xsl:template match="cut"><span style ="font-weight:bold;color:#5F4B8B">
  <xsl:value-of select="."/>
  </span>
  <br />
</xsl:template>

<xsl:template match="taste">
  Taste: <span class="taste"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="temperature">
  Temperature: <span class="temperature"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="wine"> 
  Wine Pairing(s): <span class="wine"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

</xsl:stylesheet>