<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
  >

  <xsl:output method="xml" indent="yes" />
  <xsl:strip-space elements="*" />

  <xsl:param name="icon" select="0" />
  <xsl:param name="icon_fill" select="0" />
  <xsl:param name="powered" select="0" />
  <xsl:param name="text" select="0" />

  <xsl:template match="node()|@*">
    <xsl:copy>
      <xsl:apply-templates select="node()|@*"/>
    </xsl:copy>
  </xsl:template>


  <xsl:template match="*[@inkscape:label = 'text']">
    <xsl:if test="$text = 1">
      <xsl:copy-of select="current()"/>
    </xsl:if>
  </xsl:template>

  <xsl:template match="*[@inkscape:label = 'icon']">
    <xsl:if test="$icon = 1">
      <xsl:copy-of select="current()"/>
    </xsl:if>
  </xsl:template>

  <xsl:template match="*[@inkscape:label = 'icon-fill']">
    <xsl:if test="$icon_fill = 1">
      <xsl:copy-of select="current()"/>
    </xsl:if>
  </xsl:template>

  <xsl:template match="*[@inkscape:label = 'powered']">
    <xsl:if test="$powered = 1">
      <xsl:copy-of select="current()"/>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet> 
