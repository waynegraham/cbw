<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
      xmlns:xs="http://www.w3.org/2001/XMLSchema"
      exclude-result-prefixes="xs"
      version="2.0">
    
    <xsl:template match="*|@*|processing-instruction()|comment()">
        <xsl:copy>
            <xsl:apply-templates select="*|@*|text()|processing-instruction()|comment()"/>
        </xsl:copy>
    </xsl:template>   
    
    <!-- get rid of TEIform= attrs whose value match GI -->
    <!-- idea from Sebastian Rahtz's tei2tei.xsl -->
    <xsl:template match="@TEIform">        <!-- if we're on a TEIform= -->
        <xsl:if test="not( . = name(..) )">  <!-- if my value != name of the element I'm on -->
            <xsl:attribute name="TEIform">     <!-- output myself -->
                <xsl:value-of select="."/>
            </xsl:attribute>
        </xsl:if>                            <!-- thus, if my value == name of element I'm on, -->
    </xsl:template>  
    
        <xsl:template match="note[contains(., 'TOC')]">
            <note type="toc">
                <list>
                <xsl:for-each select="tokenize(.,';[ ]*')">
                    <item><xsl:value-of select="."></xsl:value-of></item>
                </xsl:for-each>
                </list>
            </note>
        </xsl:template>
</xsl:stylesheet>
