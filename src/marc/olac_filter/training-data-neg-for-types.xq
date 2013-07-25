xquery version "1.0";  

(: training-data-neg-for-types.xq
       G. Simons, 31 Aug 2009
   Negative training data for reasource types, i.e.
   extract just records that have no resource type assigned.
   ID, tab, LNONE, tab, space separated fields
:)

declare namespace dc="http://purl.org/dc/elements/1.1/";
declare namespace marc="http://www.loc.gov/MARC21/slim";
declare namespace sr="http://www.openarchives.org/OAI/2.0/static-repository";
declare namespace oai="http://www.openarchives.org/OAI/2.0/";
declare namespace olac="http://www.language-archives.org/OLAC/1.1/";
declare namespace xsi="http://www.w3.org/2001/XMLSchema-instance";
declare namespace dcterms="http://purl.org/dc/terms/";
declare namespace fn="http://www.w3.org/2005/xpath-functions";
declare namespace xsl="http://www.w3.org/1999/XSL/Transform";

declare option saxon:output "method=text";


let $repo := doc('file:scriblio_repository.inverse.xml')
let $tab := "&#9;"
let $nl := "&#10;"

  for $rec in $repo//oai:record
   where
   $rec[oai:metadata/olac:olac[not(dc:type/@xsi:type='olac:resource-type')]]
  
  return
     ($rec/oai:header/oai:identifier/text(),
      $tab, "LNONE", $tab,

   for $field in $rec//olac:olac/*[. != '']
   where contains('contributor creator 
  coverage spatial temporal
  description abstract tableOfContents
  publisher source  
  title alternative', local-name($field) )
  or $field/self::dc:subject[@xsi:type != 'dcterms:DDC' and @xsi:type != 'dcterms:LCC']
    
   return
     ($field, " "), $nl

  
  )

