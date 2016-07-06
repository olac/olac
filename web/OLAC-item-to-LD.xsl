<?xml version="1.0" encoding="UTF-8"?>
<!-- 
     OLAC-item-to-LD.xsl
     
          Convert an OLAC ListRecords or GetRecord response to 
          a Linked Data (RDF/XML) representation of the records
     
     Gary Simons, 9 Nov 2015
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:oai="http://www.openarchives.org/OAI/2.0/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:skos="http://www.w3.org/2004/02/skos/core#"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:olac="http://www.language-archives.org/OLAC/1.1/"
    xmlns:role="http://www.language-archives.org/vocabulary/role#"
    version="2.0"
    exclude-result-prefixes="oai xsi olac xs rdf skos">
    
    <xsl:output  method="xml" omit-xml-declaration="yes" indent="yes"
     />
       
    <xsl:template match="/oai:OAI-PMH/oai:ListRecords ">
        <rdf:RDF>
           <xsl:apply-templates select="oai:record"/>
        </rdf:RDF>
    </xsl:template>
    
    <xsl:template match="/oai:OAI-PMH/oai:GetRecord">
            <xsl:apply-templates select="oai:record"/>
    </xsl:template>
    
    
    <xsl:template match="oai:record">
        <xsl:variable name="oaiID" 
            select="normalize-space(oai:header/oai:identifier)"/>        
        <rdfs:Resource rdf:about="http://www.language-archives.org/item/{$oaiID}">
            <dc:publisher
                rdf:resource="http://www.language-archives.org/archive/{substring-before(substring-after($oaiID,':'),':')}"/>
            <xsl:apply-templates select="oai:metadata/olac:olac/*" mode="element"/>
        </rdfs:Resource>
    </xsl:template>
    
    <xsl:template match="*" mode="element">
        <xsl:variable name="t" select="normalize-space(.)"/>
        <xsl:element name="{name()}" namespace="{namespace-uri()}">
            <xsl:choose>
                <xsl:when test="@xsi:type = 'dcterms:DCMIType'">
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="concat('http://purl.org/dc/dcmitype/',$t)"/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="@xsi:type = 'dcterms:IMT'">
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="concat('http://purl.org/NET/mediatypes/',$t)"/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="@xsi:type = 'dcterms:ISO3166'">
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="concat('http://ontologi.es/place/',$t)"/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="@xsi:type = 'dcterms:URI'">
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="$t"/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="starts-with($t,'http') and not(contains($t,' '))">
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="$t"/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="@xsi:type = 'dcterms:W3CDTF'">
                    <xsl:attribute name="rdf:datatype">http://purl.org/dc/terms/W3CDTF</xsl:attribute>
                    <xsl:value-of select="$t"/>
                </xsl:when>
                <!--xsl:when test="starts-with(.,'http')">
                    <xsl:attribute name="rdf:resource" select="."/>
                </xsl:when-->
                <xsl:when test="@xsi:type = 'olac:discourse-type'">
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="concat('http://www.language-archives.org/vocabulary/discourse#',@olac:code)"/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="@xsi:type = 'olac:language'">
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="concat('http://www.lexvo.org/id/iso639-3/',@olac:code)"/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="@xsi:type = 'olac:linguistic-field'">
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="concat('http://www.language-archives.org/vocabulary/field#',@olac:code)"/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:when test="@xsi:type = 'olac:linguistic-type'">
                    <xsl:attribute name="rdf:resource">
                        <xsl:value-of select="concat('http://www.language-archives.org/vocabulary/type#',@olac:code)"/>
                    </xsl:attribute>
                </xsl:when>
                <xsl:otherwise><xsl:value-of select="$t"/></xsl:otherwise>
            </xsl:choose>
        </xsl:element>
        <!-- Add a note if there is both a code and content -->
        <xsl:if test="@olac:code != '' and $t != '' and @xsi:type != 'olac:role'">
            <xsl:element name="{name()}" namespace="{namespace-uri()}">
                <xsl:value-of select="concat('Note for ', @xsi:type, ' [',@olac:code,']: ',$t)"/>
            </xsl:element>
        </xsl:if>
        <!-- When there is a role, add a triple for the more refined relationship -->
        <xsl:if test="@xsi:type = 'olac:role'">
            <xsl:element name="role:{@olac:code}">
          <!--      namespace="http://www.language-archives.org/vocabulary/role#" -->
                <xsl:value-of select="$t"/>
            </xsl:element>
        </xsl:if>
    </xsl:template>
        
</xsl:stylesheet>