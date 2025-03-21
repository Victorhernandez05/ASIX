<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Notes Universitat</title>
                <style>
                    table {
                        width: 50%;
                        border-collapse: collapse;
                        margin-bottom: 20px;
                        border: 1px solid black;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: lightgray;
                    }
                </style>
            </head>
            <body>
                <xsl:apply-templates select="notes/assignatura"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="assignatura">
        <table>
            <tr>
                <th colspan="2">
                    <xsl:value-of select="h1"/>
                </th>
            </tr>
            <xsl:apply-templates select="ul/li"/>
        </table>
    </xsl:template>
    
    <xsl:template match="li">
        <tr>
            <td><xsl:value-of select="span[@class='nom']"/></td>
            <td><xsl:value-of select="span[@class='nota']"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
