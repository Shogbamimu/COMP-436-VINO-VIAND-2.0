<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body style="font-family:'Barlow Semi Condensed', Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF">
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

<xsl:template match="Cheese">
    <p>
      <xsl:apply-templates select="type"/>
      <xsl:apply-templates select="names"/>
      <xsl:apply-templates select="appearance"/>
      <xsl:apply-templates select="aroma"/>
      <xsl:apply-templates select="flavor"/>
      <xsl:apply-templates select="texture"/>
      <xsl:apply-templates select="pairing_notes"/>
      <xsl:apply-templates select="wine"/>
   </p> 
</xsl:template>

<xsl:template match="type"><span style ="font-weight:bold;color:#5F4B8B">
  <xsl:value-of select="."/>
  </span>
  <br />
</xsl:template>

<xsl:template match="names">
  Names: <span class="names"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="appearance">
  Appearance: <span class="appearance"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="aroma"> 
  Aroma: <span class="aroma"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="flavor">
  Flavor: <span class="flavor"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="texture">
  Texture: <span class="texture"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="pairing_notes">
  Pairing Notes: <span class="pairing_notes"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="wine"> 
  Wine Pairing(s): <span class="wine"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

</xsl:stylesheet>