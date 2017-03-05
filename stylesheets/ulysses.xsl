<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/"> 
	<html>
		<head> 
			<link rel="stylesheet" href="stylesheets/ulysses.css" />
			<link href='https://fonts.googleapis.com/css?family=Droid+Serif' rel='stylesheet' type='text/css'/>
			<!--<script src="vendor/jquery-2.1.4.min.js"></script>-->
			<!--<script src="portrait.js"></script>-->
		</head> 
		<body>
			<h1 class="mainTitle"><em>Ulysses</em></h1>
			<h2 class="mainTitle">James Joyce</h2>
			<!--<div id="controls">-->
				<!--Show: <br/>-->
				<!--<input type="checkbox" id="dialog" name="dialog" value="" checked="checked"/>Dialog attribution<br/>-->
				<!--<input type="checkbox" id="type" name="type" value="" checked="checked"/>Text genre (poem, song, prayer)<br/>-->
				<!--<input type="checkbox" id="lang" name="lang" value="" checked="checked"/>Language-->
			<!--</div> -->
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template> 

<xsl:template match="TEI/teiHeader">
	<div id="metadata">
		<xsl:apply-templates/>
	</div><!-- End of Metadata -->
</xsl:template>

<!--This is for the whole body of the text -->
<xsl:template match="TEI/text/body">
	<div id="textBody">
			<xsl:apply-templates/>
	</div> <!--End of Container-->
</xsl:template>

<xsl:template match="p">
	<p class="textParagraph"><xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="foreign | title | quote">
	<emph><xsl:apply-templates/></emph>
</xsl:template>

<xsl:template match="*[@rend='italics']">
	<emph><xsl:apply-templates/></emph>
</xsl:template>

<xsl:template match="lg|*[@rend='inset']">
	<p class="lg">
		<xsl:apply-templates/>
	</p>
</xsl:template>

<xsl:template match="lg|*[@rend='inset']//lb">
	<br/>
		<xsl:apply-templates/>
</xsl:template>

<xsl:template match="l">
	<xsl:apply-templates/><br/>
</xsl:template>

<xsl:template match="emph">
	<span class="emph"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="head">
	<h2 class="heading"><xsl:apply-templates/></h2>
</xsl:template>

<xsl:template match="said[@who]">
		<xsl:if test="substring(.,1,1)='―'"> 
			<br class="dialog"/>
			<br class="dialog"/>
		</xsl:if>
		<span class="dialog">
			<span class="tag dialog">
				<xsl:value-of select="@who"/>
			</span>
			<xsl:value-of select="."/>
		</span>
</xsl:template>

<xsl:template match="epigraph|seg">
	<span class="lang">
		<xsl:apply-templates select="@xml:lang | node()"/>
	</span>
</xsl:template>

<xsl:template match="@xml:lang">
	<span class="tag lang">
		<xsl:choose>
			<xsl:when test=".='la'"> 
				Latin
			</xsl:when>
			<xsl:when test=".='fr'"> 
				French
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="."/>
			</xsl:otherwise>
		</xsl:choose> 
	</span>
</xsl:template> 

<xsl:template match="lg[@type]">
	<p class="lg">
		<xsl:apply-templates select="@type | node()"/>
	</p>
</xsl:template>

<xsl:template match="@type">
	<span class="tag type">
		<xsl:value-of select="."/>
	</span>
</xsl:template> 

</xsl:stylesheet> 
