<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="notes">
        <xsl:apply-templates select="assignatura"/>
    </xsl:template>
    
    <xsl:template match="assignatura">
        <xsl:value-of select="h1"/>
        <xsl:text>
</xsl:text>
        <xsl:apply-templates select="ul/li"/>
        <xsl:text>
</xsl:text>
    </xsl:template>
    
    <xsl:template match="li">
        <xsl:value-of select="span[@class='nom']"/>
        <xsl:text> -- </xsl:text>
        <xsl:value-of select="span[@class='nota']"/>
        <xsl:text>
</xsl:text>
    </xsl:template>
</xsl:stylesheet>