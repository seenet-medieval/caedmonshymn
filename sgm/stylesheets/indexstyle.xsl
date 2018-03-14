<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version = '1.0'
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:html="http://www.w3.org/TR/REC-html40"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    exclude-result-prefixes="html xlink">

  <xsl:strip-space elements="*"/>

  <xsl:output indent="yes"/>
  
 <xsl:output 
  method="xml"
  encoding="UTF-8"
  doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
  doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/> 
  

 <xsl:template match="TEI.2">
  <html xmlns="http://www.w3.org/1999/xhtml">
   <xsl:apply-templates/>
  </html>
 </xsl:template>
 
 <xsl:template match="teiHeader">
  <head profile="http://dublincore.org/documents/dcq-html/">
   
   <style type="text/css" media="screen" title="Default"> @import 
    url(http://people.uleth.ca/~daniel.odonnell/styles/screen.css); </style>
   
   <style type="text/css" media="print" title="Default"> @import 
    url(http://people.uleth.ca/~daniel.odonnell/styles/print.css); </style>
   <style type="text/css">
     ul {
     list-style-type: none;
     }
     ul li {
     text-indent: 0;
     font-weight: bold;
     }
     ul li ul li {
     text-indent: 0;
     font-weight: normal;
     }
     ul li ul li ul li {
     text-indent: 0;
     display: inline;
     font-weight: normal;
     }
     ul li ul li ul li ul li {
     display: inline;
     font-weight: normal;
     }
   </style>
   
   <xsl:apply-templates mode="header"/>
   
  </head>
 </xsl:template>

 <xsl:template match="body">
   <body>
     <xsl:apply-templates/>
   </body>
 </xsl:template>

 <xsl:template match="list">
   <ul>
     <xsl:apply-templates/>
   </ul>
 </xsl:template>

 <xsl:template match="item">
   <li>
     <xsl:apply-templates/>
   </li>
 </xsl:template>


</xsl:stylesheet>