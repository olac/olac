<?xml version="1.0" encoding="UTF-8"?>
<!-- 
     OLAC-archive-to-LD.xsl
     
          Convert an OLAC Identify response to 
          a Linked Data (RDF/XML) description of the archive
     
     Gary Simons, 9 Nov 2015
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:oai="http://www.openarchives.org/OAI/2.0/"
    xmlns:oai-id="http://www.openarchives.org/OAI/2.0/oai-identifier"
    xmlns:oai-repo="http://www.openarchives.org/OAI/2.0/static-repository"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:OLAC="http://www.language-archives.org/OLAC/1.1/olac-archive"
    xmlns:olac="http://www.language-archives.org/OLAC/1.1/olac-archive#"
    version="2.0"
    exclude-result-prefixes="dcterms oai oai-id oai-repo xs xsi OLAC"
     >
    
    <xsl:output  method="xml" omit-xml-declaration="yes" indent="yes"
      />
    
    <xsl:template match="text()|@*"/>

    <xsl:strip-space elements="oai:OAI-PMH oai:description OLAC:olac-archive"/>
    
    <xsl:template match="/oai:OAI-PMH/oai:request | /oai:OAI-PMH/oai:responseDate"/>
    
    <xsl:template match="/oai:OAI-PMH/oai:Identify|/oai-repo:Repository/oai-repo:Identify">
        <xsl:variable name="repositoryID" 
            select="normalize-space(oai:description/oai-id:oai-identifier/oai-id:repositoryIdentifier)"/>        
        <rdfs:Resource rdf:about="http://www.language-archives.org/archive/{$repositoryID}">
            <dc:title><xsl:value-of select="oai:repositoryName"/></dc:title>
            <xsl:apply-templates select="oai:description"/>
        </rdfs:Resource>
    </xsl:template>
    
    <xsl:template match="oai-id:oai-identifier"/>
    
    <xsl:template match="OLAC:olac-archive">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="OLAC:archiveURL">
        <olac:archiveURL rdf:resource="{.}"/>
    </xsl:template>
    
    <xsl:template match="OLAC:institution">
        <olac:institution><xsl:value-of select="."/></olac:institution>
    </xsl:template>
    
    <xsl:template match="OLAC:institutionURL">
        <olac:institutionURL rdf:resource="{.}"/>
    </xsl:template>
        
    <xsl:template match="OLAC:participant">
        <dc:contributor>
            <xsl:value-of select="concat(@name, ' (', @role, ')')"/>
        </dc:contributor>
    </xsl:template>
    
    <xsl:template match="OLAC:shortLocation">
        <olac:shortLocation><xsl:value-of select="."/></olac:shortLocation>
    </xsl:template>
    
    <xsl:template match="OLAC:location">
        <olac:location><xsl:value-of select="."/></olac:location>
    </xsl:template>
    
    <xsl:template match="OLAC:synopsis">
        <olac:synopsis><xsl:value-of select="."/></olac:synopsis>
    </xsl:template>
    
    <xsl:template match="OLAC:access">
        <olac:access><xsl:value-of select="."/></olac:access>
    </xsl:template>
    
    <xsl:template match="OLAC:archivalSubmissionPolicy">
        <olac:archivalSubmissionPolicy><xsl:value-of select="."/></olac:archivalSubmissionPolicy>
    </xsl:template>
    
</xsl:stylesheet>
