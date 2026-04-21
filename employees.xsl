<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>

<title>Company Employee Records</title>

<style>

body{
font-family:Verdana;
background-color:#f4f6f7;
}

h2{
text-align:center;
color:#2c3e50;
}

table{
border-collapse:collapse;
width:85%;
margin:auto;
background:white;
}

th{
background-color:#34495e;
color:white;
padding:12px;
}

td{
padding:10px;
text-align:center;
}

tr:nth-child(even){
background-color:#ecf0f1;
}

tr:hover{
background-color:#d5dbdb;
}

table,th,td{
border:1px solid #2c3e50;
}

</style>

</head>

<body>

<h2>Company Employee Records</h2>

<table>

<tr>
<th>ID</th>
<th>Employee Name</th>
<th>Department</th>
<th>Experience (Years)</th>
<th>Phone</th>
<th>Date Joined</th>
</tr>

<xsl:for-each select="organization/employee">

<xsl:sort select="department"/>
<xsl:sort select="name"/>

<tr>

<td><xsl:value-of select="emp_id"/></td>

<td><xsl:value-of select="name"/></td>

<td><xsl:value-of select="department"/></td>

<td>

<xsl:choose>

<xsl:when test="experience &lt; 4">
<span style="color:red; font-weight:bold;">
<xsl:value-of select="experience"/> yrs
</span>
</xsl:when>

<xsl:otherwise>
<span style="color:green; font-weight:bold;">
<xsl:value-of select="experience"/> yrs
</span>
</xsl:otherwise>

</xsl:choose>

</td>

<td><xsl:value-of select="contact"/></td>

<td><xsl:value-of select="joining_date"/></td>

</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>