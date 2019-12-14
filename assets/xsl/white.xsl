<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body style="font-family:'Barlow Semi Condensed', Helvetica, sans-serif;font-size:14px;background-color:#FFFFFF">
  <h2>White Pairings</h2>
  <xsl:apply-templates/>
  </body>
  </html> 
 </xsl:template> 

<xsl:template match="white">
    <p>
      <xsl:apply-templates select="name"/>
      <xsl:apply-templates select="additionalname"/>
      <xsl:apply-templates select="grapes"/>
      <xsl:apply-templates select="grape1"/>
      <xsl:apply-templates select="grape2"/>
      <xsl:apply-templates select="grape3"/>
      <xsl:apply-templates select="temperature"/>
      <xsl:apply-templates select="wine"/>
      <xsl:apply-templates select="name"/>
      <xsl:apply-templates select="type"/>
      <xsl:apply-templates select="style"/>
      <xsl:apply-templates select="properties"/>
      <xsl:apply-templates select="residualsugar"/>
      <xsl:apply-templates select="tannins"/>
      <xsl:apply-templates select="acidity"/>
      <xsl:apply-templates select="abv"/>
      <xsl:apply-templates select="origin"/>
      <xsl:apply-templates select="country"/>
      <xsl:apply-templates select="region"/>
      <xsl:apply-templates select="subregion"/>
      <xsl:apply-templates select="foodpairing"/>
      <xsl:apply-templates select="tastingnotes"/>

   </p> 
</xsl:template>

<xsl:template match="name"><span style ="font-weight:bold;color:#5F4B8B">
  <xsl:value-of select="."/>
  </span>
  <br />
</xsl:template>

<xsl:template match="additionalname">
  Additional Name: <span class="additionalname"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="grapes">
  Grapes: <span class="grapes"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="grape1">
  Grape1: <span class="grape1"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="grape2">
  Grape2: <span class="grape2"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="grape3">
  Grape3: <span class="grape3"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="type">
  Type: <span class="type"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="style">
  Style: <span class="style"><xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="tannins">
  Tannins: <span class="tannins"><xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="acidity">
  Acidity: <span class="acidity"><xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="abv">
  ABV: <span class="abv"><xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="properties">
  Properties: <span class="properties"><xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="origin">
  Origin: <span class="origin"><xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="country">
  Country: <span class="country"><xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="region">
  Region: <span class="region"><xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="subregion">
  SubRegion: <span class="subregion"><xsl:value-of select="."/></span>
  <br />
</xsl:template>

<xsl:template match="foodpairing">
  Food Pairing: <span class="foodpairing"><xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="tastingnotes">
  Tasting Notes: <span class="tastingnotes"><xsl:value-of select="."/></span>
  <br />
</xsl:template>


</xsl:stylesheet>