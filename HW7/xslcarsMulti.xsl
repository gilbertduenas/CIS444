<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" xmlns = "http://www.w3.org/1999/xhtml">

	<xsl:template match = "catalog">
	<html>
	<head>
		<title> Style sheet for xslcarsMulti.xml </title>
	</head>
	<body> 
		<h2> Car Description </h2>
		<xsl:apply-templates select="car" />
	</body>
	</html> 
	</xsl:template>

	<xsl:template match="car">
		<xsl:apply-templates select="make" />
		<xsl:apply-templates select="model" />
		<xsl:apply-templates select="year" />
		<xsl:apply-templates select="color" />
		<xsl:apply-templates select="engine" />
		<xsl:apply-templates select="number_of_doors" />
		<xsl:apply-templates select="transmission_type" />
		<xsl:apply-templates select="accessories" />
		<br />
	</xsl:template>	
	
	
	<xsl:template match="make">
		<span style = "font-size: 18pt; font-style: bold; color: black;">Make - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>

	<xsl:template match="model">
		<span style = "font-size: 18pt; font-style: bold; color: black;">Model -  </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>

	<xsl:template match="year">
		<span style = "font-size: 18pt; font-style: bold; color: black;">Year - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>

	<xsl:template match="color">
		<span style = "font-size: 18pt; font-style: bold; color: black;">Color - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>
	
	<xsl:template match="engine">
		<span style = "font-size: 18pt; font-style: bold; color: black;">Engine....</span>
		<br />
		<xsl:apply-templates select="number_of_cylinders" />
		<xsl:apply-templates select="fuel_system" />
	</xsl:template>	
	
	<xsl:template match="number_of_cylinders">
		<span style = "margin-left:10px; font-size: 12pt; font-style: italic; color: blue;">cylinders - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>
	
	<xsl:template match="fuel_system">
		<span style = "margin-left:10px; font-size: 12pt; font-style: italic; color: blue;">fuel system - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>

	<xsl:template match="number_of_doors">
		<span style = "font-size: 18pt; font-style: bold; color: black;">Number of doors - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>	
	
	<xsl:template match="transmission_type">
		<span style = "font-size: 18pt; font-style: bold; color: black;">Transmission - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>	
	
	<xsl:template match="accessories">
		<span style = "font-size: 18pt; font-style: bold; color: black;">Accessories....</span>
		<br />
		<xsl:apply-templates select="radio" />
		<xsl:apply-templates select="air_conditioning" />
		<xsl:apply-templates select="power_windows" />
		<xsl:apply-templates select="power_steering" />
		<xsl:apply-templates select="power_brakes" />
	</xsl:template>
	
	<xsl:template match="radio">
		<span style = "margin-left:10px; font-size: 12pt; font-style: italic; color: blue;">radio - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>
	
	<xsl:template match="air_conditioning">
		<span style = "margin-left:10px; font-size: 12pt; font-style: italic; color: blue;">air conditioning - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>
	
	<xsl:template match="power_windows">
		<span style = "margin-left:10px; font-size: 12pt; font-style: italic; color: blue;">power windows - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>
	
	<xsl:template match="power_steering">
		<span style = "margin-left:10px; font-size: 12pt; font-style: italic; color: blue;">power steering - </span>
		<xsl:value-of select="." />
		<br />
	</xsl:template>
	
	<xsl:template match="power_brakes">
		<span style = "margin-left:10px; font-size: 12pt; font-style: italic; color: blue;">power brakes - </span>
		<xsl:value-of select="." />
		<br /><br /><br />
	</xsl:template>
	
</xsl:stylesheet>
