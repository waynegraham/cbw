<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template name="loop">
        <xsl:param name="i"/>
        <xsl:param name="count"/>
        <!--print YYYY NN -->
        <!--<xsl:if test="($i &lt;= $count) and ($i &gt; 1889) and ($i &lt; 1910)">-->
        <xsl:if test="($i &lt;= $count)">
            <xsl:value-of select="$i"/><xsl:text> </xsl:text>
            <!--<xsl:value-of select="count(/TEI.2/text/body//bibl/imprint/date[contains(.,$i) and contains(../pubPlace,'London')])"/>-->
            <xsl:value-of select="count(/TEI.2/text/body//bibl/imprint/date[contains(.,$i)])"/>
                    <xsl:text>
</xsl:text>
        </xsl:if>
        <!-- recursion -->
        <xsl:if test="$i &lt;= $count">
            <xsl:call-template name="loop">
                <xsl:with-param name="i">
                    <xsl:value-of select="$i + 1"/>
                </xsl:with-param>
                <xsl:with-param name="count">
                    <xsl:value-of select="$count"/>
                </xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>

    <xsl:template match="/"> 
        <xsl:call-template name="loop">
            <xsl:with-param name="i">1650</xsl:with-param>
            <xsl:with-param name="count">2010</xsl:with-param>
        </xsl:call-template> 
    </xsl:template>
</xsl:stylesheet>
