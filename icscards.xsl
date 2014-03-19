<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >

<xsl:output method="text" indent="no" encoding="UTF-8" />

<xsl:template match="/">
  <xsl:variable name="card" select="//div[@class='card-details']/table/tr[2]/td[3]"/>
  <xsl:for-each select="//div[@class='table-block']/table/tr[position()>1]">
    <xsl:variable name="description" select="normalize-space(concat(td[3],td[6]))"/>
    <xsl:variable name="amount" select="translate(normalize-space(td[7]/span[@class='amount']),'.','')"/>
	<xsl:variable name="swamount" select="translate($amount,',','.')" />
	<xsl:variable name="bij" select="normalize-space(td[5]/span[@class='bij'])" />
<xsl:value-of select="$card"/><xsl:text>&#x9;</xsl:text><xsl:value-of select="td[1]"/><xsl:text>&#x9;</xsl:text><xsl:if test="(string-length($bij) > 0)">-</xsl:if><xsl:value-of select="$swamount"/><xsl:text>&#x9;</xsl:text><xsl:value-of select="$description"/><xsl:text>&#xa;</xsl:text>
  </xsl:for-each>
</xsl:template>

</xsl:stylesheet>