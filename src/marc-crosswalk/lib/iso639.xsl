<?xml version="1.0" encoding="UTF-8"?>
<!--
    iso639.xsl - Maps an LCSH or LCCN to an ISO639-3 code. Returns "failed" if
    there is no match.
    This stylesheet is intended to be included by the main marc2olac stylesheet
-->
<xsl:stylesheet version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:dcterms="http://purl.org/dc/terms/" xmlns:marc="http://www.loc.gov/MARC21/slim"
    xmlns:oai="http://www.openarchives.org/OAI/2.0/"
    xmlns:olac="http://www.language-archives.org/OLAC/1.1/"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>
    <xsl:template name="map-to-iso639">

        <!-- only one of the following params are necessary  -->
        <xsl:param name="lcsh"/>
        <xsl:param name="lccn"/>
        
        <!-- map LCSH to ISO639-3 -->
        <xsl:choose>
            <xsl:when test="$lcsh">
                <xsl:choose>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;!Xõ language&quot;)">huc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abaknon language&quot;)"
                        >abx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abau language&quot;)"
                        >aau</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abazin language&quot;)"
                        >abq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abe language&quot;)">any</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abidji language&quot;)"
                        >abi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abipon language&quot;)"
                        >axb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abkhaz language&quot;)"
                        >abk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abo language (Cameroon)&quot;)"
                        >abb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abor language&quot;)"
                        >adi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abua language&quot;)"
                        >abn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abujhmaria language&quot;)"
                        >mrr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abulas language&quot;)"
                        >abt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abun language&quot;)"
                        >kgr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Abure language&quot;)"
                        >abu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Acawai language&quot;)"
                        >ake</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Achagua language&quot;)"
                        >aca</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Achang language&quot;)"
                        >acn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Achinese language&quot;)"
                        >ace</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Achomawi language&quot;)"
                        >acv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Achuar language&quot;)"
                        >acu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Acoli language&quot;)"
                        >ach</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Acoma language&quot;)"
                        >kjq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Adangme language&quot;)"
                        >ada</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Adiwasi Oriya language&quot;)"
                        >ort</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aduma language&quot;)"
                        >dma</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Adygei language&quot;)"
                        >ady</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Adyukru language&quot;)"
                        >adj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Adzhar language&quot;)"
                        >kat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aekyom language&quot;)"
                        >awi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aeolic Greek language&quot;)"
                        >grc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Afade language&quot;)"
                        >aal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Afar language&quot;)"
                        >aar</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Afrihili language (Artificial)&quot;)"
                        >afh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Afrikaans language&quot;)"
                        >afr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Afshar language&quot;)"
                        >azb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Agarabe language&quot;)"
                        >agd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Agau language&quot;)"
                        >awn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aglemiut language&quot;)"
                        >esu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Agri language&quot;)"
                        >knn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Agta language&quot;)"
                        >agt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aguacatec language&quot;)"
                        >agu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aguaruna language&quot;)"
                        >agr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Agul language&quot;)"
                        >agx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Agusan Manobo language&quot;)"
                        >msm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Agutaynon language&quot;)"
                        >agn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ahirani language&quot;)"
                        >ahr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ahom language&quot;)"
                        >aho</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ahtena language&quot;)"
                        >aht</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Aja language (Benin and Togo)&quot;)"
                        >ajg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aja language (Sudan)&quot;)"
                        >aja</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ajie language&quot;)"
                        >aji</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Aka language (Central African Republic)&quot;)"
                        >axk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Akan language&quot;)"
                        >aka</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Akatek language&quot;)"
                        >knj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Akei language&quot;)"
                        >tsr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Akhwakh language&quot;)"
                        >akv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Akit language&quot;)"
                        >kvr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Akka language&quot;)"
                        >che</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Akkadian language&quot;)"
                        >akk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aklanon language&quot;)"
                        >akl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alabama language&quot;)"
                        >akz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alacaluf language&quot;)"
                        >alc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aladian language&quot;)"
                        >ald</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alamblak language&quot;)"
                        >amp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alangan language&quot;)"
                        >alj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alas language&quot;)"
                        >btz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alawa language&quot;)"
                        >alh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Albanian language&quot;)"
                        >sqi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aleut language&quot;)"
                        >ale</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Algonquin language&quot;)"
                        >alq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alsea language&quot;)"
                        >aes</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alu-Kurumba language&quot;)"
                        >xua</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alune language&quot;)"
                        >alp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alur language&quot;)"
                        >alz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alutor language&quot;)"
                        >alr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Alyawarra language&quot;)"
                        >aly</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Ama language (Papua New Guinea)&quot;)"
                        >amm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amahuaca language&quot;)"
                        >amc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amanab language&quot;)"
                        >amn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amarag language&quot;)"
                        >amg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ambai language&quot;)"
                        >amk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ambo language (Zambia)&quot;)"
                        >leb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ambonese Malay language&quot;)"
                        >abs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amdo language&quot;)"
                        >adx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amele language&quot;)"
                        >aey</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;American Sign Language&quot;)"
                        >ase</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amganad Ifugao language&quot;)"
                        >ifa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amharic language&quot;)"
                        >amh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amikwa language&quot;)"
                        >ciw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amis language&quot;)"
                        >ami</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ammassalimiut language&quot;)"
                        >kal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ampale language&quot;)"
                        >apz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Amuesha language&quot;)"
                        >ame</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anakalang language&quot;)"
                        >akg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anal language&quot;)"
                        >anm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Andilyaugwa language&quot;)"
                        >aoi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Andoque language&quot;)"
                        >ano</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aneityum language&quot;)"
                        >aty</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anem language&quot;)"
                        >anz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aneme Wake language&quot;)"
                        >aby</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anesu language&quot;)"
                        >ane</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Angal Heneng language&quot;)"
                        >akh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Angami language&quot;)"
                        >njm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Angas language&quot;)"
                        >anc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anggor language&quot;)"
                        >agg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Angika language&quot;)"
                        >anp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Angkola language&quot;)"
                        >akb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anglo-Norman language&quot;)"
                        >xno</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ankave language&quot;)"
                        >aak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anmatyerre language&quot;)"
                        >amx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Annobon language&quot;)"
                        >fab</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Antaisaka language&quot;)"
                        >bjq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anuak language&quot;)"
                        >anu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anufo language&quot;)"
                        >cko</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anuta language&quot;)"
                        >aud</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anyang language&quot;)"
                        >ken</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Anyi language&quot;)"
                        >any</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ao language&quot;)">njo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aomie language&quot;)"
                        >aom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Apalachee language&quot;)"
                        >xap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Apalai language&quot;)"
                        >apy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Apatani language&quot;)"
                        >apt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arabana language&quot;)"
                        >ard</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arabela language&quot;)"
                        >arl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arabic language&quot;)"
                        >ara</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arakanese language&quot;)"
                        >rki</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aramaic language&quot;)"
                        >arc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aranda language&quot;)"
                        >are</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Araona language&quot;)"
                        >aro</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arapaho language&quot;)"
                        >arp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arawak language&quot;)"
                        >arw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arbore language&quot;)"
                        >arv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Archi language&quot;)"
                        >aqc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Areare language&quot;)"
                        >alu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arecuna language&quot;)"
                        >aoc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arekena language&quot;)"
                        >gae</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Argobba language&quot;)"
                        >agj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aribwatsa language&quot;)"
                        >laz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arikara language&quot;)"
                        >ari</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Armenian language&quot;)"
                        >hye</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Armenian, Classical language&quot;)"
                        >xcl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Armenian, Middle language&quot;)"
                        >axm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Armenian, Modern language&quot;)"
                        >hye</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aromanian language&quot;)"
                        >rup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Arosi language&quot;)"
                        >aia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Asaro language&quot;)"
                        >aso</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Assamese language&quot;)"
                        >asm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Assiniboine language&quot;)"
                        >asb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Asu language&quot;)">ppt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Asuri language&quot;)"
                        >asr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ata Manobo language&quot;)"
                        >atd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Atacameno language&quot;)"
                        >kuz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Atakapa language&quot;)"
                        >aqp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Atchin language&quot;)"
                        >upv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Athpare language&quot;)"
                        >aph</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Atinggola language&quot;)"
                        >bld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Atisa language&quot;)"
                        >epi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Atsera language&quot;)"
                        >adz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Atsina language&quot;)"
                        >ats</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Atsugewi language&quot;)"
                        >atw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Atta language&quot;)"
                        >att</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Attic Greek language&quot;)"
                        >grc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Attie language&quot;)"
                        >ati</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Au language&quot;)">avt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aulua language&quot;)"
                        >aul</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Australian Sign Language&quot;)"
                        >asf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Auyana language&quot;)"
                        >kze</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Avaric language&quot;)"
                        >ava</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Avestan language&quot;)"
                        >ave</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Awa language (Eastern Highlands Province, Papua New Guinea)&quot;)"
                        >awb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Awabakal language&quot;)"
                        >awk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Awadhi language&quot;)"
                        >awa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ayangan Ifugao language&quot;)"
                        >ifb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ayizo-gbe language&quot;)"
                        >ayb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Aymara language&quot;)"
                        >aym</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ayta Anchi Sambal language&quot;)"
                        >sgb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ayta Mag Indi language&quot;)"
                        >blx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Azerbaijani language&quot;)"
                        >aze</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Babine language&quot;)"
                        >bcr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bable language&quot;)"
                        >ast</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bada language (Indonesia)&quot;)"
                        >bhz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Badaga language&quot;)"
                        >bfq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Badakhshani language&quot;)"
                        >drw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Badyara language&quot;)"
                        >pbp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bafia language&quot;)"
                        >ksf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bafut language&quot;)"
                        >bfd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bagheli language&quot;)"
                        >bfy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bagirmi language&quot;)"
                        >bmi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bagobo language&quot;)"
                        >obo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bagri language&quot;)"
                        >bgq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bagulal language&quot;)"
                        >kva</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bagyele language&quot;)"
                        >gyi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baham language&quot;)"
                        >bdw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bahinemo language&quot;)"
                        >bjh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bahing language&quot;)"
                        >bhj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bahnar language&quot;)"
                        >bdq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bai language (China)&quot;)"
                        >bca</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baining language&quot;)"
                        >byx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baiso language&quot;)"
                        >bsw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bajau language&quot;)"
                        >bdl</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Baka language (Cameroon and Gabon)&quot;)"
                        >bkc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baka language&quot;)"
                        >bdh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bakairi language&quot;)"
                        >bkq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bakhtiari language&quot;)"
                        >bqi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bakossi language&quot;)"
                        >bss</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bakumpai language&quot;)"
                        >bkr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bakundu language&quot;)"
                        >bdu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Balaesang language&quot;)"
                        >bls</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Balangao language&quot;)"
                        >blw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Balangingì language&quot;)"
                        >sse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Balantak language&quot;)"
                        >blz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Balante language&quot;)"
                        >ble</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Balinese language&quot;)"
                        >ban</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Balti language&quot;)"
                        >bft</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baluchi language&quot;)"
                        >bal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bambara language&quot;)"
                        >bam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bambatana language&quot;)"
                        >baa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bamu River language&quot;)"
                        >bcf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bamun language&quot;)"
                        >bax</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Banda language (Indonesia)&quot;)"
                        >bnd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Banda language&quot;)"
                        >liy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bandjalang language&quot;)"
                        >bdy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bandjoun language&quot;)"
                        >bbj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bangaru language&quot;)"
                        >bgc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Banggai language&quot;)"
                        >bgz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bangubangu language&quot;)"
                        >bnx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bangwa language&quot;)"
                        >nwe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baniwa language&quot;)"
                        >bwi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Banjar Hulu language&quot;)"
                        >bjn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Banjarese language&quot;)"
                        >bjn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bankudu-Balue language&quot;)"
                        >bdu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bantawa language&quot;)"
                        >bap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Banten language&quot;)"
                        >jav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Banton language&quot;)"
                        >bno</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Banyjima language&quot;)"
                        >pnw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bara language (Madagascar)&quot;)"
                        >bhr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Barai language&quot;)"
                        >bbb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Barambu language&quot;)"
                        >brm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Barasana del Norte language&quot;)"
                        >bao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Barasana del Sur language&quot;)"
                        >bsn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bard language&quot;)"
                        >bcj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baré language&quot;)"
                        >bae</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bareë language&quot;)"
                        >pmf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bari language&quot;)"
                        >bfa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baria language&quot;)"
                        >nrb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bariai language&quot;)"
                        >bch</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bariba language&quot;)"
                        >bba</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bartang language&quot;)"
                        >sgh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baruya language&quot;)"
                        >byr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Basa language&quot;)"
                        >bas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Basap language&quot;)"
                        >bdb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bashgali language&quot;)"
                        >bsh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bashkir language&quot;)"
                        >bak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Basque language&quot;)"
                        >eus</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Bassa language (Liberia and Sierra Leone)&quot;)"
                        >bsq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bassari language&quot;)"
                        >bsc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Batad Ifugao language&quot;)"
                        >ifb</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Batak language (Philippines)&quot;)"
                        >bya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Batak language&quot;)"
                        >bya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Batan language&quot;)"
                        >ivv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bati language&quot;)"
                        >btc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bats language&quot;)"
                        >bbl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bau-Jagoi language&quot;)"
                        >sne</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Baule language&quot;)"
                        >bci</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bauré language&quot;)"
                        >brg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bauzi language&quot;)"
                        >bvz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bawo language (Indonesia)&quot;)"
                        >lbx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bayungu language&quot;)"
                        >bxj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Be language&quot;)">onb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Béarnais language&quot;)"
                        >oci</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bedik language&quot;)"
                        >tnr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Begak language&quot;)"
                        >dbj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Beja language&quot;)"
                        >bej</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bekwarra language&quot;)"
                        >bkv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Belarusian language&quot;)"
                        >bel</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bella Coola language&quot;)"
                        >blc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bemba language&quot;)"
                        >bem</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Bembe language (Congo (Brazzaville))&quot;)"
                        >beq</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Bembe language (Lake Tanganyika)&quot;)"
                        >bmb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Benabena language&quot;)"
                        >bef</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Beng language&quot;)"
                        >nhb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Benga language&quot;)"
                        >bng</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bengali language&quot;)"
                        >ben</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Benge language&quot;)"
                        >bww</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bengkulu language&quot;)"
                        >pse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Beothuk language&quot;)"
                        >bue</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Berik language&quot;)"
                        >bkl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Besemah language&quot;)"
                        >pse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Betawi language&quot;)"
                        >bew</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bete language&quot;)"
                        >byf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Betsileo language&quot;)"
                        >plt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Betsimisaraka language&quot;)"
                        >bjq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bezhta language&quot;)"
                        >kap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bhadrawahi language&quot;)"
                        >bhd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bhalesi language&quot;)"
                        >bhd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bhili language&quot;)"
                        >bhb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bhojpuri language&quot;)"
                        >bho</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bhumij language&quot;)"
                        >unr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Biak language&quot;)"
                        >bhw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Biali language&quot;)"
                        >beh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Biangai language&quot;)"
                        >big</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Biat language&quot;)"
                        >cmo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Biatah language&quot;)"
                        >bth</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bidiyo language&quot;)"
                        >bid</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bidjara language&quot;)"
                        >bym</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Big Nambas language&quot;)"
                        >nmb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bihari language&quot;)"
                        >bih</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bijago language&quot;)"
                        >bjg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bikaneri language&quot;)"
                        >rwr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bikol language&quot;)"
                        >bik</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bilaspuri language&quot;)"
                        >kfs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Biliau language&quot;)"
                        >bcu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bilin language&quot;)"
                        >byn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Biloxi language&quot;)"
                        >bll</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bimanese language&quot;)"
                        >bhp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Binandere language&quot;)"
                        >bhg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bini language&quot;)"
                        >bin</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Binongko language&quot;)"
                        >bhq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bintauna language&quot;)"
                        >bne</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Binukid Manobo language&quot;)"
                        >bkd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Binumarien language&quot;)"
                        >bjr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Birhor language&quot;)"
                        >biy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Biri language (Australia)&quot;)"
                        >bzr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Birom language&quot;)"
                        >bom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Birri language&quot;)"
                        >bvq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bisa language&quot;)"
                        >leb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bishnupuriya language&quot;)"
                        >bpy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bisio language&quot;)"
                        >nmg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bislama language&quot;)"
                        >bis</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bisorio language&quot;)"
                        >bir</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Black Carib language&quot;)"
                        >cab</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Black Hmong language&quot;)"
                        >hea</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Black Tai language&quot;)"
                        >blt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Blagar language&quot;)"
                        >beu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Blang language&quot;)"
                        >blr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bobangi language&quot;)"
                        >bni</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bobo Fing language&quot;)"
                        >bbo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bodega Miwok language&quot;)"
                        >csi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bohairic language&quot;)"
                        >cop</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Boiken language&quot;)"
                        >bzf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bokar language&quot;)"
                        >adi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bolaang Mongondow language&quot;)"
                        >mog</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bolia language&quot;)"
                        >bli</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bolinao language&quot;)"
                        >smk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bolongan language&quot;)"
                        >blj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bom language&quot;)">boj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Boma language (Congo)&quot;)"
                        >boh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bomitaba language&quot;)"
                        >zmx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bonan language&quot;)"
                        >peh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bonda language&quot;)"
                        >bfw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bondei language&quot;)"
                        >bou</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bongo language&quot;)"
                        >bot</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bongu language&quot;)"
                        >bpu</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Boni language (French Guiana and Suriname)&quot;)"
                        >djk</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Boni language (Kenya and Somalia)&quot;)"
                        >bob</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Boomu language&quot;)"
                        >bmq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bor language (Dinka)&quot;)"
                        >dks</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bor language (Lwo)&quot;)"
                        >bxb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bora language&quot;)"
                        >boa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Boran language&quot;)"
                        >gax</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bori language&quot;)"
                        >adi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bororo language (Brazil)&quot;)"
                        >bor</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Bororo language (West Africa)&quot;)"
                        >fuv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Boruca language&quot;)"
                        >brn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bosnian language&quot;)"
                        >bos</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bote-Mahi language&quot;)"
                        >bmj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Botlikh language&quot;)"
                        >bph</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Botolan Sambal language&quot;)"
                        >sbl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bouyei language&quot;)"
                        >pcc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Brahui language&quot;)"
                        >brh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Braj language&quot;)"
                        >bra</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Breton language&quot;)"
                        >bre</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bribri language&quot;)"
                        >bzd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Brissa language&quot;)"
                        >any</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;British Sign Language&quot;)"
                        >bfi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Brokpa language&quot;)"
                        >bkk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bube language&quot;)"
                        >bvb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Budukh language&quot;)"
                        >bdk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Buduma language&quot;)"
                        >bdm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bugis language&quot;)"
                        >bug</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bugotu language&quot;)"
                        >bgt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bugun language&quot;)"
                        >bgg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Buin language&quot;)"
                        >buo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bukar Sadong language&quot;)"
                        >sdo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bukawa language&quot;)"
                        >buk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bukusu language&quot;)"
                        >bxk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bulgarian language&quot;)"
                        >bul</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Buli language&quot;)"
                        >bwu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bulu language&quot;)"
                        >bum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bunaba language&quot;)"
                        >bck</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bunak language&quot;)"
                        >bfn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bunama language&quot;)"
                        >bdd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bundeli language&quot;)"
                        >bns</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bune Bonda language&quot;)"
                        >swu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bungku language&quot;)"
                        >bkz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bunun language&quot;)"
                        >bnn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Buol language&quot;)"
                        >blf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Burarra language&quot;)"
                        >bvr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Buriat language&quot;)"
                        >bua</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Burji language&quot;)"
                        >bji</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Burmese language&quot;)"
                        >mya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Buru language&quot;)"
                        >mhs</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Burum language (Papua New Guinea)&quot;)"
                        >bmu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Burushaski language&quot;)"
                        >bsk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bushoong language&quot;)"
                        >buf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bwaidoga language&quot;)"
                        >bwd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Bwamu language&quot;)"
                        >bww</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Byangsi language&quot;)"
                        >bee</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cabecar language&quot;)"
                        >cjp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cacua language&quot;)"
                        >cbv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Caddo language&quot;)"
                        >cad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cahuilla language&quot;)"
                        >chl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Caingua language&quot;)"
                        >kgk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cajun French language&quot;)"
                        >frc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cakavian language&quot;)"
                        >hrv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Callahuaya language&quot;)"
                        >caw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Caló language (Romani)&quot;)"
                        >rmr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Caluyanun language&quot;)"
                        >clu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Camaracoto language&quot;)"
                        >aoc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Campa language&quot;)"
                        >cni</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Camsa language&quot;)"
                        >kbh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Camuhi language&quot;)"
                        >cam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cañari language&quot;)"
                        >quf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Candoshi language&quot;)"
                        >cbu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Canella language&quot;)"
                        >ram</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Canichana language&quot;)"
                        >caz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Capanahua language&quot;)"
                        >kaq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cape Verde Creole language&quot;)"
                        >kea</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Caquinte language&quot;)"
                        >cot</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Car Nicobarese language&quot;)"
                        >caq</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Carapana language (Tucanoan)&quot;)"
                        >cbc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Carian language&quot;)"
                        >xcr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Carib language&quot;)"
                        >car</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Carolinian language&quot;)"
                        >cal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Carpatho-Rusyn language&quot;)"
                        >rue</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Carrier language&quot;)"
                        >crx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cashibo language&quot;)"
                        >cbr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cashinawa language&quot;)"
                        >cbs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Catalan language&quot;)"
                        >cat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Catawba language&quot;)"
                        >chc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Catio language&quot;)"
                        >cto</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cauqui language&quot;)"
                        >jqr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cavineño language&quot;)"
                        >cav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cayapa language&quot;)"
                        >cbi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cayapo language&quot;)"
                        >txu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cayuga language&quot;)"
                        >cay</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cayuvava language&quot;)"
                        >cyb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cebuano language&quot;)"
                        >ceb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Celtiberian language&quot;)"
                        >xce</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Central Bontoc language&quot;)"
                        >bnc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Central Mnong language&quot;)"
                        >cmo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Central Sama language&quot;)"
                        >sml</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Central Subanen language&quot;)"
                        >syb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Central Yupik language&quot;)"
                        >esu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chabacano language&quot;)"
                        >cbk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chacobo language&quot;)"
                        >cao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chagatai language&quot;)"
                        >chg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chaha language&quot;)"
                        >sgw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chahar language&quot;)"
                        >mvf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chakhesang language&quot;)"
                        >nri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chakma language&quot;)"
                        >ccp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chamacoco language&quot;)"
                        >ceg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chamalal language&quot;)"
                        >cji</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chamba Daka language&quot;)"
                        >ccg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chamba Lahuli language&quot;)"
                        >lae</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chambiali language&quot;)"
                        >cdh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chambri language&quot;)"
                        >can</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chamí language&quot;)"
                        >cmi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chamicuro language&quot;)"
                        >ccc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chamling language&quot;)"
                        >rab</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chamorro language&quot;)"
                        >cha</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chang language&quot;)"
                        >nbc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chantel language&quot;)"
                        >chx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chattisgarhi language&quot;)"
                        >hne</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chayahuita language&quot;)"
                        >cbt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chechen language&quot;)"
                        >che</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cheke Holo language&quot;)"
                        >mrn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chemehuevi language&quot;)"
                        >ute</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chemgui language&quot;)"
                        >ady</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chepang language&quot;)"
                        >cdm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cherokee language&quot;)"
                        >chr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cheso language&quot;)"
                        >arg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chewa language&quot;)"
                        >nya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cheyenne language&quot;)"
                        >chy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chiapanec language&quot;)"
                        >cip</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chibcha language&quot;)"
                        >chb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chickasaw language&quot;)"
                        >cic</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chiga language&quot;)"
                        >cgg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chilean Sign Language&quot;)"
                        >csg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chilliwack language&quot;)"
                        >hur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chimane language&quot;)"
                        >cas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chimariko language&quot;)"
                        >cid</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chinali language&quot;)"
                        >cih</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chinbon language&quot;)"
                        >cnb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chinese language&quot;)"
                        >zho</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chinese Sign Language&quot;)"
                        >csl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chinook language&quot;)"
                        >chh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chipaya language&quot;)"
                        >cap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chipewyan language&quot;)"
                        >chp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chiquito language&quot;)"
                        >cax</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chiricahua language&quot;)"
                        >apm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chiriguano language&quot;)"
                        >gui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chiripá language&quot;)"
                        >nhd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chitapavani language&quot;)"
                        >gom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chitimacha language&quot;)"
                        >ctm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chocho language&quot;)"
                        >coz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Choctaw language&quot;)"
                        >cho</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chokwe language&quot;)"
                        >cjk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cholon language&quot;)"
                        >cht</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chontaquiro language&quot;)"
                        >cuj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chopi language&quot;)"
                        >cce</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Choroti language&quot;)"
                        >crt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chorti language&quot;)"
                        >caa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chrau language&quot;)"
                        >crw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chuave language&quot;)"
                        >cjv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chugach language&quot;)"
                        >ems</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chukchi language&quot;)"
                        >ckt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chulupí language&quot;)"
                        >cag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chumash language&quot;)"
                        >chs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Church Slavic language&quot;)"
                        >chu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chutiya language&quot;)"
                        >der</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Chuvash language&quot;)"
                        >chv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cia-cia language&quot;)"
                        >cia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cifundi language&quot;)"
                        >swh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cimbrian language&quot;)"
                        >cim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cirebon language&quot;)"
                        >sun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Clallam language&quot;)"
                        >clm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Coahuilteco language&quot;)"
                        >xcw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cocama language&quot;)"
                        >cod</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cocopa language&quot;)"
                        >coc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cofán language&quot;)"
                        >con</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Colorado language&quot;)"
                        >cof</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Colville language&quot;)"
                        >oka</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Comanche language&quot;)"
                        >com</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Comorian language&quot;)"
                        >swb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Coos language&quot;)"
                        >csz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Coptic language&quot;)"
                        >cop</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Coquille language&quot;)"
                        >coq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cora language&quot;)"
                        >crn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Coreguaje language&quot;)"
                        >coe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cornish language&quot;)"
                        >cor</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Costa Rican Sign Language&quot;)"
                        >csr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cotabato Manobo language&quot;)"
                        >mta</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cree language&quot;)"
                        >cre</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Creek language&quot;)"
                        >mus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Crimean Tatar language&quot;)"
                        >crh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Crioulo language&quot;)"
                        >pov</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Croatian language&quot;)"
                        >hrv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Crow language&quot;)"
                        >cro</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cua language&quot;)">cua</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cuaiquer language&quot;)"
                        >kwi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cubeo language&quot;)"
                        >cub</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cubulco Achi language&quot;)"
                        >acc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cueva language&quot;)"
                        >cuk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cuiba language&quot;)"
                        >cui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Culina language&quot;)"
                        >cul</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cuna language&quot;)"
                        >cuk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cupeño language&quot;)"
                        >cup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Curripaco language&quot;)"
                        >kpc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Cuyunon language&quot;)"
                        >cyo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Czech language&quot;)"
                        >ces</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Daa language&quot;)">kzf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Daba language&quot;)"
                        >dbq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dabida language&quot;)"
                        >dav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dacian language&quot;)"
                        >xdc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dafla language&quot;)"
                        >dap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Daga language&quot;)"
                        >dgz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dagbani language&quot;)"
                        >dag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dagur language&quot;)"
                        >dta</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dahalo language&quot;)"
                        >dal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dairi Pakpak language&quot;)"
                        >btd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dakhini language&quot;)"
                        >dcc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dakota language&quot;)"
                        >dak</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Dalmatian language (Romance)&quot;)"
                        >dlm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Damana language&quot;)"
                        >mbp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dampelasa language&quot;)"
                        >dms</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dan language&quot;)">daf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dangaleat language&quot;)"
                        >daa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Danish language&quot;)"
                        >dan</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dänjong-kä language&quot;)"
                        >sip</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Danuwar Rai language&quot;)"
                        >dhw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Darai language&quot;)"
                        >dry</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dargari language&quot;)"
                        >dhr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dargwa language&quot;)"
                        >dar</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dari language&quot;)"
                        >prs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Daribi language&quot;)"
                        >mps</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dawawa language&quot;)"
                        >dww</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Day language (Chad)&quot;)"
                        >dai</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dayak language&quot;)"
                        >knx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Daza language&quot;)"
                        >dzd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dedua language&quot;)"
                        >ded</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Degema language&quot;)"
                        >deg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dehawali language&quot;)"
                        >vas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dehu language&quot;)"
                        >dhv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Delaware language&quot;)"
                        >del</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Deli language&quot;)"
                        >zlm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dena&apos;ina language&quot;)"
                        >tfn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dendi language&quot;)"
                        >ddn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dengese language&quot;)"
                        >dez</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Desana language&quot;)"
                        >des</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Deswali language&quot;)"
                        >bgc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dhalandji language&quot;)"
                        >dhl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dharawal language&quot;)"
                        >tbh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dhimal language&quot;)"
                        >dhi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dhodia language&quot;)"
                        >dho</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dhurga language&quot;)"
                        >dhu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dibabawon language&quot;)"
                        >mbd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dido language&quot;)"
                        >ddo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Diegueño language&quot;)"
                        >coj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Digaro language&quot;)"
                        >mhu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Digo language&quot;)"
                        >dig</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dimasa language&quot;)"
                        >dis</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ding language&quot;)"
                        >diz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dingal language&quot;)"
                        >mwr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dinka language&quot;)"
                        >din</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Diola Kasa language&quot;)"
                        >csk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Diola language&quot;)"
                        >dyu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Diriku language&quot;)"
                        >diu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Divehi language&quot;)"
                        >div</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Diyari language&quot;)"
                        >dif</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dizi language&quot;)"
                        >mdx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Djapu language&quot;)"
                        >duj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Djaru language&quot;)"
                        >ddj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Djimini language&quot;)"
                        >dyi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Djinang language&quot;)"
                        >dji</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Djingili language&quot;)"
                        >jig</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Djirbal language&quot;)"
                        >dbl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Djuka language&quot;)"
                        >djk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dobel language&quot;)"
                        >kvo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dobu language&quot;)"
                        >dob</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dogri language&quot;)"
                        >dgo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dogrib language&quot;)"
                        >dgr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Doko language (Congo)&quot;)"
                        >ngc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dolakha language&quot;)"
                        >new</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dolgan language&quot;)"
                        >dlg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Domaaki language&quot;)"
                        >dmk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dompago language&quot;)"
                        >dop</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dongola-Kenuz language&quot;)"
                        >kzh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dongxiang language&quot;)"
                        >sce</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Doric Greek language&quot;)"
                        >grc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Doyayo language&quot;)"
                        >dow</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Duala language&quot;)"
                        >dua</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dukawa language&quot;)"
                        >dud</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Dumagat language (Casiguran)&quot;)"
                        >dgc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dumagat language (Umirey)&quot;)"
                        >due</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dumbea language&quot;)"
                        >duf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dumi language&quot;)"
                        >dus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Duna language&quot;)"
                        >duc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dungan language&quot;)"
                        >dng</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dupaninan Agta language&quot;)"
                        >duo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Duruma language&quot;)"
                        >dug</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dusun Deyah language&quot;)"
                        >dun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dutch language&quot;)"
                        >nld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dutch Sign Language&quot;)"
                        >dse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Duungidjawu language&quot;)"
                        >wkw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dyan language&quot;)"
                        >dya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dyula language&quot;)"
                        >dyu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Dzongkha language&quot;)"
                        >dzo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;East Armenian language&quot;)"
                        >hye</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;East Makian language&quot;)"
                        >mky</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;East Uvean language&quot;)"
                        >wls</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eastern Arrernte language&quot;)"
                        >aer</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eastern Bontoc language&quot;)"
                        >bkb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eastern Mnong language&quot;)"
                        >mng</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eastern Pomo language&quot;)"
                        >peb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eastern Yugur language&quot;)"
                        >yuy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ebira language&quot;)"
                        >igb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eblaite language&quot;)"
                        >xeb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Edolo language&quot;)"
                        >etr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Edopi language&quot;)"
                        >dbf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Efik language&quot;)"
                        >efi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eggon language&quot;)"
                        >ego</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Egyptian language&quot;)"
                        >egy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eipo language&quot;)"
                        >eip</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ejagham language&quot;)"
                        >etu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ekajuk language&quot;)"
                        >eka</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ekonda language&quot;)"
                        >lol</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ekpeye language&quot;)"
                        >ekp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Elamite language&quot;)"
                        >elx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Embaloh language&quot;)"
                        >emb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Embu language&quot;)"
                        >ebu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Emerillon language&quot;)"
                        >eme</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Enga language&quot;)"
                        >enq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Engenni language&quot;)"
                        >enn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Enggano language&quot;)"
                        >eno</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;English language&quot;)"
                        >eng</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Enim language&quot;)"
                        >pse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Enya language&quot;)"
                        >gey</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Epena Saija language&quot;)"
                        >sja</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eromanga language&quot;)"
                        >erg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ese Ejja language&quot;)"
                        >ese</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Esselen language&quot;)"
                        >esq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Estonian language&quot;)"
                        >est</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Esuulaalu language&quot;)"
                        >csk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eteocretan language&quot;)"
                        >ecr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ethiopic language&quot;)"
                        >gez</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Etruscan language&quot;)"
                        >ett</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Etsako language&quot;)"
                        >ets</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eudeve language&quot;)"
                        >opt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Even language&quot;)"
                        >eve</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Evenki language&quot;)"
                        >evn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ewe language&quot;)">ewe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ewondo language&quot;)"
                        >ewo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Eyak language&quot;)"
                        >eya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ezaa language&quot;)"
                        >izi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Faiwol language&quot;)"
                        >fai</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Falam Chin language&quot;)"
                        >cfm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fali language&quot;)"
                        >fli</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Faliscan language&quot;)"
                        >xfa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Falor language&quot;)"
                        >fap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fang language&quot;)"
                        >fan</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fanti language&quot;)"
                        >fat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Faroese language&quot;)"
                        >fao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fasu language&quot;)"
                        >faa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fataluku language&quot;)"
                        >ddg</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Fe&apos;fe&apos; language&quot;)"
                        >fmp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fiji Hindi language&quot;)"
                        >hif</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fijian language&quot;)"
                        >fij</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Filipino language&quot;)"
                        >fil</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Finnish language&quot;)"
                        >fin</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Florida language&quot;)"
                        >nlg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Foi language&quot;)">foi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Folopa language&quot;)"
                        >ppo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fon language&quot;)">fon</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fordata language&quot;)"
                        >frd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fore language&quot;)"
                        >for</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Forest Nenets language&quot;)"
                        >yrk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fox language&quot;)">sac</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;French language&quot;)"
                        >fra</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Friulian language&quot;)"
                        >fur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fuliru language&quot;)"
                        >flr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fulnio language&quot;)"
                        >fun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fur language&quot;)">fvr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Furu language&quot;)"
                        >fuu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Futuna language&quot;)"
                        >fud</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Futuna-Aniwa language&quot;)"
                        >fut</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fuyuge language&quot;)"
                        >fuy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Fyam language&quot;)"
                        >pym</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;G//ana language&quot;)"
                        >gnk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;G/wi language&quot;)"
                        >gwj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gã language&quot;)">gaa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gabri language&quot;)"
                        >gab</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gadaba language (Dravidian)&quot;)"
                        >gau</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gadaba language (Munda)&quot;)"
                        >gbj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gaddang language&quot;)"
                        >gad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gade language&quot;)"
                        >ged</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gadi language&quot;)"
                        >gbk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gadsup language&quot;)"
                        >gaj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gafat language&quot;)"
                        >gft</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gagadu language&quot;)"
                        >gbu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gagauz language&quot;)"
                        >gag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gagu language&quot;)"
                        >ggu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gahuku language&quot;)"
                        >gah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Galela language&quot;)"
                        >gbi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Galician language&quot;)"
                        >glg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gallong language&quot;)"
                        >adl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Galoli language&quot;)"
                        >gal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gambai language&quot;)"
                        >sba</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gamit language&quot;)"
                        >gbl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gamo language&quot;)"
                        >gmo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gananwa language&quot;)"
                        >nso</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ganda language&quot;)"
                        >lug</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gangte language&quot;)"
                        >gnb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ganguela language&quot;)"
                        >nba</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gapapaiwa language&quot;)"
                        >pwg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Garawa language&quot;)"
                        >gbc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Garhwali language&quot;)"
                        >gbm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Garo language&quot;)"
                        >grt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gascon language&quot;)"
                        >oci</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gata&apos; language&quot;)"
                        >gaq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gawigl language&quot;)"
                        >ubu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gayardilt language&quot;)"
                        >gyd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gayo language&quot;)"
                        >gay</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gbagyi language&quot;)"
                        >gbr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gbandi language&quot;)"
                        >bza</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gbari language&quot;)"
                        >gby</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gbaya language&quot;)"
                        >gba</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gedaged language&quot;)"
                        >gdd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gedeo language&quot;)"
                        >drs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gen-Gbe language&quot;)"
                        >gej</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Georgian language&quot;)"
                        >kat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;German language&quot;)"
                        >deu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gidabal language&quot;)"
                        >bdy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gilaki language&quot;)"
                        >glk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gilbertese language&quot;)"
                        >gil</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gilyak language&quot;)"
                        >niv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gimi language&quot;)"
                        >gim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ginukh language&quot;)"
                        >gin</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Giryama language&quot;)"
                        >nyf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gisu language&quot;)"
                        >myx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Glavda language&quot;)"
                        >glw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Glosa language (Artificial)&quot;)"
                        >gls</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Goajiro language&quot;)"
                        >guc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Godoberi language&quot;)"
                        >gdo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Godye language&quot;)"
                        >god</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gogo language&quot;)"
                        >gog</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gogodala language&quot;)"
                        >ggw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gokana language&quot;)"
                        >gkn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gola language&quot;)"
                        >gol</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Golin language&quot;)"
                        >gvf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gólo language&quot;)"
                        >bbp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gondi language&quot;)"
                        >gon</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gonja language&quot;)"
                        >gjn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gope language&quot;)"
                        >kiw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gorani language&quot;)"
                        >hac</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gorontalo language&quot;)"
                        >gor</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gothic language&quot;)"
                        >got</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Grebo language&quot;)"
                        >grb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Greek language&quot;)"
                        >grc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Greek Tatar language&quot;)"
                        >uum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guahibo language&quot;)"
                        >guh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guanano language&quot;)"
                        >gvc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guanche language&quot;)"
                        >gnc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guarani language&quot;)"
                        >grn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guarayo language&quot;)"
                        >gyr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guarijío language&quot;)"
                        >var</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guatuso language&quot;)"
                        >gut</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guayabero language&quot;)"
                        >guo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guayaki language&quot;)"
                        >guq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guaymi language&quot;)"
                        >gym</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gude language&quot;)"
                        >gde</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gugada language&quot;)"
                        >ktd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guguyimidjir language&quot;)"
                        >kky</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guhu-Samane language&quot;)"
                        >ghs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gujarati language&quot;)"
                        >guj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gujuri language&quot;)"
                        >gju</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gumasi language&quot;)"
                        >gvs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gumatj language&quot;)"
                        >gnn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gungabula language&quot;)"
                        >gyf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gun-Gbe language&quot;)"
                        >guw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gunian language&quot;)"
                        >gni</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gunu language&quot;)"
                        >yas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gunwinggu language&quot;)"
                        >gup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gupapuyngu language&quot;)"
                        >guf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gureng Gureng language&quot;)"
                        >gnr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gurian language&quot;)"
                        >kat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gurma language&quot;)"
                        >gux</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gusii language&quot;)"
                        >guz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Guyuk language&quot;)"
                        >lnu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gwa language (Ghana)&quot;)"
                        >gwx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gwandara language&quot;)"
                        >gwn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gwedena language&quot;)"
                        >gdn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gwich&apos;in language&quot;)"
                        >gwi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Gyarung language&quot;)"
                        >jya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ha language&quot;)">haq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Haida language&quot;)"
                        >hai</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Haisla language&quot;)"
                        >has</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Haka Chin language&quot;)"
                        >cnh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hakétia language&quot;)"
                        >lad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Halbi language&quot;)"
                        >hlb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Halia language&quot;)"
                        >hla</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Halopa language&quot;)"
                        >gaw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ham language&quot;)">dad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hanga language (Ghana)&quot;)"
                        >hag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hanga language (Kenya)&quot;)"
                        >luy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hani language&quot;)"
                        >hni</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hanunóo language&quot;)"
                        >hnn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Harari language&quot;)"
                        >har</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Harauti language&quot;)"
                        >hoj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Haroi language&quot;)"
                        >hro</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Harsusi language&quot;)"
                        >hss</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hatam language&quot;)"
                        >had</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hattic language&quot;)"
                        >xht</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hausa language&quot;)"
                        >hau</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Havasupai language&quot;)"
                        >yuf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hawaiian language&quot;)"
                        >haw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Haya language&quot;)"
                        >hay</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hayu language&quot;)"
                        >vay</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hazara language&quot;)"
                        >haz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hazili language&quot;)"
                        >kup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hedi language&quot;)"
                        >xed</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hehe language&quot;)"
                        >heh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Heiltsuk language&quot;)"
                        >hei</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Herero language&quot;)"
                        >her</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hidatsa language&quot;)"
                        >hid</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Higaonon language&quot;)"
                        >mba</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hiligaynon language&quot;)"
                        >hil</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Himachali language&quot;)"
                        >him</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Himba language&quot;)"
                        >dhm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hindi language&quot;)"
                        >hin</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hiri Motu language&quot;)"
                        >hmo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hitchiti language&quot;)"
                        >mik</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hittite language&quot;)"
                        >hit</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hixkaryana language&quot;)"
                        >hix</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hmar language&quot;)"
                        >hmr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hmong language&quot;)"
                        >hmn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hmong Njua language&quot;)"
                        >hnj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ho language&quot;)">hoc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Holoholo language&quot;)"
                        >hoo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hopi language&quot;)"
                        >hop</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hre language&quot;)">hre</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Hua language (Papua New Guinea)&quot;)"
                        >ygr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hua Hmong language&quot;)"
                        >hmd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hua Lisu language&quot;)"
                        >lis</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hualapai language&quot;)"
                        >yuf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Huambisa language&quot;)"
                        >hub</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Huanca language&quot;)"
                        >qvw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Huao language&quot;)"
                        >auc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Huichol language&quot;)"
                        >hch</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hula language&quot;)"
                        >hul</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Huli language&quot;)"
                        >hui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hunde language&quot;)"
                        >hke</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hungana language&quot;)"
                        >hum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hungarian language&quot;)"
                        >hun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hunzib language&quot;)"
                        >huz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hupa language&quot;)"
                        >hup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Hurrian language&quot;)"
                        >xhu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iai language&quot;)">iai</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iamalele language&quot;)"
                        >yml</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iatmul language&quot;)"
                        >ian</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ibaloi language&quot;)"
                        >ibl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iban language&quot;)"
                        >iba</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ibanag language&quot;)"
                        >ibg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ibani language&quot;)"
                        >iby</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iberian language&quot;)"
                        >xib</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ibibio language&quot;)"
                        >ibb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ica language&quot;)">arh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Icelandic language&quot;)"
                        >isl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Idaca language&quot;)"
                        >idd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Idaté language&quot;)"
                        >idt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Idoma language&quot;)"
                        >idu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Idu language&quot;)">clk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iduna language&quot;)"
                        >viv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Igala language&quot;)"
                        >igl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Igbo language&quot;)"
                        >ibo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Igede language&quot;)"
                        >ige</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iha language&quot;)">ihp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ijebu language&quot;)"
                        >yor</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ijo language&quot;)">ijc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ik language&quot;)">ikx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ikwere language&quot;)"
                        >ikw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ikwo language&quot;)"
                        >izi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ila language&quot;)">ilb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ilianen Manobo language&quot;)"
                        >mbi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Illinois language&quot;)"
                        >mia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iloko language&quot;)"
                        >ilo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ilongot language&quot;)"
                        >ilk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Imbo Ungu language&quot;)"
                        >imo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Imeretian language&quot;)"
                        >kat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Inapari language&quot;)"
                        >inp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Inari Sami language&quot;)"
                        >smn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Indonesian language&quot;)"
                        >ind</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Indonesian Sign Language&quot;)"
                        >inl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ingalik language&quot;)"
                        >ing</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ingano language&quot;)"
                        >inj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ingassana language&quot;)"
                        >tbi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ingilo language&quot;)"
                        >kat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ingrian language&quot;)"
                        >izh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ingush language&quot;)"
                        >inh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Inoke language&quot;)"
                        >ino</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Inor language&quot;)"
                        >ior</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Interglossa language (Artificial)&quot;)"
                        >igs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Inuktitut language&quot;)"
                        >iku</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Inupiaq language&quot;)"
                        >ipk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Inuvialuktun language&quot;)"
                        >ikt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ionic Greek language&quot;)"
                        >grc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iowa language&quot;)"
                        >iow</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ipili language&quot;)"
                        >ipi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ipurina language&quot;)"
                        >apu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iquito language&quot;)"
                        >iqu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Irahutu language&quot;)"
                        >irh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iranxe language&quot;)"
                        >irn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iraqw language&quot;)"
                        >irk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Irish language&quot;)"
                        >gle</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Irula language&quot;)"
                        >iru</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Irumu language&quot;)"
                        >iou</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ishkashmi language&quot;)"
                        >sgl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Isinay language&quot;)"
                        >inn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Island Carib language&quot;)"
                        >crb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Isleta language&quot;)"
                        >tix</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Isneg language&quot;)"
                        >isd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Istro-Romanian language&quot;)"
                        >ruo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Italian language&quot;)"
                        >ita</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Italian Sign Language&quot;)"
                        >ise</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Itawis language&quot;)"
                        >itv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Itbayat language&quot;)"
                        >ivb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Itonama language&quot;)"
                        >ito</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Itsekiri language&quot;)"
                        >its</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Itzá language&quot;)"
                        >itz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iwaidji language&quot;)"
                        >ibd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Iwam language&quot;)"
                        >iwm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ixcateco language&quot;)"
                        >ixc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Izi language&quot;)">izi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jabo language&quot;)"
                        >grj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jah Hut language&quot;)"
                        >jah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jaipuri language&quot;)"
                        >dhd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jama Mapun language&quot;)"
                        >sjm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jamee language&quot;)"
                        >min</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jaminaua language&quot;)"
                        >yaa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Japanese language&quot;)"
                        >jpn</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Japanese--Heian period, 794-1185 language&quot;)"
                        >ojp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jarai language&quot;)"
                        >jra</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jaunsari language&quot;)"
                        >jns</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Javanese language&quot;)"
                        >jav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jebel Nefusa language&quot;)"
                        >jbn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jeh language&quot;)">jeh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jeli language&quot;)"
                        >jek</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jemez language&quot;)"
                        >tow</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jenukuruba language&quot;)"
                        >kan</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jicaque language&quot;)"
                        >jic</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jicarilla language&quot;)"
                        >apj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jindjibandji language&quot;)"
                        >yij</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jirel language&quot;)"
                        >jul</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jita language&quot;)"
                        >jit</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jongor language&quot;)"
                        >mmy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Juang language&quot;)"
                        >jun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Judeo-Arabic language&quot;)"
                        >jrb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Judeo-Italian language&quot;)"
                        >itk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Judeo-Persian language&quot;)"
                        >jpr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Judeo-Tajik language&quot;)"
                        >bhh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Judeo-Tat language&quot;)"
                        >jdt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jukun language&quot;)"
                        >jbu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jupda language&quot;)"
                        >jup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Jurchen language&quot;)"
                        >juc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kabardian language&quot;)"
                        >kbd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kabre language&quot;)"
                        >kbp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kabyle language&quot;)"
                        >kab</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kachchhi language&quot;)"
                        >kfr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kachin language&quot;)"
                        >kac</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kadu language&quot;)"
                        >kdv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaffa language&quot;)"
                        >kbr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kagaba language&quot;)"
                        >kog</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kagate language&quot;)"
                        >syw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kagayanen language&quot;)"
                        >cgc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kagoma language&quot;)"
                        >kdm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kagoro language (Nigeria)&quot;)"
                        >kcg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaguru language&quot;)"
                        >kki</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kahayan language&quot;)"
                        >nij</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaike language&quot;)"
                        >kzq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaili language&quot;)"
                        >pbz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaingang language&quot;)"
                        >kgp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kairi language&quot;)"
                        >klq</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Kaiwa language (Papua New Guinea)&quot;)"
                        >kbm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaje language&quot;)"
                        >kaj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kajkavian language&quot;)"
                        >hrv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaki Ae language&quot;)"
                        >tbd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kako language&quot;)"
                        >kkj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kakwa language&quot;)"
                        >keo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalabari language&quot;)"
                        >ijn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalabra language&quot;)"
                        >kzz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalagan language&quot;)"
                        >kqe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalam language&quot;)"
                        >kmh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalamian language&quot;)"
                        >tbk</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Kalanga language (Botswana and Zimbabwe)&quot;)"
                        >kck</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalapuya language&quot;)"
                        >kyl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalash language&quot;)"
                        >kls</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalâtdlisut language&quot;)"
                        >kal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalenjin language&quot;)"
                        >kln</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalispel language&quot;)"
                        >fla</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalkatungu language&quot;)"
                        >ktg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kalmyk language&quot;)"
                        >xal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaluli language&quot;)"
                        >bco</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamaiurá language&quot;)"
                        >kay</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamano language&quot;)"
                        >kbq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamasau language&quot;)"
                        >kms</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamassin language&quot;)"
                        >xas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamba language&quot;)"
                        >kam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kambera language&quot;)"
                        >xbr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamchadal language&quot;)"
                        >itl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamilaroi language&quot;)"
                        >kld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamoro language&quot;)"
                        >kgq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamtuk language&quot;)"
                        >kmt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamula language&quot;)"
                        >xla</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kamwe language&quot;)"
                        >hig</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kana language&quot;)"
                        >ogo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kanakuru language&quot;)"
                        >kna</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kanauji language&quot;)"
                        >bjj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kanauri language&quot;)"
                        >kfk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kanembu language&quot;)"
                        >kbl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kangri language&quot;)"
                        >xnr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kanite language&quot;)"
                        >kmu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kanjobal language&quot;)"
                        >kjb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kankanay language&quot;)"
                        >kne</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kannada language&quot;)"
                        >kan</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kanuri language&quot;)"
                        >kau</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaonde language&quot;)"
                        >kqn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kapau language&quot;)"
                        >hmt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kapauku language&quot;)"
                        >ekg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kapingamarangi language&quot;)"
                        >kpg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kapone language&quot;)"
                        >kdk</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Kara language (Central African Republic and Sudan)&quot;)"
                        >kah</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Kara language (Papua New Guinea)&quot;)"
                        >leu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karachay-Balkar language&quot;)"
                        >krc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karaim language&quot;)"
                        >kdr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kara-Kalpak language&quot;)"
                        >kaa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karamojong language&quot;)"
                        >kdj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karang language (Cameroon)&quot;)"
                        >kzr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karanga language&quot;)"
                        >kth</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karao language&quot;)"
                        >kyj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karata language&quot;)"
                        >kpt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kare language&quot;)"
                        >kbj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karelian language&quot;)"
                        >krl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karipuna Creole language&quot;)"
                        >kmv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kariri language&quot;)"
                        >kzw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karitiana language&quot;)"
                        >ktn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karko language&quot;)"
                        >kko</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karksi language&quot;)"
                        >est</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karo language (Brazil)&quot;)"
                        >arr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karo-Batak language&quot;)"
                        >btx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karok language&quot;)"
                        >kyh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Karré language&quot;)"
                        >kbn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kasaba language&quot;)"
                        >iru</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kasem language&quot;)"
                        >xsm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kashaya language&quot;)"
                        >kju</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kashmiri language&quot;)"
                        >kas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kashubian language&quot;)"
                        >csb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kassonke language&quot;)"
                        >kao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Katab language&quot;)"
                        >kcg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kâte language&quot;)"
                        >kmg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Katingan language&quot;)"
                        >nij</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kato language&quot;)"
                        >ktw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kattang language&quot;)"
                        >kda</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Katu language&quot;)"
                        >kax</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaulong language&quot;)"
                        >pss</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaure language&quot;)"
                        >bpp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaurna language&quot;)"
                        >zku</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaw language&quot;)">ahk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kawaiisu language&quot;)"
                        >xaw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kawi language&quot;)"
                        >kaw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kayabi language&quot;)"
                        >kyz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kayan language&quot;)"
                        >pdu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kayapa Kallahan language&quot;)"
                        >kak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kaytetye language&quot;)"
                        >gbb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kayu Agung language&quot;)"
                        >kge</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kazakh language&quot;)"
                        >kaz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kedang language&quot;)"
                        >ksx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kekchi language&quot;)"
                        >kek</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kela language&quot;)"
                        >kel</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kele language&quot;)"
                        >keb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Keley-i Kallahan language&quot;)"
                        >ify</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kemak language&quot;)"
                        >kem</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kemant language&quot;)"
                        >ahg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kenga language&quot;)"
                        >kyq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kera language&quot;)"
                        >ker</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kerebe language&quot;)"
                        >ked</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kerinci language&quot;)"
                        >kvr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ket language&quot;)">ket</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kete language&quot;)"
                        >kcv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ketengban language&quot;)"
                        >xte</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kgalagadi language&quot;)"
                        >xkv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khalaj language&quot;)"
                        >kjf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khaling language&quot;)"
                        >klr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khalkha language&quot;)"
                        >khk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kham language&quot;)"
                        >xam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khamti language&quot;)"
                        >kht</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khandesi language&quot;)"
                        >khn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khanty language&quot;)"
                        >kca</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khari Boli language&quot;)"
                        >hin</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kharia language&quot;)"
                        >khr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khasi language&quot;)"
                        >kha</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khetrani language&quot;)"
                        >xhe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khezha language&quot;)"
                        >nkh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khinalugh language&quot;)"
                        >kjj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khitan language&quot;)"
                        >zkt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khmu&apos; language&quot;)"
                        >kjg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khoikhoi language&quot;)"
                        >xuu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khorezmian Turkic language&quot;)"
                        >zkh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khotanese language&quot;)"
                        >kho</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khotta language&quot;)"
                        >mai</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khowar language&quot;)"
                        >khw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khuf language&quot;)"
                        >sgh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khumi Awa language&quot;)"
                        >cka</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khumi language&quot;)"
                        >cnk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khün language&quot;)"
                        >kkh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khvarshi language&quot;)"
                        >khv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Khyang language&quot;)"
                        >csh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kiangan Ifugao language&quot;)"
                        >ifk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kickapoo language&quot;)"
                        >kic</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kifuliru language&quot;)"
                        >flr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kikuyu language&quot;)"
                        >kik</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kildin Sami language&quot;)"
                        >sjd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kiliwa language&quot;)"
                        >klb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kimbundu language&quot;)"
                        >kmb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kinaray-a language&quot;)"
                        >krj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kinga language&quot;)"
                        >zga</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kingwana language&quot;)"
                        >swc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kinyarwanda language&quot;)"
                        >kin</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kiowa language&quot;)"
                        >kio</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kipchak language&quot;)"
                        >kue</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kipsikis language&quot;)"
                        >kln</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kiriwinian language&quot;)"
                        >kij</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kisa language&quot;)"
                        >luy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kisar language&quot;)"
                        >kje</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kissi language&quot;)"
                        >kiz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kitabwa language&quot;)"
                        >tap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kitja language&quot;)"
                        >gia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kituba language&quot;)"
                        >ktu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Klamath language&quot;)"
                        >kla</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Klingon language (Artificial)&quot;)"
                        >tlh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kluet language&quot;)"
                        >btz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koasati language&quot;)"
                        >cku</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kobon language&quot;)"
                        >kpw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kodagu language&quot;)"
                        >kfa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koho language&quot;)"
                        >kpm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kohumono language&quot;)"
                        >bcs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koiari language&quot;)"
                        >kbk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kok Borok language&quot;)"
                        >trp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kolo language&quot;)"
                        >bhp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kolokuma language&quot;)"
                        >ijc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kom language (Cameroon)&quot;)"
                        >bkm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kom language (India)&quot;)"
                        >kmm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Komba language&quot;)"
                        >kpf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kombai language&quot;)"
                        >tyn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kombe language&quot;)"
                        >nui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Komering language&quot;)"
                        >kge</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Komi language&quot;)"
                        >kom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Komi-Permyak language&quot;)"
                        >koi</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Komi-Yaz&apos;va language&quot;)"
                        >kpv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Komo language (Congo)&quot;)"
                        >kmw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Komodo language&quot;)"
                        >kvh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Komunku language&quot;)"
                        >snp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Konda language&quot;)"
                        >kfc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kongara language&quot;)"
                        >nas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kongo language&quot;)"
                        >kon</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koniagmiut language&quot;)"
                        >ems</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Konkani language&quot;)"
                        >kok</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Konkomba language&quot;)"
                        >xon</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Konyak language&quot;)"
                        >nbe</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Koongo language (Western Kongo)&quot;)"
                        >kng</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koozime language&quot;)"
                        >ozm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kopagmiut language&quot;)"
                        >ikt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Korana language&quot;)"
                        >kqz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Korape language&quot;)"
                        >kpr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Korean language&quot;)"
                        >kor</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Korean--Middle Korean, 935-1500 language&quot;)"
                        >okm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Korean--To 935 language&quot;)"
                        >oko</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Korekore language&quot;)"
                        >sna</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koronadal Blaan language&quot;)"
                        >bpr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Korowai language&quot;)"
                        >khe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Korwa language&quot;)"
                        >kfp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koryak language&quot;)"
                        >kpy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kosarek language&quot;)"
                        >kkl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kosena language&quot;)"
                        >kze</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koshti language (Marathi)&quot;)"
                        >mar</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kota language (India)&quot;)"
                        >kfe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kott language&quot;)"
                        >zko</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koya language&quot;)"
                        >kff</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koyraboro Senni language&quot;)"
                        >ses</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Koyukon language&quot;)"
                        >koy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kpelle language&quot;)"
                        >kpe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kposo language&quot;)"
                        >kpo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kraho language&quot;)"
                        >xra</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kreish language&quot;)"
                        >kpl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Krio language&quot;)"
                        >kri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kriol language&quot;)"
                        >rop</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kristang language&quot;)"
                        >mcm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Krongo language&quot;)"
                        >kgo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kru language&quot;)">klu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kuanyama language&quot;)"
                        >kua</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kubachi language&quot;)"
                        >dar</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kubu language&quot;)"
                        >kvb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kudali language&quot;)"
                        >gom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kui language (Mon-Khmer)&quot;)"
                        >kdt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kui language&quot;)">kxu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kukatja language&quot;)"
                        >kux</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kuki language&quot;)"
                        >tcz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kuku language&quot;)"
                        >bfa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kuku-Yalanji language&quot;)"
                        >gvn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kukwa language&quot;)"
                        >kkw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kùláál language&quot;)"
                        >glj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kului language&quot;)"
                        >kfx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kulung language&quot;)"
                        >kle</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kumak language&quot;)"
                        >nee</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kumali language&quot;)"
                        >kra</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kumauni language&quot;)"
                        >kfy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kumbainggar language&quot;)"
                        >kgs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kumyk language&quot;)"
                        >kum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kunabi language&quot;)"
                        >knn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kunama language&quot;)"
                        >kun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kunimaipa language&quot;)"
                        >kup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kuo language&quot;)">xuo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kupia language&quot;)"
                        >key</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kurada language&quot;)"
                        >kud</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kuranko language&quot;)"
                        >knk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kurdish language&quot;)"
                        >kur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kuria language&quot;)"
                        >kuj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kurku language&quot;)"
                        >kfq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kurmali language&quot;)"
                        >kyw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kurukh language&quot;)"
                        >kru</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kurumba language&quot;)"
                        >kfi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kusaal language&quot;)"
                        >kus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kusaie language&quot;)"
                        >kos</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kusunda language&quot;)"
                        >kgg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kutenai language&quot;)"
                        >kut</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Kuuku Ya&apos;u language&quot;)"
                        >kuy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kuvakan language&quot;)"
                        >bak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kuvi language&quot;)"
                        >kxv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwafi language&quot;)"
                        >mas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwaio language&quot;)"
                        >kwd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwakiutl language&quot;)"
                        >kwk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwami language&quot;)"
                        >ksq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwangali language&quot;)"
                        >kwn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwara&apos;ae language&quot;)"
                        >kwf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwatay language&quot;)"
                        >cwt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kweni language&quot;)"
                        >goa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwerba language&quot;)"
                        >kwe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwese language&quot;)"
                        >kws</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kwiri language&quot;)"
                        >bri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Kyrgyz language&quot;)"
                        >kir</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Laadi language&quot;)"
                        >ldi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Laal language&quot;)"
                        >gdm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Laamang language&quot;)"
                        >hia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Labo language&quot;)"
                        >mwi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lacandon language&quot;)"
                        >lac</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ladakhi language&quot;)"
                        >lbj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ladin language&quot;)"
                        >lld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ladino language&quot;)"
                        >lad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Laguna language&quot;)"
                        >kjq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Laha language (Vietnam)&quot;)"
                        >lkh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lahnda language&quot;)"
                        >lah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lahu language&quot;)"
                        >lhu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lahuli language&quot;)"
                        >lbf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Laizo language (Burma)&quot;)"
                        >cfm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lak language&quot;)">lbe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lakher language&quot;)"
                        >mrh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lakona language&quot;)"
                        >lkn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lakota language&quot;)"
                        >lkt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lala language&quot;)"
                        >nrz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lamaholot language&quot;)"
                        >slp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lamalama language&quot;)"
                        >lby</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lamandau language&quot;)"
                        >xdy</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Lamba language (Zambia and Congo)&quot;)"
                        >lam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lambadi language&quot;)"
                        >lmn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lambau language&quot;)"
                        >snp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lamé language (Cameroon)&quot;)"
                        >lme</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lamma language&quot;)"
                        >lev</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lampung language&quot;)"
                        >ljp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lanao Moro language&quot;)"
                        >mrw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lango language&quot;)"
                        >lno</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lao language&quot;)">lao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Laqua language&quot;)"
                        >laq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lardil language&quot;)"
                        >lbz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Larike-Wakasihu language&quot;)"
                        >alo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Larrakia language&quot;)"
                        >lrg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lashkh language&quot;)"
                        >sva</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Latin language&quot;)"
                        >lat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Latvian language&quot;)"
                        >lav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lau language&quot;)">llu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lavongai language&quot;)"
                        >lcm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lavukaleve language&quot;)"
                        >lvk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lawangan language&quot;)"
                        >lbx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Laz language&quot;)">lzz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lebou language&quot;)"
                        >wol</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lefana language&quot;)"
                        >lef</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Leko language&quot;)"
                        >lse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lele language (Chad)&quot;)"
                        >lln</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lematang language&quot;)"
                        >mui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lembak Bilide language&quot;)"
                        >liw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lenakel language&quot;)"
                        >tnl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lenca language&quot;)"
                        >len</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lendu language&quot;)"
                        >led</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lengua language&quot;)"
                        >leg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lenje language&quot;)"
                        >leh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lepcha language&quot;)"
                        >lep</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lese language&quot;)"
                        >les</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Letri lgona language&quot;)"
                        >lex</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Leuangiua language&quot;)"
                        >ojv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lezgian language&quot;)"
                        >lez</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lhomi language&quot;)"
                        >lhm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lhota language&quot;)"
                        >njh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Li language&quot;)">dij</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Liangmai Naga language&quot;)"
                        >njn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ligbi language&quot;)"
                        >lig</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lilima language&quot;)"
                        >kck</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lillooet language&quot;)"
                        >lil</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Limbu language&quot;)"
                        >lif</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Limbum language&quot;)"
                        >lmp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Limburgish language&quot;)"
                        >lim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Limilngan language&quot;)"
                        >lmc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Linda language&quot;)"
                        >liy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lindrou language&quot;)"
                        >lid</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lintang language&quot;)"
                        >pse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lisu language&quot;)"
                        >lis</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lithuanian language&quot;)"
                        >lit</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Livonian language&quot;)"
                        >liv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lobedu language&quot;)"
                        >nso</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Logo language&quot;)"
                        >log</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Logooli language&quot;)"
                        >rag</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Lojban language (Artificial)&quot;)"
                        >jbo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Loko language&quot;)"
                        >lok</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lolak language&quot;)"
                        >llq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lom language&quot;)">mfb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Loma language&quot;)"
                        >lom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lombard language&quot;)"
                        >lmo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Longgu language&quot;)"
                        >lgu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Longuda language&quot;)"
                        >lnu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Loniu language&quot;)"
                        >los</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lonwolwol language&quot;)"
                        >crc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lopa language (Nepal)&quot;)"
                        >loy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lorhon language&quot;)"
                        >lor</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Losengo language&quot;)"
                        >lse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lote language&quot;)"
                        >uvl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lotuko language&quot;)"
                        >lot</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lou language&quot;)">loj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lovari language&quot;)"
                        >rmy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lower Sorbian language&quot;)"
                        >dsb</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Lower Tanudan Kalinga language&quot;)"
                        >kml</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lozi language&quot;)"
                        >loz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lü language&quot;)">khb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Luba-Katanga language&quot;)"
                        >lub</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Luba-Lulua language&quot;)"
                        >lua</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lucazi language&quot;)"
                        >lch</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ludic language&quot;)"
                        >lud</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lugbara language&quot;)"
                        >lgg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Luiseño language&quot;)"
                        >lui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lule language&quot;)"
                        >vil</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lule Sami language&quot;)"
                        >smj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lumbu language (Gabon)&quot;)"
                        >lup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lummi language&quot;)"
                        >str</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lunda language&quot;)"
                        >lun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lungchang language&quot;)"
                        >nst</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lungu language&quot;)"
                        >mgr</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Luo language (Kenya and Tanzania)&quot;)"
                        >luo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lushai language&quot;)"
                        >lus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lusi language&quot;)"
                        >khl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Luvale language&quot;)"
                        >lue</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Luwian language&quot;)"
                        >hit</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Luxembourgish language&quot;)"
                        >ltz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Luyana language&quot;)"
                        >lyn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Luyia language&quot;)"
                        >luy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lwo language (Sudan)&quot;)"
                        >lwo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lycian language&quot;)"
                        >xlc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lydian language&quot;)"
                        >xld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Lyele language&quot;)"
                        >gnh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ma language&quot;)">grg</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Maa language (Southeastern Asia)&quot;)"
                        >cma</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maa language (Vietnam)&quot;)"
                        >cma</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maanyan language&quot;)"
                        >mhy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maba language&quot;)"
                        >mde</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maban language&quot;)"
                        >mfz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mabuiag language&quot;)"
                        >mwp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maca language&quot;)"
                        >mca</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Macaguan language&quot;)"
                        >mbn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Macedonian language&quot;)"
                        >mkd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Machiguenga language&quot;)"
                        >mcb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Macú language&quot;)"
                        >mbr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Macuna language&quot;)"
                        >myy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Macusi language&quot;)"
                        >mbc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mada language (Cameroon)&quot;)"
                        >mxu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Madaglashti language&quot;)"
                        >prs</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Ma&apos;di language (Uganda and Sudan)&quot;)"
                        >mhi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Madiya-Gondi language&quot;)"
                        >mrr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Madurese language&quot;)"
                        >mad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mafa language&quot;)"
                        >maf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Magahi language&quot;)"
                        >mag</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Magi language (Southern Highlands Province, Papua New Guinea)&quot;)"
                        >aoe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Magindanao language&quot;)"
                        >mdh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mahas-Fiyadikka language&quot;)"
                        >fia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mahican language&quot;)"
                        >mjy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mahri language&quot;)"
                        >gdq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mai Brat language&quot;)"
                        >ayz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mailu language&quot;)"
                        >mgu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maisin language&quot;)"
                        >mbq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maithili language&quot;)"
                        >mai</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maiya language&quot;)"
                        >mvy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Majingai language&quot;)"
                        >mwm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maka language (Cameroon)&quot;)"
                        >mcp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Makasai language&quot;)"
                        >mkz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Makasar language&quot;)"
                        >mak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Makonde language&quot;)"
                        >kde</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Maku&apos;a language (Indonesia)&quot;)"
                        >lva</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Malagasy language&quot;)"
                        >mlg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Malayalam language&quot;)"
                        >mal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Male language (Ethiopia)&quot;)"
                        >mdy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Malfaxal language&quot;)"
                        >mlx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Malgwa language&quot;)"
                        >mfi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maltese language&quot;)"
                        >mlt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Malto language&quot;)"
                        >mjt</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Malu language (Solomon Islands)&quot;)"
                        >mlu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Malvi language&quot;)"
                        >mup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mamanwa language&quot;)"
                        >mmn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mamara language&quot;)"
                        >myk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mambai language&quot;)"
                        >mgm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mambwe language&quot;)"
                        >mgr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mambwe-Lungu language&quot;)"
                        >mgr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mampruli language&quot;)"
                        >maw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mamvu language&quot;)"
                        >mdi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Managalasi language&quot;)"
                        >mcq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Manam language&quot;)"
                        >mva</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Manambu language&quot;)"
                        >mle</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Manchu language&quot;)"
                        >mnc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mandaean language&quot;)"
                        >mid</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mandak language&quot;)"
                        >mmx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mandan language&quot;)"
                        >mhq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mandar language&quot;)"
                        >mdr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mandeali language&quot;)"
                        >mjl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mandegusu language&quot;)"
                        >sbb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mandingo language&quot;)"
                        >man</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mandjak language&quot;)"
                        >mfv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mandjildjara language&quot;)"
                        >mpj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mangaian language&quot;)"
                        >rar</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mangala language&quot;)"
                        >mem</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mangap language&quot;)"
                        >mna</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mangarayi language&quot;)"
                        >mpc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mangareva language&quot;)"
                        >mrv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mangbetu language&quot;)"
                        >mdj</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Manggarai language (Indonesia)&quot;)"
                        >mqy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mangseng language&quot;)"
                        >mbh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mangue language&quot;)"
                        >cjr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mangyan language&quot;)"
                        >iry</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Manipuri language&quot;)"
                        >mni</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mankanya language&quot;)"
                        >knf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mankon language&quot;)"
                        >nge</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mano language&quot;)"
                        >mev</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mansaka language&quot;)"
                        >msk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mansi language&quot;)"
                        >mns</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Manui language&quot;)"
                        >wow</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Manuvu language&quot;)"
                        >obo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Manx language&quot;)"
                        >glv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Manyika language&quot;)"
                        >mxc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mao Naga language&quot;)"
                        >nbi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maonan language&quot;)"
                        >mmd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maori language&quot;)"
                        >mri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mapuche language&quot;)"
                        >arn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mara language (Australia)&quot;)"
                        >mec</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maram language&quot;)"
                        >nma</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maranao language&quot;)"
                        >mrw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maranungku language&quot;)"
                        >zmr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Marari language&quot;)"
                        >bfy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Marathi language&quot;)"
                        >mar</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Margany language&quot;)"
                        >zmc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maricopa language&quot;)"
                        >mrc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Marigl language&quot;)"
                        >gvf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maring language&quot;)"
                        >mbw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Marovo language&quot;)"
                        >mvo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Marshallese language&quot;)"
                        >mah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Martu Wangka language&quot;)"
                        >mpj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Martuyhunira language&quot;)"
                        >vma</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maru language&quot;)"
                        >mhx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Marwari language&quot;)"
                        >mwr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Masa language (Chadic)&quot;)"
                        >mcn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Masacali language&quot;)"
                        >mbl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Masai language&quot;)"
                        >mas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Masbateno language&quot;)"
                        >msb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mascoi language&quot;)"
                        >emo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mashco language&quot;)"
                        >amr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Masikoro language&quot;)"
                        >msh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Massachuset language&quot;)"
                        >wam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;MatigSalug language&quot;)"
                        >mbt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Matlatzinca language&quot;)"
                        >mat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mator language&quot;)"
                        >mtm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mattole language&quot;)"
                        >mvb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Matumbi language&quot;)"
                        >mgw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mau language&quot;)">mxx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maue language&quot;)"
                        >mav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maung language&quot;)"
                        >mph</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mawasangka language&quot;)"
                        >mnb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Maxi language&quot;)"
                        >mxl</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Ma&apos;ya language (Indonesia)&quot;)"
                        >slz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mayo language (Piman)&quot;)"
                        >mfy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mayoruna language&quot;)"
                        >mcf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mayoyao Ifugao language&quot;)"
                        >ifu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbai language (Moissala)&quot;)"
                        >myb</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Mbala language (Bandundu, Congo)&quot;)"
                        >mdp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbara language (Chad)&quot;)"
                        >mpk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbaya language&quot;)"
                        >kbc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbete language&quot;)"
                        >mdt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbili language&quot;)"
                        >baw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbinsa language&quot;)"
                        >liz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbo language (Cameroon)&quot;)"
                        >mbo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbosi language&quot;)"
                        >mdw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbugu language&quot;)"
                        >mhd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbugwe language&quot;)"
                        >mgz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbukushu language&quot;)"
                        >mhw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbum language&quot;)"
                        >mdd</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Mbunda language (Angola and Zambia)&quot;)"
                        >mck</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mbya language&quot;)"
                        >gun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Meax language&quot;)"
                        >mej</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Median language&quot;)"
                        >xme</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Medlpa language&quot;)"
                        >med</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Medumba language&quot;)"
                        >byv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mekeo language&quot;)"
                        >mek</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mekongga language&quot;)"
                        >lbw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Melebuganon language&quot;)"
                        >pwm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mele-Fila language&quot;)"
                        >mxe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Memba language&quot;)"
                        >tsj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mendalam Kayan language&quot;)"
                        >xkd</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Mende language (Papua New Guinea)&quot;)"
                        >sim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mende language&quot;)"
                        >men</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Menominee language&quot;)"
                        >mez</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mentawai language&quot;)"
                        >mwv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Meratus language&quot;)"
                        >bvu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Meroitic language&quot;)"
                        >xmr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Meru language&quot;)"
                        >mer</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mescalero language&quot;)"
                        >apm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Messapian language&quot;)"
                        >cms</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mewari language&quot;)"
                        >mtr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mewati language&quot;)"
                        >wtm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mexican Sign Language&quot;)"
                        >mfs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mi Gangam language&quot;)"
                        >gng</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Miami language (Ind. and Okla.)&quot;)"
                        >mia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mianmin language&quot;)"
                        >mpt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Michif language&quot;)"
                        >crg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Micmac language&quot;)"
                        >mic</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Midob language&quot;)"
                        >mei</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Migili language&quot;)"
                        >mgi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Miji language&quot;)"
                        >sjl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Miju language&quot;)"
                        >mxj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mikasuki language&quot;)"
                        >mik</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mikir language&quot;)"
                        >mjw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Milang language&quot;)"
                        >adi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Minaean language&quot;)"
                        >inm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Minangkabau language&quot;)"
                        >min</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Minaveha language&quot;)"
                        >mvn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mingrelian language&quot;)"
                        >xmf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mirandese language&quot;)"
                        >mwl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mishar language&quot;)"
                        >tat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mishmi language&quot;)"
                        >clk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Misima language&quot;)"
                        >mpx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Misima-Panayati language&quot;)"
                        >mpx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Miskito language&quot;)"
                        >miq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mituku language&quot;)"
                        >zmq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Miya language&quot;)"
                        >mkf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Miyemu language&quot;)"
                        >mux</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mkaa&apos; language&quot;)"
                        >bqz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mlabri language&quot;)"
                        >mra</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Mo language (Côte d&apos;Ivoire and Ghana)&quot;)"
                        >mzw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moba language&quot;)"
                        >mfq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mocha language&quot;)"
                        >moy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mochó language&quot;)"
                        >mhc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moghol language&quot;)"
                        >mhj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moguex language&quot;)"
                        >gum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mohave language&quot;)"
                        >mov</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mohawk language&quot;)"
                        >moh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mohegan language&quot;)"
                        >mof</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mojo language&quot;)"
                        >ign</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moken language&quot;)"
                        >mwt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mokilese language&quot;)"
                        >mkj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moklen language&quot;)"
                        >mkm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moklum language&quot;)"
                        >nst</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moksha language&quot;)"
                        >mdf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mokulu language&quot;)"
                        >moz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moldavian language&quot;)"
                        >mol</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Molima language&quot;)"
                        >mox</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moluche language&quot;)"
                        >arn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mon language&quot;)">mnw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mongolian language&quot;)"
                        >mon</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mongo-Nkundu language&quot;)"
                        >lol</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mongour language&quot;)"
                        >mjg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Monjombo language&quot;)"
                        >moj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mono language (Congo)&quot;)"
                        >mnh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mono-Alu language&quot;)"
                        >mte</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Montagnais language&quot;)"
                        >moe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Monumbo language&quot;)"
                        >mxk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mooré language&quot;)"
                        >mos</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mopan language&quot;)"
                        >mop</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moplah language&quot;)"
                        >mal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mori language&quot;)"
                        >mzq</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Moro language (South America)&quot;)"
                        >ayo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moro language (Sudan)&quot;)"
                        >mor</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moronene language&quot;)"
                        >mqn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mortlock language&quot;)"
                        >mrl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moru language&quot;)"
                        >mgd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moseten language&quot;)"
                        >cas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Moshang language&quot;)"
                        >nmh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mota language&quot;)"
                        >mtt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Motilon language&quot;)"
                        >mot</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Motlav language&quot;)"
                        >mlv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Motu language&quot;)"
                        >meu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mouk language&quot;)"
                        >mqt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mountain Arapesh language&quot;)"
                        >ape</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mountain Koiari language&quot;)"
                        >kpx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Movima language&quot;)"
                        >mzp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mpongwe language&quot;)"
                        >mye</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mpus language&quot;)"
                        >mug</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Muana language&quot;)"
                        >moa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mudburra language&quot;)"
                        >mwd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Muduva language&quot;)"
                        >muv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mugil language&quot;)"
                        >mlp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Muinane language&quot;)"
                        >bmr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mukawa language&quot;)"
                        >mwc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mukomuko language&quot;)"
                        >min</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mukri language&quot;)"
                        >ckb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mulao language&quot;)"
                        >mlm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mulgi language&quot;)"
                        >est</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mullukmulluk language&quot;)"
                        >mpb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mumuye language&quot;)"
                        >mzm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mün Chin language&quot;)"
                        >mwq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Muna language&quot;)"
                        >mnb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mundang language&quot;)"
                        >mua</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mundani language&quot;)"
                        >mnf</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Mundu language (Sudan and Congo)&quot;)"
                        >muh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Munduruku language&quot;)"
                        >my</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mungaka language&quot;)"
                        >mhk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Munichi language&quot;)"
                        >myr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Munji language&quot;)"
                        >mnj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Münkü language&quot;)"
                        >irn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Munsee language&quot;)"
                        >umu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Muong language&quot;)"
                        >mtq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mupun language&quot;)"
                        >sur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mura language&quot;)"
                        >myp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Murle language&quot;)"
                        >mur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Murrinhpatha language&quot;)"
                        >mwf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Murui language&quot;)"
                        >huu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Muruwari language&quot;)"
                        >zmu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Musei language&quot;)"
                        >mse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Musgu language&quot;)"
                        >mug</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Musi language&quot;)"
                        >mui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Musom language&quot;)"
                        >msu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mutsun language&quot;)"
                        >css</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Muyuw language&quot;)"
                        >myw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mwaghavul language&quot;)"
                        >sur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mwamba language&quot;)"
                        >wbh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mwenyi language&quot;)"
                        >sie</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mysian language&quot;)"
                        >yms</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Mzab language&quot;)"
                        >mzb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nabak language&quot;)"
                        >naf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nafaanra language&quot;)"
                        >nfr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nahu language&quot;)"
                        >nca</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nahuatl language&quot;)"
                        >nah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nakanai language&quot;)"
                        >nak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nali language&quot;)"
                        >nss</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nalik language&quot;)"
                        >nal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nama language&quot;)"
                        >naq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Namakura language&quot;)"
                        >nmk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nambya language&quot;)"
                        >nmq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Namia language&quot;)"
                        >nnm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nanai language&quot;)"
                        >gld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nancere language&quot;)"
                        >nnc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nancowry language&quot;)"
                        >ncb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nande language&quot;)"
                        >nnb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nandi language&quot;)"
                        >kln</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nankanse language&quot;)"
                        >gur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nankina language&quot;)"
                        >nnk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nanticoke language&quot;)"
                        >nnt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Napu language&quot;)"
                        >npy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Narak language&quot;)"
                        >nac</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Narragansett language&quot;)"
                        >mof</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Narrinyeri language&quot;)"
                        >nay</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Naskapi language&quot;)"
                        >nsk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Natchez language&quot;)"
                        >ncz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nateni language&quot;)"
                        >ntm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nauru language&quot;)"
                        >nau</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Navajo language&quot;)"
                        >nav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nawdm language&quot;)"
                        >nmz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Naxi language&quot;)"
                        >nbf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nchumburu language&quot;)"
                        >ncu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ndau language&quot;)"
                        >ndc</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Ndebele language (South Africa)&quot;)"
                        >nbl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ndebele language (Zimbabwe)&quot;)"
                        >nde</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ndjebbana language&quot;)"
                        >djj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ndonga language&quot;)"
                        >ndo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ndumu language&quot;)"
                        >nmd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ndunga language&quot;)"
                        >ndt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Negidal language&quot;)"
                        >neg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nehan language&quot;)"
                        >nsn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nembe language&quot;)"
                        >ijs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nemi language&quot;)"
                        >nem</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nenets language&quot;)"
                        >yrk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nengone language&quot;)"
                        >nen</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nenusa-Miangas language&quot;)"
                        >tld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nepali language&quot;)"
                        >nep</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;New Zealand Sign Language&quot;)"
                        >nzs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Newari language&quot;)"
                        >new</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nez Percé language&quot;)"
                        >nez</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngaanyatjara language&quot;)"
                        >ntj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngada language&quot;)"
                        >nxg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngadju language (Australia)&quot;)"
                        >nju</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngaju language&quot;)"
                        >nij</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngalakan language&quot;)"
                        >nig</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngaliwuru language&quot;)"
                        >djd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngama language&quot;)"
                        >nmc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nganasan language&quot;)"
                        >nio</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngandi language&quot;)"
                        >nid</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngankikurungkurr language&quot;)"
                        >nam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngarinyin language&quot;)"
                        >ung</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngarinyman language&quot;)"
                        >nbj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngarluma language&quot;)"
                        >nrl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngatik language&quot;)"
                        >ngm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngaun language&quot;)"
                        >cnw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngawun language&quot;)"
                        >nxn</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Ngbaka ma&apos;bo language&quot;)"
                        >nbm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngemba language (Cameroon)&quot;)"
                        >nge</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngiti language&quot;)"
                        >niy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngizim language&quot;)"
                        >ngi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngologa language&quot;)"
                        >xkv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngomba language (Bamileke)&quot;)"
                        >jgo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngombe language&quot;)"
                        >ngc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngonde language&quot;)"
                        >nyy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nguôn language&quot;)"
                        >nuo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngwa language&quot;)"
                        >ibo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ngyemboon language&quot;)"
                        >nnh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nharo language&quot;)"
                        >nhr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nias language&quot;)"
                        >nia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nicaraguan Sign Language&quot;)"
                        >ncs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nielim language&quot;)"
                        >nie</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nihali language&quot;)"
                        >nll</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nii language&quot;)">nii</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nilamba language&quot;)"
                        >nim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nimadi language&quot;)"
                        >noe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nimboran language&quot;)"
                        >nir</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nipissing language&quot;)"
                        >ojc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nirere language&quot;)"
                        >kib</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nisenan language&quot;)"
                        >nsz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Niska language&quot;)"
                        >ncg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nisqually language&quot;)"
                        >lut</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Niuean language&quot;)"
                        >niu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nkoya language&quot;)"
                        >nka</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nkunya language&quot;)"
                        >nko</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nocte language&quot;)"
                        >njb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nogai language&quot;)"
                        >nog</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nogugu language&quot;)"
                        >nkk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nomaante language&quot;)"
                        >lem</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nomatsiguenga language&quot;)"
                        >not</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Noon language&quot;)"
                        >snf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Noone language&quot;)"
                        >nhu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nootka language&quot;)"
                        >noo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Norn language&quot;)"
                        >nrn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;North Efate language&quot;)"
                        >llp</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;North Straits Salish language&quot;)"
                        >str</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northeastern Kiwai language&quot;)"
                        >kiw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Altai language&quot;)"
                        >atv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Bullom language&quot;)"
                        >buy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Kankanay language&quot;)"
                        >xnn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Khanty language&quot;)"
                        >kca</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Paiute language&quot;)"
                        >pao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Pomo language&quot;)"
                        >pej</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Roglai language&quot;)"
                        >rog</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Sami language&quot;)"
                        >sme</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Northern Sierra Miwok language&quot;)"
                        >nsq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Sotho language&quot;)"
                        >nso</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Northern Thai language&quot;)"
                        >nod</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Norwegian language (Nynorsk)&quot;)"
                        >nno</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Norwegian language&quot;)"
                        >nor</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Notsi language&quot;)"
                        >ncf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Notu language&quot;)"
                        >nou</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Novial language (Artificial)&quot;)"
                        >nov</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ntlakyapamuk language&quot;)"
                        >thp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ntomba language&quot;)"
                        >nto</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nubi language&quot;)"
                        >kcn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nuer language&quot;)"
                        >nus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nukahiva language&quot;)"
                        >mrq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nukunu language&quot;)"
                        >nnv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nukuoro language&quot;)"
                        >nkr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Numfor language&quot;)"
                        >bhw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nung language&quot;)"
                        >nun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nunggubuyu language&quot;)"
                        >nuy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nunuma language&quot;)"
                        >xsm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nupe language&quot;)"
                        >nup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyabwa language&quot;)"
                        >nwb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyah Kur language&quot;)"
                        >cbn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyaheun language&quot;)"
                        >nev</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyalayu language&quot;)"
                        >yly</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyambo language&quot;)"
                        >now</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyamwezi language&quot;)"
                        >nym</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyaneka language&quot;)"
                        >nyk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyanga language&quot;)"
                        >nyj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyangumarta language&quot;)"
                        >nna</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyanja language&quot;)"
                        >nya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyankole language&quot;)"
                        >nyn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyiha language&quot;)"
                        >nih</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyikina language&quot;)"
                        >nyh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyore language&quot;)"
                        >nyd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyoro language&quot;)"
                        >nyo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyulnyul language&quot;)"
                        >nyv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nyungwe language&quot;)"
                        >nyu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nzakara language&quot;)"
                        >nzk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nzebi language&quot;)"
                        >nzb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Nzima language&quot;)"
                        >nzi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Obo Manobo language&quot;)"
                        >obo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Obolo language&quot;)"
                        >ann</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ocaina language&quot;)"
                        >oca</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Occidental language (Artificial)&quot;)"
                        >ile</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Occitan language&quot;)"
                        >oci</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ocuiltec language&quot;)"
                        >ocu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Odual language&quot;)"
                        >odu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ofo language&quot;)">ofo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ogan language&quot;)"
                        >pse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ogbronuagum language&quot;)"
                        >ogu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oghuz language&quot;)"
                        >ozn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oirat language&quot;)"
                        >xal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ojibwa language&quot;)"
                        >oji</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Okanagan language&quot;)"
                        >oka</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Okrika language&quot;)"
                        >okr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oksapmin language&quot;)"
                        >opm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Olcha language&quot;)"
                        >ulc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Old Norse language&quot;)"
                        >non</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Old Persian language&quot;)"
                        >peo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Old Saxon language&quot;)"
                        >osx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Old Turkic language&quot;)"
                        >otk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Olo language&quot;)">ong</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Olonets language&quot;)"
                        >olo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oluta language&quot;)"
                        >plo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Omaha language&quot;)"
                        >oma</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ombo language&quot;)"
                        >oml</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ona language&quot;)">ona</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oneida language&quot;)"
                        >one</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Önge language&quot;)"
                        >oon</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ono language&quot;)">ons</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Onondaga language&quot;)"
                        >ono</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oowekyala language&quot;)"
                        >hei</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Opata language&quot;)"
                        >opt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ordos language&quot;)"
                        >mvf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Orejón language&quot;)"
                        >ore</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oriya language&quot;)"
                        >ori</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Orma language&quot;)"
                        >orc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ormu language&quot;)"
                        >orz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ormuri language&quot;)"
                        >oru</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oroch language&quot;)"
                        >oac</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Orok language&quot;)"
                        >oaa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Orokaiva language&quot;)"
                        >okv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Orokolo language&quot;)"
                        >oro</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oromo language&quot;)"
                        >orm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oron language&quot;)"
                        >enw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oroqen language&quot;)"
                        >orh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Orya language&quot;)"
                        >ury</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Osage language&quot;)"
                        >osa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oscan language&quot;)"
                        >osc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Osing language&quot;)"
                        >osi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ossetic language&quot;)"
                        >oss</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ot Danum language&quot;)"
                        >otd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Oto language&quot;)">iow</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ottawa language&quot;)"
                        >otw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ouargla language&quot;)"
                        >oua</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ozumacín language&quot;)"
                        >chz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paama language&quot;)"
                        >pma</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pacific Gulf Yupik language&quot;)"
                        >ems</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pacoh language&quot;)"
                        >pac</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Padam language&quot;)"
                        >adi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Padang language&quot;)"
                        >dip</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paduko language&quot;)"
                        >pbi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paez language&quot;)"
                        >pbb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pahlavi language&quot;)"
                        >pal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pahri language&quot;)"
                        >new</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paici language&quot;)"
                        >pri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pailibo language&quot;)"
                        >adi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paipai language&quot;)"
                        >ppi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paite language&quot;)"
                        >pck</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paiwan language&quot;)"
                        >pwn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pakaasnovos language&quot;)"
                        >pav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paku language&quot;)"
                        >pku</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pala language&quot;)"
                        >gfk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Palaic language&quot;)"
                        >plq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Palan language&quot;)"
                        >kpy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Palauan language&quot;)"
                        >pau</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pali language&quot;)"
                        >pli</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Palicur language&quot;)"
                        >plu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pamoa language&quot;)"
                        >tav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pamona language&quot;)"
                        >pmf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pampanga language&quot;)"
                        >pam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Panamint language&quot;)"
                        >par</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Panare language&quot;)"
                        >pbh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Panayati language&quot;)"
                        >mpx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pangasinan language&quot;)"
                        >pag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pangutaran Sama language&quot;)"
                        >slm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pangwa language&quot;)"
                        >pbr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Panjabi language&quot;)"
                        >pan</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Panobo language&quot;)"
                        >pno</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Panzaleo language&quot;)"
                        >pbb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Papabuco language&quot;)"
                        >zpw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paranan language&quot;)"
                        >agp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paraujano language&quot;)"
                        >pbg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Parengi language&quot;)"
                        >pcj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Paressi language&quot;)"
                        >pab</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Parintintin language&quot;)"
                        >pah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Parji language&quot;)"
                        >pci</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Parsi-Gujarati language&quot;)"
                        >guj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Parthian language&quot;)"
                        >xpr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Parvati language&quot;)"
                        >gbm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Parya language&quot;)"
                        >paq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pasaale language&quot;)"
                        >sig</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pasir language (Lawangan)&quot;)"
                        >lbx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pasir language&quot;)"
                        >zlm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Passamaquoddy language&quot;)"
                        >pqm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Patamona language&quot;)"
                        >pbc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Patep language&quot;)"
                        >ptp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pattani language (India)&quot;)"
                        >lae</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pattani language (Thailand)&quot;)"
                        >mfa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pauserna language&quot;)"
                        >psm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pawaian language&quot;)"
                        >pwa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pawari language&quot;)"
                        >bns</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pawnee language&quot;)"
                        >paw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pay language&quot;)">ped</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pazeh language&quot;)"
                        >uun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pear language&quot;)"
                        >pcb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pehuenche language&quot;)"
                        >arn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pekal language&quot;)"
                        >pel</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pelende language&quot;)"
                        >ppp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pemón language&quot;)"
                        >aoc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pende language&quot;)"
                        >pem</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Penesak language&quot;)"
                        >mui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pengo language&quot;)"
                        >peg</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Pennsylvania German language&quot;)"
                        >pdc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Penobscot language&quot;)"
                        >aaq</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Peranakan Indonesian language&quot;)"
                        >pea</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pero language&quot;)"
                        >pip</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Persian language&quot;)"
                        >fas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Petats language&quot;)"
                        >pex</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Phalura language&quot;)"
                        >phl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Phoenician language&quot;)"
                        >phn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Phom language&quot;)"
                        >nph</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Phrygian language&quot;)"
                        >xpg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Phu Thai language&quot;)"
                        >pht</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Piapoco language&quot;)"
                        >pio</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Piaroa language&quot;)"
                        >pid</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pilaga language&quot;)"
                        >plg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pileni language&quot;)"
                        >piv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pima Bajo language&quot;)"
                        >pia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pima language&quot;)"
                        >ood</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pinai-Hagahai language&quot;)"
                        >pnn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pingelap language&quot;)"
                        >pif</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pintupi language&quot;)"
                        >piu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pinyin language&quot;)"
                        >pny</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pipil language&quot;)"
                        >ppl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pirahá language&quot;)"
                        >myp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Piratapuyo language&quot;)"
                        >pir</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Piro language (Tanoan)&quot;)"
                        >pie</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pitcairnese language&quot;)"
                        >pih</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pitjantjatjara language&quot;)"
                        >pjt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pitta Pitta language&quot;)"
                        >pit</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Plains Miwok language&quot;)"
                        >pmw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pochury language&quot;)"
                        >npo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pogoro language&quot;)"
                        >poy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Polabian language&quot;)"
                        >pox</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Polish language&quot;)"
                        >pol</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ponape language&quot;)"
                        >pon</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ponosakan language&quot;)"
                        >pns</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Port Sandwich language&quot;)"
                        >psw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Portuguese language&quot;)"
                        >por</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Portuguese Sign Language&quot;)"
                        >psr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Potawatomi language&quot;)"
                        >pot</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pothwari language&quot;)"
                        >phr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Powari language&quot;)"
                        >pwr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Powhatan language&quot;)"
                        >pim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Provençal language&quot;)"
                        >pro</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Prussian language&quot;)"
                        >prg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Puelche language&quot;)"
                        >pue</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pular language&quot;)"
                        >fuf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Puluwat language&quot;)"
                        >puw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Punic language&quot;)"
                        >xpu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Punu language&quot;)"
                        >puu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Puoc language&quot;)"
                        >puo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Puquina language&quot;)"
                        >puq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Purari language&quot;)"
                        >iar</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Purik language&quot;)"
                        >prx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Purupuru language&quot;)"
                        >pad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Pushto language&quot;)"
                        >pus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Qottu language&quot;)"
                        >hae</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Quara language&quot;)"
                        >ahg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Quebec Sign Language&quot;)"
                        >fcs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Quechua language&quot;)"
                        >que</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Quenya language (Artificial)&quot;)"
                        >qya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Quileute language&quot;)"
                        >qui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Quinault language&quot;)"
                        >qun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Quioucohanock language&quot;)"
                        >pim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rabha language&quot;)"
                        >rah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rade language&quot;)"
                        >rad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Raetian language&quot;)"
                        >xrr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Raeto-Romance language&quot;)"
                        >roh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rai language&quot;)">aph</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rajasthani language&quot;)"
                        >raj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rajbangsi language&quot;)"
                        >rjs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rama language&quot;)"
                        >rma</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ramoaaina language&quot;)"
                        >rai</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ranau language&quot;)"
                        >ljp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rang Pas language&quot;)"
                        >rgk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rangdania language&quot;)"
                        >rah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rangi language&quot;)"
                        >lag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rao language&quot;)">rao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rapanui language&quot;)"
                        >rap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rarotongan language&quot;)"
                        >rar</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ratahan language&quot;)"
                        >rth</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rawa language&quot;)"
                        >rwo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rawang language&quot;)"
                        >raw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rawas language&quot;)"
                        >mui</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Rejang language (Sumatra, Indonesia)&quot;)"
                        >rej</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rembarrnga language&quot;)"
                        >rmb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rembong language&quot;)"
                        >reb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rendille language&quot;)"
                        >rel</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rengao language&quot;)"
                        >ren</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rengma language&quot;)"
                        >nre</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rennellese language&quot;)"
                        >mnv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Resigero language&quot;)"
                        >rgr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Riang-lang language&quot;)"
                        >ril</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rif language&quot;)">rif</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rikbaktsa language&quot;)"
                        >rkb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ritarungo language&quot;)"
                        >rit</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Roma language&quot;)"
                        >rmm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Romani language&quot;)"
                        >rom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Romanian language&quot;)"
                        >ron</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ron language&quot;)">cla</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ronga language&quot;)"
                        >rng</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rongmei language&quot;)"
                        >nbu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Roro language (New Guinea)&quot;)"
                        >rro</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Roti language&quot;)"
                        >rgu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rotokas language&quot;)"
                        >roo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rotuman language&quot;)"
                        >rtm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Roviana language&quot;)"
                        >rug</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ruc language&quot;)">scb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rue language&quot;)">bwg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rundi language&quot;)"
                        >run</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Runga language&quot;)"
                        >rou</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Russian language&quot;)"
                        >rus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Rutul language&quot;)"
                        >rut</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ruund language&quot;)"
                        >rnd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saa language&quot;)">apb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saanich language&quot;)"
                        >str</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sabaean language&quot;)"
                        >xsa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sabaot language&quot;)"
                        >spy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sabela language&quot;)"
                        >auc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saberi language&quot;)"
                        >srl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sacapulteco language&quot;)"
                        >quv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sadani language&quot;)"
                        >sck</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saek language&quot;)"
                        >skb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Safwa language&quot;)"
                        >sbk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sagara language&quot;)"
                        >kki</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sahidic language&quot;)"
                        >cop</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saho language&quot;)"
                        >ssy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sahu language&quot;)"
                        >saj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saisiyat language&quot;)"
                        >xsy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sakalava language&quot;)"
                        >skg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sakata language&quot;)"
                        >skt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sakau language&quot;)"
                        >sku</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Salampasu language&quot;)"
                        >slx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Salar language&quot;)"
                        >slr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Salinan language&quot;)"
                        >sln</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saliva language&quot;)"
                        >sbe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sama Sibutu language&quot;)"
                        >ssb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Samaritan Aramaic language&quot;)"
                        >sam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Samaritan Hebrew language&quot;)"
                        >smp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sambalpuri language&quot;)"
                        >ori</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sambas language&quot;)"
                        >zlm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Samburu language&quot;)"
                        >saq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sami language&quot;)"
                        >raq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Samo language&quot;)"
                        >smq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Samoan language&quot;)"
                        >smo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sandawe language&quot;)"
                        >sad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sanga language&quot;)"
                        >sng</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sangil language&quot;)"
                        >snl</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Sangir language (Indonesia and Philippines)&quot;)"
                        >sxn</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Sango language (Ubangi Creole)&quot;)"
                        >sag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sangtam language&quot;)"
                        >nsa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sangu language (Gabon)&quot;)"
                        >snq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sangu language (Tanzania)&quot;)"
                        >sbp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sanskrit language&quot;)"
                        >san</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Santali language&quot;)"
                        >sat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Santee language&quot;)"
                        >dak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sanwi language&quot;)"
                        >any</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saposa language&quot;)"
                        >sps</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sapuan language&quot;)"
                        >spu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sara language&quot;)"
                        >sre</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saramaccan language&quot;)"
                        >srm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sarangani Manobo language&quot;)"
                        >mbs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sardinian language&quot;)"
                        >srd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sarikoli language&quot;)"
                        >srh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sarsi language&quot;)"
                        >srs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sart language&quot;)"
                        >uzn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sasak language&quot;)"
                        >sas</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;sauraseni language&quot;)"
                        >psu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saurashtri language&quot;)"
                        >saz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sawai language&quot;)"
                        >szw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Saweru language&quot;)"
                        >swr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sawi language&quot;)"
                        >saw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sawos language&quot;)"
                        >gbf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sawu language&quot;)"
                        >hvn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sayula language&quot;)"
                        >pos</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Scots language&quot;)"
                        >sco</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sea Islands Creole language&quot;)"
                        >gul</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sechelt language&quot;)"
                        >sec</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Secoya language&quot;)"
                        >sey</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sedang language&quot;)"
                        >sed</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sedik language&quot;)"
                        >trv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sekani language&quot;)"
                        >sek</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Selepet language&quot;)"
                        >spl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Selkup language&quot;)"
                        >sel</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sema language&quot;)"
                        >nsm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Semai language&quot;)"
                        >sea</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Semang language&quot;)"
                        >kns</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sembla language&quot;)"
                        >sos</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Semelai language&quot;)"
                        >sza</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Semendo language&quot;)"
                        >pse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Seminole language&quot;)"
                        >mus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sena language&quot;)"
                        >seh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Senari language&quot;)"
                        >sef</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Seneca language&quot;)"
                        >see</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Senga language&quot;)"
                        >nse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sentani language&quot;)"
                        >set</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Senya language&quot;)"
                        >afu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Serawai language&quot;)"
                        >pse</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Serbian language&quot;)"
                        >srp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Serbo-Croatian language&quot;)"
                        >hbs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Serer language&quot;)"
                        >srr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Seri language&quot;)"
                        >sei</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Seruyan language&quot;)"
                        >kkx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Setu language&quot;)"
                        >est</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sgaw Karen language&quot;)"
                        >ksw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shambala language&quot;)"
                        >ksb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shan language&quot;)"
                        >shn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sharanahua language&quot;)"
                        >mcd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shasta language&quot;)"
                        >sht</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shauri language&quot;)"
                        >shv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shawnee language&quot;)"
                        >sjw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shekhawati language&quot;)"
                        >swv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sherbro language&quot;)"
                        >bun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sherdukpen language&quot;)"
                        >sdp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sherpa language&quot;)"
                        >xsr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shi language&quot;)">shr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shilha language&quot;)"
                        >jbn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shilluk language&quot;)"
                        >shk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shimaore language&quot;)"
                        >swb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shina language&quot;)"
                        >scl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shipibo-Conibo language&quot;)"
                        >shp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shona language&quot;)"
                        >sna</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shor language&quot;)"
                        >cjs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shoshoni language&quot;)"
                        >shh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shuar language&quot;)"
                        >jiv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shughni language&quot;)"
                        >sgh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Shuswap language&quot;)"
                        >shs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siane language&quot;)"
                        >snp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sibo language&quot;)"
                        >nco</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sicuane language&quot;)"
                        >cui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sidamo language&quot;)"
                        >sid</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sierra Popoluca language&quot;)"
                        >poi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sigi language&quot;)"
                        >lew</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sikka language&quot;)"
                        >ski</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siksika language&quot;)"
                        >bla</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Silti language&quot;)"
                        >mvz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Simelungun language&quot;)"
                        >bts</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Simeulue language&quot;)"
                        >smr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Simte language&quot;)"
                        >smt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sinagoro language&quot;)"
                        >snc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sindang Kelingi language&quot;)"
                        >liw</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Sindarin language (Artificial)&quot;)"
                        >sjn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sindhi language&quot;)"
                        >snd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sinhalese language&quot;)"
                        >sin</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sio language&quot;)">xsi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sioni language&quot;)"
                        >snn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sipacapense language&quot;)"
                        >qum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sira language&quot;)"
                        >swj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siraiki Hindki language&quot;)"
                        >skr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siraiki language&quot;)"
                        >skr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siraiki Sindhi language&quot;)"
                        >skr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siriano language&quot;)"
                        >sri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sirinek language&quot;)"
                        >ysr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sirmauri language&quot;)"
                        >srx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siroi language&quot;)"
                        >ssd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sissala language&quot;)"
                        >sld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sissano language&quot;)"
                        >sso</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siuslaw language&quot;)"
                        >sis</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siwa language&quot;)"
                        >siz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siwai language&quot;)"
                        >siw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Siyin language&quot;)"
                        >csy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Skolt Sami language&quot;)"
                        >sms</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Skou language&quot;)"
                        >skv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Slovak language&quot;)"
                        >slk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Slovenian language&quot;)"
                        >slv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Slovincian language&quot;)"
                        >csb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Snohomish language&quot;)"
                        >sno</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;So language (Uganda)&quot;)"
                        >teu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sobei language&quot;)"
                        >sob</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sobojo language&quot;)"
                        >tlv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Soga language&quot;)"
                        >xog</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sogdian language&quot;)"
                        >sog</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sokotri language&quot;)"
                        >sqt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Soliga language&quot;)"
                        >sle</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Solon language&quot;)"
                        >evn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Somali language&quot;)"
                        >som</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Somba language&quot;)"
                        >tbz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Songye language&quot;)"
                        >sop</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Soninke language&quot;)"
                        >snk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sora language&quot;)"
                        >srb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sotang Kura language&quot;)"
                        >kle</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sotho language&quot;)"
                        >sot</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;South African Sign Language&quot;)"
                        >sfs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;South Efate language&quot;)"
                        >erk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southeastern Pomo language&quot;)"
                        >pom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Arapesh language&quot;)"
                        >aoj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Bontoc language&quot;)"
                        >bkb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Kalinga language&quot;)"
                        >ksc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Khanty language&quot;)"
                        >kca</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Mofu language&quot;)"
                        >mif</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Paiute language&quot;)"
                        >ute</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Sami language&quot;)"
                        >sma</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Subanen language&quot;)"
                        >laa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Thai language&quot;)"
                        >sou</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Southern Tutchone language&quot;)"
                        >tce</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Spanish language&quot;)"
                        >spa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Spanish Sign Language&quot;)"
                        >ssp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Spokane language&quot;)"
                        >spo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Squawmish language&quot;)"
                        >squ</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sranan language&quot;)"
                        >srn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Srê language&quot;)">kpm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Stalo language&quot;)"
                        >hur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Stokavian language&quot;)"
                        >srp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Suau language&quot;)"
                        >swp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Subiya language&quot;)"
                        >sbs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Suena language&quot;)"
                        >sue</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sui language&quot;)">swi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Suk language&quot;)">pko</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Suku language (Congo)&quot;)"
                        >sub</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sukuma language&quot;)"
                        >suk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sulka language&quot;)"
                        >sua</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sulod language&quot;)"
                        >srg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sulu language&quot;)"
                        >tsg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sulung language&quot;)"
                        >suv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sumbawa language&quot;)"
                        >smw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sumerian language&quot;)"
                        >sux</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sumo language&quot;)"
                        >sum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sundanese language&quot;)"
                        >sun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sunwar language&quot;)"
                        >suz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Suppire language&quot;)"
                        >spp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Suquamish language&quot;)"
                        >squ</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Suriname Hindustani language&quot;)"
                        >hns</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sursurunga language&quot;)"
                        >sgz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Susquehanna language&quot;)"
                        >sqn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Susu language&quot;)"
                        >sus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Suwawa language&quot;)"
                        >swu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Svan language&quot;)"
                        >sva</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Swahili language&quot;)"
                        >swh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Swazi language&quot;)"
                        >ssw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Swedish language&quot;)"
                        >swe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Swedish Sign Language&quot;)"
                        >swl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Syènara language&quot;)"
                        >shz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Sylheti language&quot;)"
                        >syl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Syriac language&quot;)"
                        >syr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Székely language&quot;)"
                        >hun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tabasaran language&quot;)"
                        >tab</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tabla language&quot;)"
                        >tnm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tabwa language&quot;)"
                        >tap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tacana language (Bolivia)&quot;)"
                        >tna</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Taensa language&quot;)"
                        >ncz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tagabawa Manobo language&quot;)"
                        >bgs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tagakaolo language&quot;)"
                        >klg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tagalog language&quot;)"
                        >tgl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tagbana language&quot;)"
                        >tgw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tagbanua language&quot;)"
                        >tbw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tagin language&quot;)"
                        >dap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tagoi language&quot;)"
                        >tag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tagula language&quot;)"
                        >tgo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tahitian language&quot;)"
                        >tah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tai Nüa language&quot;)"
                        >tdd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Taimoro language&quot;)"
                        >mlg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Taino language&quot;)"
                        >tnq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Taita language&quot;)"
                        >dav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Taiwano language&quot;)"
                        >bsn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tajik language&quot;)"
                        >tgk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Takelma language&quot;)"
                        >tkm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Talaud language&quot;)"
                        >tld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Talinga-Bwisi language&quot;)"
                        >tlj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Talise language&quot;)"
                        >tlr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Talysh language&quot;)"
                        >tly</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tami language&quot;)"
                        >tmy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tamil language&quot;)"
                        >tam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tampulma language&quot;)"
                        >tpm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tamu language&quot;)"
                        >gvr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tanacross language&quot;)"
                        >tcb</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Tanga language (Tanga Islands)&quot;)"
                        >tgg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tangale language&quot;)"
                        >tan</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tangkhul language&quot;)"
                        >nmf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tangsa language&quot;)"
                        >nst</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tangut language&quot;)"
                        >txg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tanimuca-Retuama language&quot;)"
                        >ynu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tapanta language&quot;)"
                        >abq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tapirapé language&quot;)"
                        >taf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tarascan language&quot;)"
                        >tsz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tariana language&quot;)"
                        >tae</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tarok language&quot;)"
                        >yer</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tat language&quot;)">ttt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tatana&apos; language&quot;)"
                        >txx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tatar language&quot;)"
                        >tat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Taungthu language&quot;)"
                        >blk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Taurepan language&quot;)"
                        >aoc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tausug language&quot;)"
                        >tsg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tauya language&quot;)"
                        >tya</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Tavara language (Papua New Guinea)&quot;)"
                        >tbo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Taveta language&quot;)"
                        >tvs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tawahka language (Honduras)&quot;)"
                        >sum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tawoyan language&quot;)"
                        >twy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tay-Nung language&quot;)"
                        >nut</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tayo language&quot;)"
                        >cks</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tboli language&quot;)"
                        >tbl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tchien language&quot;)"
                        >kqo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tectiteco language&quot;)"
                        >ttc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Teda language&quot;)"
                        >tuq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Téén language&quot;)"
                        >lor</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tegal language&quot;)"
                        >jav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tehit language&quot;)"
                        >kps</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Teke language&quot;)"
                        >teg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Telefol language&quot;)"
                        >tlf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Teleut language&quot;)"
                        >atv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Telugu language&quot;)"
                        >tel</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tem language&quot;)">kdh</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Tembo language (Sud-Kivu, Congo)&quot;)"
                        >tbt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Temiar language&quot;)"
                        >tea</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Temne language&quot;)"
                        >tem</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tenetehara language&quot;)"
                        >tqb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tengger language&quot;)"
                        >tes</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tenharim language&quot;)"
                        >pah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Teop language&quot;)"
                        >tio</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tepera language&quot;)"
                        >tnm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tepo language&quot;)"
                        >ted</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tera language&quot;)"
                        >ttr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Terena language&quot;)"
                        >ter</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ternate language&quot;)"
                        >tft</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Terraba language&quot;)"
                        >tfr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Teso language&quot;)"
                        >teo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tetela language&quot;)"
                        >tll</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tetum language&quot;)"
                        >tet</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tewa language&quot;)"
                        >tew</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Thado language&quot;)"
                        >tcz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Thai language&quot;)"
                        >tha</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Thakali language&quot;)"
                        >ths</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Thao language&quot;)"
                        >ssf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tharaka language&quot;)"
                        >thk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Thayore language&quot;)"
                        >thd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tho language&quot;)">tou</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Thracian language&quot;)"
                        >txh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Thulung language&quot;)"
                        >tdh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tibetan language&quot;)"
                        >bod</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tiddim Chin language&quot;)"
                        >ctd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tidore language&quot;)"
                        >tvo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tiéfo language&quot;)"
                        >tiq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tifal language&quot;)"
                        >tif</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tigak language&quot;)"
                        >tgc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tigré language&quot;)"
                        >tig</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tigrinya language&quot;)"
                        >tir</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tikar language&quot;)"
                        >tik</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tikopia language&quot;)"
                        >tkp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tilamuta language&quot;)"
                        >gor</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tillamook language&quot;)"
                        >til</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Timbe language&quot;)"
                        >tim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Timucua language&quot;)"
                        >tjm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tina Sambal language&quot;)"
                        >xsb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tinputz language&quot;)"
                        >tpz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tinrin language&quot;)"
                        >cir</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tiruray language&quot;)"
                        >tiy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tiv language&quot;)">tiv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tiwa language&quot;)"
                        >lax</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tiwi language (Australia)&quot;)"
                        >tiw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tlakluit language&quot;)"
                        >wac</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tlingit language&quot;)"
                        >tli</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Toaripi language&quot;)"
                        >tqo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Toba language (Indian)&quot;)"
                        >tob</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Toba-Batak language&quot;)"
                        >bbc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tobelo language&quot;)"
                        >tlb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tobote language&quot;)"
                        >bud</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Toda language (India)&quot;)"
                        >tcx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tofa language&quot;)"
                        >kim</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Tohono O&apos;Odham language&quot;)"
                        >ood</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tojolabal language&quot;)"
                        >toj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tok Pisin language&quot;)"
                        >tpi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tokelauan language&quot;)"
                        >tkl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tolai language&quot;)"
                        >ksd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tolaki language&quot;)"
                        >lbw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tolitoli language&quot;)"
                        >txe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Toma language&quot;)"
                        >tod</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tombonuwo language&quot;)"
                        >txa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tombulu language&quot;)"
                        >tom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tondano language&quot;)"
                        >tdn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tonga language (Inhambane)&quot;)"
                        >toh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tonga language (Nyasa)&quot;)"
                        >tog</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tongan language&quot;)"
                        >ton</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tonkawa language&quot;)"
                        >tqw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tonsea language&quot;)"
                        >txs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tontemboan language&quot;)"
                        >tnt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tooro language&quot;)"
                        >ttj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Toposa language&quot;)"
                        >toq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Toraja language&quot;)"
                        >sda</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Toraja Sa&apos;dan language&quot;)"
                        >sda</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Torgut language&quot;)"
                        >xal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Torwali language&quot;)"
                        >trw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Trio language&quot;)"
                        >tri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Trumai language&quot;)"
                        >tpy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tsaiwa language&quot;)"
                        >atb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tsakhur language&quot;)"
                        >tkr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tsakonian language&quot;)"
                        >tsd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tsattine language&quot;)"
                        >bea</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tsimihety language&quot;)"
                        >xmw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tsimshian language&quot;)"
                        >tsi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tsogo language&quot;)"
                        >tsv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tsonga language&quot;)"
                        >tso</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tsou language&quot;)"
                        >tsu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tswa language&quot;)"
                        >tsc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tswana language&quot;)"
                        >tsn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tuamotuan language&quot;)"
                        >pmt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tubatulabal language&quot;)"
                        >tub</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tubetube language&quot;)"
                        >tte</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tucano language&quot;)"
                        >tuo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tucuna language&quot;)"
                        >tca</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tugen language&quot;)"
                        >tuy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tulu language&quot;)"
                        >tcy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tulung language&quot;)"
                        >duu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tumak language&quot;)"
                        >tmc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tumbuka language&quot;)"
                        >tum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tumleo language&quot;)"
                        >tmq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tunen language&quot;)"
                        >baz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tunica language&quot;)"
                        >tun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tunni language&quot;)"
                        >tqq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tupi language&quot;)"
                        >tpw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tupuri language&quot;)"
                        >tui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tura language&quot;)"
                        >neb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Turkana language&quot;)"
                        >tuv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Turkish language&quot;)"
                        >tur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Turkmen language&quot;)"
                        >tuk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tuscarora language&quot;)"
                        >tus</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tutelo language&quot;)"
                        >tta</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tutong language&quot;)"
                        >bsb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tutsa language&quot;)"
                        >tvt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tuvaluan language&quot;)"
                        >tvl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tuvinian language&quot;)"
                        >tyv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tuwali language&quot;)"
                        >ifk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tuyuca language&quot;)"
                        >tue</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Twi language&quot;)">twi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tyembara language&quot;)"
                        >sef</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Tzoneca language&quot;)"
                        >teh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uare language&quot;)"
                        >ksj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ubir language&quot;)"
                        >ubr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ubykh language&quot;)"
                        >uby</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Udekhe language&quot;)"
                        >ude</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Udi language&quot;)">udi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Udmurt language&quot;)"
                        >udm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uduk language&quot;)"
                        >udu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ugaritic language&quot;)"
                        >uga</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uighur language&quot;)"
                        >uig</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ukhrul language&quot;)"
                        >nmf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uki language&quot;)">bld</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ukrainian language&quot;)"
                        >ukr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ulawa language&quot;)"
                        >apb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uldeme language&quot;)"
                        >udl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ulithi language&quot;)"
                        >li</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ulva language&quot;)"
                        >sum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uma language&quot;)">ppk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Umbrian language&quot;)"
                        >xum</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Umbundu language&quot;)"
                        >umb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Umpila language&quot;)"
                        >ump</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Una language&quot;)">mtg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Upper Chehalis language&quot;)"
                        >cjh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Upper Kuskokwim language&quot;)"
                        >kuu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Upper Sorbian language&quot;)"
                        >hsb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Upper Tanana language&quot;)"
                        >tau</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Upper Tanudan Kalinga language&quot;)"
                        >kgh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ura language (Vanuatu)&quot;)"
                        >uur</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Urak Lawoi&apos; language&quot;)"
                        >urk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Urali language&quot;)"
                        >url</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Urarina language&quot;)"
                        >ura</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Urartian language&quot;)"
                        >xur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Urdu language&quot;)"
                        >urd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Urhobo language&quot;)"
                        >urh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Urii language&quot;)"
                        >uvh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Urim language&quot;)"
                        >uri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uripiv language&quot;)"
                        >upv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uru language&quot;)">ure</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Urubu Kaapor language&quot;)"
                        >urb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Urubu language&quot;)"
                        >urb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Usan language&quot;)"
                        >wnu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Usarufa language&quot;)"
                        >usa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uspanteca language&quot;)"
                        >usp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ute language&quot;)">ute</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uwana language&quot;)"
                        >hau</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Uzbek language&quot;)"
                        >uzb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vaagri Boli language&quot;)"
                        >vaa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vagala language&quot;)"
                        >vag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vai language&quot;)">vai</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vaiphei language&quot;)"
                        >vap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Valman language&quot;)"
                        >van</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vandal language&quot;)"
                        >xvn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Varhadi-Nagpuri language&quot;)"
                        >vah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vata language&quot;)"
                        >dic</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vaturanga language&quot;)"
                        >gri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vaudois language&quot;)"
                        >frp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vayu language&quot;)"
                        >vay</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Veddah language (Sinhalese)&quot;)"
                        >ved</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vegliote language&quot;)"
                        >dlm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vejoz language&quot;)"
                        >wlv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Venda language&quot;)"
                        >ven</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Venetic language&quot;)"
                        >xve</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Venezuelan Sign Language&quot;)"
                        >vsl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Veps language&quot;)"
                        >vep</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vietnamese language&quot;)"
                        >vie</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vige language&quot;)"
                        >vig</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vili language&quot;)"
                        >vif</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Votic language&quot;)"
                        >vot</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vulum language&quot;)"
                        >mug</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Vute language&quot;)"
                        >vut</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wa language&quot;)">wbm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waama language&quot;)"
                        >wwa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waffa language&quot;)"
                        >waj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wagdi language&quot;)"
                        >wbr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wageman language&quot;)"
                        >waq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wahgi language&quot;)"
                        >wgi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waigali language&quot;)"
                        >wbk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wailpi language&quot;)"
                        >adt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waima&apos;a language&quot;)"
                        >wmh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waiwai language&quot;)"
                        >waw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waja language&quot;)"
                        >wja</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wakawaka language&quot;)"
                        >wkw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wakhi language&quot;)"
                        >wbl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Walamo language&quot;)"
                        >wal</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Walbiri language&quot;)"
                        >wbp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Walloon language&quot;)"
                        >wln</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Walmatjari language&quot;)"
                        >wmt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Walser language&quot;)"
                        >wae</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wambon language&quot;)"
                        >wms</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wampanoag language&quot;)"
                        >wam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wampar language&quot;)"
                        >lbq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wancho language&quot;)"
                        >nnp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wandala language&quot;)"
                        >mfi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wandamen language&quot;)"
                        >wad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wandarang language&quot;)"
                        >wnd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wanetsi language&quot;)"
                        >wne</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wangganguru language&quot;)"
                        >wgg</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Wangkumara language (Galali)&quot;)"
                        >nbx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wan&apos;guri language&quot;)"
                        >dhg</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wantoat language&quot;)"
                        >wnc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wappo language&quot;)"
                        >wao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;War language&quot;)">aml</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Warao language&quot;)"
                        >wba</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Warapu language&quot;)"
                        >wra</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waray language&quot;)"
                        >wrz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wardaman language&quot;)"
                        >wrr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Warembori language&quot;)"
                        >wsa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waris language&quot;)"
                        >wrs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wariyangga language&quot;)"
                        >wri</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waropen language&quot;)"
                        >wrp</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Warrwa language&quot;)"
                        >wwr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Warumungu language&quot;)"
                        >wrm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wasco language&quot;)"
                        >wac</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Washkuk language&quot;)"
                        >kmo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Washo language&quot;)"
                        >was</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wasi language&quot;)"
                        >ata</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waskia language&quot;)"
                        >wsk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Watjari language&quot;)"
                        >wbv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Waunana language&quot;)"
                        >noa</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wawenock language&quot;)"
                        >aaq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wayampi language&quot;)"
                        >oym</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wayana language&quot;)"
                        >way</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wedau language&quot;)"
                        >wed</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Welsh language&quot;)"
                        >cym</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Werchikwar language&quot;)"
                        >bsk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;West Armenian language&quot;)"
                        >hye</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;West Makian language&quot;)"
                        >mqs</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Western Apache language&quot;)"
                        >apw</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Western Bukidnon Manobo language&quot;)"
                        >mbb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Western Dani language&quot;)"
                        >dnw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Western Meohang language&quot;)"
                        >raf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Western Subanon language&quot;)"
                        >suc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Western Yugur language&quot;)"
                        >ybe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wewewa language&quot;)"
                        >wew</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;White Hmong language&quot;)"
                        >mww</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;White Mountain Apache language&quot;)"
                        >apw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;White Tai language&quot;)"
                        >twh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wichita language&quot;)"
                        >wic</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wik-Munkan language&quot;)"
                        >wim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Winnebago language&quot;)"
                        >win</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wintu language&quot;)"
                        >wit</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wiradjuri language&quot;)"
                        >wrh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wirangu language&quot;)"
                        >wiw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wiru language&quot;)"
                        >wiu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wiyot language&quot;)"
                        >wiy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wobe language&quot;)"
                        >wob</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Woccon language&quot;)"
                        >xwc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Woisika language&quot;)"
                        >woi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wojokeso language&quot;)"
                        >apz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Woleai language&quot;)"
                        >woe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wolio language&quot;)"
                        >wlo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wolof language&quot;)"
                        >wol</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wongaibon language&quot;)"
                        >wyb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Worora language&quot;)"
                        >unp</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Wotapuri-Katarqalai language&quot;)"
                        >wsv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wotu language&quot;)"
                        >wtw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wule language&quot;)"
                        >dgi</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wuvulu language&quot;)"
                        >wuv</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Wyandot language&quot;)"
                        >wya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Xaragure language&quot;)"
                        >axx</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Xavante language&quot;)"
                        >xav</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Xhosa language&quot;)"
                        >xho</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Xinca language&quot;)"
                        >xin</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Ya language&quot;)">cuu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yaayuwee language&quot;)"
                        >gya</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yabim language&quot;)"
                        >jae</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yabiyufa language&quot;)"
                        >yby</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yagaria language&quot;)"
                        >ygr</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yaghnobi language&quot;)"
                        >yai</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yaghwatadaxa language&quot;)"
                        >gdf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yagua language&quot;)"
                        >yad</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yahgan language&quot;)"
                        >yag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yahi language&quot;)"
                        >ynn</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Yaka language (Congo and Angola)&quot;)"
                        >yaf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yakama language&quot;)"
                        >yak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yakan language&quot;)"
                        >yka</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yakö language&quot;)"
                        >yaz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yakoma language&quot;)"
                        >yky</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yakut language&quot;)"
                        >sah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yala language&quot;)"
                        >yba</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yalunka language&quot;)"
                        >yal</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Yamba language (Cameroon and Nigeria)&quot;)"
                        >yam</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yambeta language&quot;)"
                        >yat</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yamdena language&quot;)"
                        >jmd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yami language&quot;)"
                        >tao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yamphu language&quot;)"
                        >ybi</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Yana language (Burkina Faso and Togo)&quot;)"
                        >mos</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yana language&quot;)"
                        >ynn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yangoru language&quot;)"
                        >bzf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yankton language&quot;)"
                        >dak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yanomamo language&quot;)"
                        >guu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yanyuwa language&quot;)"
                        >jao</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yanzi language&quot;)"
                        >yns</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yao language (Africa)&quot;)"
                        >yao</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Yao language (Southeastern Asia)&quot;)"
                        >ium</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yaouré language&quot;)"
                        >yre</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yapese language&quot;)"
                        >yap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yaqay language&quot;)"
                        >jaq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yaqui language&quot;)"
                        >yaq</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yareba language&quot;)"
                        >yrb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yaruro language&quot;)"
                        >yae</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yau language&quot;)">yyu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yavapai language&quot;)"
                        >yuf</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yawa language&quot;)"
                        >yva</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yay language&quot;)">pcc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yazghulami language&quot;)"
                        >yah</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yecuana language&quot;)"
                        >mch</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yele language&quot;)"
                        >yle</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yellow Uighur language&quot;)"
                        >ybe</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yemba language&quot;)"
                        >ybb</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yemsa language&quot;)"
                        >jnj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yerava language&quot;)"
                        >yea</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yerukala language&quot;)"
                        >yeu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yessan-Mayo language&quot;)"
                        >yss</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yeyi language&quot;)"
                        >yey</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yiddish language&quot;)"
                        >yid</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yidiny language&quot;)"
                        >yii</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yimas language&quot;)"
                        >yee</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yimchungru language&quot;)"
                        >yim</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yinggarda language&quot;)"
                        >yia</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yir-Yoront language&quot;)"
                        >yiy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yogad language&quot;)"
                        >yog</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yogli language&quot;)"
                        >nst</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yokuts language&quot;)"
                        >yok</xsl:when>
                    <xsl:when
                        test="lower-case($lcsh) = lower-case(&quot;Yombe language (Congo and Angola)&quot;)"
                        >yom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yongkom language&quot;)"
                        >yon</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yopno language&quot;)"
                        >yut</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yoruba language&quot;)"
                        >yor</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yuchi language&quot;)"
                        >yuc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yucuna language&quot;)"
                        >ycn</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yugh language&quot;)"
                        >yuu</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yugumbir language&quot;)"
                        >bdy</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yui language&quot;)">sll</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yuit language&quot;)"
                        >ess</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yuki language&quot;)"
                        >yuk</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yulu language&quot;)"
                        >yul</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yunca language&quot;)"
                        >omc</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yupa language&quot;)"
                        >yup</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yuracare language&quot;)"
                        >yuz</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yuri language&quot;)"
                        >yuj</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yurok language&quot;)"
                        >yur</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Yuruti language&quot;)"
                        >yui</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zaghawa language&quot;)"
                        >zag</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zanaki language&quot;)"
                        >zak</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zande language&quot;)"
                        >zne</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zang Zung language&quot;)"
                        >xzh</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zaparo language&quot;)"
                        >zro</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zapotec language&quot;)"
                        >zap</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zarma language&quot;)"
                        >dje</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zaza language&quot;)"
                        >zza</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zebaki language&quot;)"
                        >sgl</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zeme language&quot;)"
                        >nzm</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zenaga language&quot;)"
                        >zen</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zezuru language&quot;)"
                        >sna</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zhuang language&quot;)"
                        >zha</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zigula language&quot;)"
                        >ziw</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zoró language&quot;)"
                        >gvo</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zotung language&quot;)"
                        >czt</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zou language&quot;)">zom</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zulgo language&quot;)"
                        >gnd</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zulu language&quot;)"
                        >zul</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zuni language&quot;)"
                        >zun</xsl:when>
                    <xsl:when test="lower-case($lcsh) = lower-case(&quot;Zway language&quot;)"
                        >zwa</xsl:when>
                    <xsl:otherwise>failed</xsl:otherwise>
                </xsl:choose>
            </xsl:when>

            <!-- map LCCN to ISO639-3 -->
            <xsl:when test="$lccn">
                <xsl:choose>
                    <xsl:when test="$lccn = 'sh85148840'">huc</xsl:when>
                    <xsl:when test="$lccn = 'sh85000043'">abx</xsl:when>
                    <xsl:when test="$lccn = 'sh85000058'">aau</xsl:when>
                    <xsl:when test="$lccn = 'sh85000059'">abq</xsl:when>
                    <xsl:when test="$lccn = 'sh85000120'">any</xsl:when>
                    <xsl:when test="$lccn = 'sh85000148'">abi</xsl:when>
                    <xsl:when test="$lccn = 'sh85000164'">axb</xsl:when>
                    <xsl:when test="$lccn = 'sh85000169'">abk</xsl:when>
                    <xsl:when test="$lccn = 'sh98003462'">abb</xsl:when>
                    <xsl:when test="$lccn = 'sh85000189'">adi</xsl:when>
                    <xsl:when test="$lccn = 'sh85000266'">abn</xsl:when>
                    <xsl:when test="$lccn = 'sh87003881'">mrr</xsl:when>
                    <xsl:when test="$lccn = 'sh85000273'">abt</xsl:when>
                    <xsl:when test="$lccn = 'sh99004230'">kgr</xsl:when>
                    <xsl:when test="$lccn = 'sh86002298'">abu</xsl:when>
                    <xsl:when test="$lccn = 'sh85000343'">ake</xsl:when>
                    <xsl:when test="$lccn = 'sh85000484'">aca</xsl:when>
                    <xsl:when test="$lccn = 'sh87002571'">acn</xsl:when>
                    <xsl:when test="$lccn = 'sh85000504'">ace</xsl:when>
                    <xsl:when test="$lccn = 'sh85000509'">acv</xsl:when>
                    <xsl:when test="$lccn = 'sh85000514'">acu</xsl:when>
                    <xsl:when test="$lccn = 'sh85000564'">ach</xsl:when>
                    <xsl:when test="$lccn = 'sh85000567'">kjq</xsl:when>
                    <xsl:when test="$lccn = 'sh85000795'">ada</xsl:when>
                    <xsl:when test="$lccn = 'sh85073193'">ort</xsl:when>
                    <xsl:when test="$lccn = 'sh85001057'">dma</xsl:when>
                    <xsl:when test="$lccn = 'sh85001214'">ady</xsl:when>
                    <xsl:when test="$lccn = 'sh86001613'">adj</xsl:when>
                    <xsl:when test="$lccn = 'sh85001219'">kat</xsl:when>
                    <xsl:when test="$lccn = 'sh85001242'">awi</xsl:when>
                    <xsl:when test="$lccn = 'sh87005173'">grc</xsl:when>
                    <xsl:when test="$lccn = 'sh85001489'">aal</xsl:when>
                    <xsl:when test="$lccn = 'sh85001491'">aar</xsl:when>
                    <xsl:when test="$lccn = 'sh85001761'">afh</xsl:when>
                    <xsl:when test="$lccn = 'sh85001765'">afr</xsl:when>
                    <xsl:when test="$lccn = 'sh91002836'">azb</xsl:when>
                    <xsl:when test="$lccn = 'sh85002045'">agd</xsl:when>
                    <xsl:when test="$lccn = 'sh85002064'">awn</xsl:when>
                    <xsl:when test="$lccn = 'sh85002218'">esu</xsl:when>
                    <xsl:when test="$lccn = 'sh85002257'">knn</xsl:when>
                    <xsl:when test="$lccn = 'sh85002509'">agt</xsl:when>
                    <xsl:when test="$lccn = 'sh85002511'">agu</xsl:when>
                    <xsl:when test="$lccn = 'sh85002512'">agr</xsl:when>
                    <xsl:when test="$lccn = 'sh85002517'">agx</xsl:when>
                    <xsl:when test="$lccn = 'sh88007669'">msm</xsl:when>
                    <xsl:when test="$lccn = 'sh92005054'">agn</xsl:when>
                    <xsl:when test="$lccn = 'sh97005106'">ahr</xsl:when>
                    <xsl:when test="$lccn = 'sh85002533'">aho</xsl:when>
                    <xsl:when test="$lccn = 'sh85002537'">aht</xsl:when>
                    <xsl:when test="$lccn = 'sh85003028'">ajg</xsl:when>
                    <xsl:when test="$lccn = 'sh85003029'">aja</xsl:when>
                    <xsl:when test="$lccn = 'sh85003030'">aji</xsl:when>
                    <xsl:when test="$lccn = 'sh85003039'">axk</xsl:when>
                    <xsl:when test="$lccn = 'sh85003047'">aka</xsl:when>
                    <xsl:when test="$lccn = 'sh94006010'">knj</xsl:when>
                    <xsl:when test="$lccn = 'sh00007475'">tsr</xsl:when>
                    <xsl:when test="$lccn = 'sh85003062'">akv</xsl:when>
                    <xsl:when test="$lccn = 'sh93002855'">kvr</xsl:when>
                    <xsl:when test="$lccn = 'sh85003069'">che</xsl:when>
                    <xsl:when test="$lccn = 'sh85003070'">akk</xsl:when>
                    <xsl:when test="$lccn = 'sh98000082'">akl</xsl:when>
                    <xsl:when test="$lccn = 'sh85003104'">akz</xsl:when>
                    <xsl:when test="$lccn = 'sh85003114'">alc</xsl:when>
                    <xsl:when test="$lccn = 'sh85003116'">ald</xsl:when>
                    <xsl:when test="$lccn = 'sh85003127'">amp</xsl:when>
                    <xsl:when test="$lccn = 'sh85003134'">alj</xsl:when>
                    <xsl:when test="$lccn = 'sh87003999'">btz</xsl:when>
                    <xsl:when test="$lccn = 'sh85003174'">alh</xsl:when>
                    <xsl:when test="$lccn = 'sh85003198'">sqi</xsl:when>
                    <xsl:when test="$lccn = 'sh85003358'">ale</xsl:when>
                    <xsl:when test="$lccn = 'sh85003481'">alq</xsl:when>
                    <xsl:when test="$lccn = 'sh85003855'">aes</xsl:when>
                    <xsl:when test="$lccn = 'sh90000035'">xua</xsl:when>
                    <xsl:when test="$lccn = 'sh93007234'">alp</xsl:when>
                    <xsl:when test="$lccn = 'sh85004053'">alz</xsl:when>
                    <xsl:when test="$lccn = 'sh99005940'">alr</xsl:when>
                    <xsl:when test="$lccn = 'sh85004076'">aly</xsl:when>
                    <xsl:when test="$lccn = 'sh85004085'">amm</xsl:when>
                    <xsl:when test="$lccn = 'sh85004090'">amc</xsl:when>
                    <xsl:when test="$lccn = 'sh94004160'">amn</xsl:when>
                    <xsl:when test="$lccn = 'sh00005327'">amg</xsl:when>
                    <xsl:when test="$lccn = 'sh94007785'">amk</xsl:when>
                    <xsl:when test="$lccn = 'sh85004163'">leb</xsl:when>
                    <xsl:when test="$lccn = 'sh92001354'">abs</xsl:when>
                    <xsl:when test="$lccn = 'sh88001431'">adx</xsl:when>
                    <xsl:when test="$lccn = 'sh85004206'">aey</xsl:when>
                    <xsl:when test="$lccn = 'sh91002945'">ase</xsl:when>
                    <xsl:when test="$lccn = 'sh91000533'">ifa</xsl:when>
                    <xsl:when test="$lccn = 'sh85004449'">amh</xsl:when>
                    <xsl:when test="$lccn = 'sh85004474'">ciw</xsl:when>
                    <xsl:when test="$lccn = 'sh85004457'">ami</xsl:when>
                    <xsl:when test="$lccn = 'sh96004459'">kal</xsl:when>
                    <xsl:when test="$lccn = 'sh85004588'">apz</xsl:when>
                    <xsl:when test="$lccn = 'sh85078404'">ame</xsl:when>
                    <xsl:when test="$lccn = 'sh96004176'">akg</xsl:when>
                    <xsl:when test="$lccn = 'sh85004761'">anm</xsl:when>
                    <xsl:when test="$lccn = 'sh88000622'">aoi</xsl:when>
                    <xsl:when test="$lccn = 'sh85004907'">ano</xsl:when>
                    <xsl:when test="$lccn = 'sh85004937'">aty</xsl:when>
                    <xsl:when test="$lccn = 'sh85004939'">anz</xsl:when>
                    <xsl:when test="$lccn = 'sh91003699'">aby</xsl:when>
                    <xsl:when test="$lccn = 'sh85004982'">ane</xsl:when>
                    <xsl:when test="$lccn = 'sh85004989'">akh</xsl:when>
                    <xsl:when test="$lccn = 'sh85004990'">njm</xsl:when>
                    <xsl:when test="$lccn = 'sh85004995'">anc</xsl:when>
                    <xsl:when test="$lccn = 'sh85005015'">agg</xsl:when>
                    <xsl:when test="$lccn = 'sh85005018'">anp</xsl:when>
                    <xsl:when test="$lccn = 'sh96001509'">akb</xsl:when>
                    <xsl:when test="$lccn = 'sh85005079'">xno</xsl:when>
                    <xsl:when test="$lccn = 'sh93006297'">aak</xsl:when>
                    <xsl:when test="$lccn = 'sh2001004534'">amx</xsl:when>
                    <xsl:when test="$lccn = 'sh85005358'">fab</xsl:when>
                    <xsl:when test="$lccn = 'sh85005482'">bjq</xsl:when>
                    <xsl:when test="$lccn = 'sh85005812'">anu</xsl:when>
                    <xsl:when test="$lccn = 'sh85005816'">cko</xsl:when>
                    <xsl:when test="$lccn = 'sh85005833'">aud</xsl:when>
                    <xsl:when test="$lccn = 'sh88005464'">ken</xsl:when>
                    <xsl:when test="$lccn = 'sh85005843'">any</xsl:when>
                    <xsl:when test="$lccn = 'sh85005850'">njo</xsl:when>
                    <xsl:when test="$lccn = 'sh85005853'">aom</xsl:when>
                    <xsl:when test="$lccn = 'sh85005892'">xap</xsl:when>
                    <xsl:when test="$lccn = 'sh85005897'">apy</xsl:when>
                    <xsl:when test="$lccn = 'sh85005930'">apt</xsl:when>
                    <xsl:when test="$lccn = 'sh96007753'">ard</xsl:when>
                    <xsl:when test="$lccn = 'sh85006288'">arl</xsl:when>
                    <xsl:when test="$lccn = 'sh85006306'">ara</xsl:when>
                    <xsl:when test="$lccn = 'sh98001085'">rki</xsl:when>
                    <xsl:when test="$lccn = 'sh85006404'">arc</xsl:when>
                    <xsl:when test="$lccn = 'sh85006413'">are</xsl:when>
                    <xsl:when test="$lccn = 'sh85006421'">aro</xsl:when>
                    <xsl:when test="$lccn = 'sh85006423'">arp</xsl:when>
                    <xsl:when test="$lccn = 'sh85006445'">arw</xsl:when>
                    <xsl:when test="$lccn = 'sh86002393'">arv</xsl:when>
                    <xsl:when test="$lccn = 'sh85006540'">aqc</xsl:when>
                    <xsl:when test="$lccn = 'sh85006992'">alu</xsl:when>
                    <xsl:when test="$lccn = 'sh85006996'">aoc</xsl:when>
                    <xsl:when test="$lccn = 'sh85006998'">gae</xsl:when>
                    <xsl:when test="$lccn = 'sh85007106'">agj</xsl:when>
                    <xsl:when test="$lccn = 'sh99002910'">laz</xsl:when>
                    <xsl:when test="$lccn = 'sh85007150'">ari</xsl:when>
                    <xsl:when test="$lccn = 'sh85007285'">hye</xsl:when>
                    <xsl:when test="$lccn = 'sh85007286'">xcl</xsl:when>
                    <xsl:when test="$lccn = 'sh85007287'">axm</xsl:when>
                    <xsl:when test="$lccn = 'sh85007288'">hye</xsl:when>
                    <xsl:when test="$lccn = 'sh85007388'">rup</xsl:when>
                    <xsl:when test="$lccn = 'sh85007408'">aia</xsl:when>
                    <xsl:when test="$lccn = 'sh85008510'">aso</xsl:when>
                    <xsl:when test="$lccn = 'sh85008742'">asm</xsl:when>
                    <xsl:when test="$lccn = 'sh85008796'">asb</xsl:when>
                    <xsl:when test="$lccn = 'sh85009040'">ppt</xsl:when>
                    <xsl:when test="$lccn = 'sh93008727'">asr</xsl:when>
                    <xsl:when test="$lccn = 'sh88007670'">atd</xsl:when>
                    <xsl:when test="$lccn = 'sh85009059'">kuz</xsl:when>
                    <xsl:when test="$lccn = 'sh85009377'">aqp</xsl:when>
                    <xsl:when test="$lccn = 'sh85009086'">upv</xsl:when>
                    <xsl:when test="$lccn = 'sh98000948'">aph</xsl:when>
                    <xsl:when test="$lccn = 'sh87003848'">bld</xsl:when>
                    <xsl:when test="$lccn = 'sh85009160'">epi</xsl:when>
                    <xsl:when test="$lccn = 'sh85009369'">adz</xsl:when>
                    <xsl:when test="$lccn = 'sh85009371'">ats</xsl:when>
                    <xsl:when test="$lccn = 'sh85009373'">atw</xsl:when>
                    <xsl:when test="$lccn = 'sh85009375'">att</xsl:when>
                    <xsl:when test="$lccn = 'sh86007831'">grc</xsl:when>
                    <xsl:when test="$lccn = 'sh85009404'">ati</xsl:when>
                    <xsl:when test="$lccn = 'sh85009433'">avt</xsl:when>
                    <xsl:when test="$lccn = 'sh2002006282'">aul</xsl:when>
                    <xsl:when test="$lccn = 'sh98006737'">asf</xsl:when>
                    <xsl:when test="$lccn = 'sh85010486'">kze</xsl:when>
                    <xsl:when test="$lccn = 'sh85010497'">ava</xsl:when>
                    <xsl:when test="$lccn = 'sh85010527'">ave</xsl:when>
                    <xsl:when test="$lccn = 'sh85010567'">awb</xsl:when>
                    <xsl:when test="$lccn = 'sh2002007782'">awk</xsl:when>
                    <xsl:when test="$lccn = 'sh85010568'">awa</xsl:when>
                    <xsl:when test="$lccn = 'sh87002384'">ifb</xsl:when>
                    <xsl:when test="$lccn = 'sh2002005784'">ayb</xsl:when>
                    <xsl:when test="$lccn = 'sh85010618'">aym</xsl:when>
                    <xsl:when test="$lccn = 'sh92005083'">sgb</xsl:when>
                    <xsl:when test="$lccn = 'sh98005406'">blx</xsl:when>
                    <xsl:when test="$lccn = 'sh85010640'">aze</xsl:when>
                    <xsl:when test="$lccn = 'sh85010736'">bcr</xsl:when>
                    <xsl:when test="$lccn = 'sh86001021'">ast</xsl:when>
                    <xsl:when test="$lccn = 'sh98003739'">bhz</xsl:when>
                    <xsl:when test="$lccn = 'sh85010890'">bfq</xsl:when>
                    <xsl:when test="$lccn = 'sh85010891'">drw</xsl:when>
                    <xsl:when test="$lccn = 'sh85010924'">pbp</xsl:when>
                    <xsl:when test="$lccn = 'sh85010945'">ksf</xsl:when>
                    <xsl:when test="$lccn = 'sh96004867'">bfd</xsl:when>
                    <xsl:when test="$lccn = 'sh85010964'">bfy</xsl:when>
                    <xsl:when test="$lccn = 'sh85010966'">bmi</xsl:when>
                    <xsl:when test="$lccn = 'sh85010969'">obo</xsl:when>
                    <xsl:when test="$lccn = 'sh85010980'">bgq</xsl:when>
                    <xsl:when test="$lccn = 'sh85010986'">kva</xsl:when>
                    <xsl:when test="$lccn = 'sh85011053'">gyi</xsl:when>
                    <xsl:when test="$lccn = 'sh92004900'">bdw</xsl:when>
                    <xsl:when test="$lccn = 'sh85011008'">bjh</xsl:when>
                    <xsl:when test="$lccn = 'sh85011009'">bhj</xsl:when>
                    <xsl:when test="$lccn = 'sh85011010'">bdq</xsl:when>
                    <xsl:when test="$lccn = 'sh85085463'">bca</xsl:when>
                    <xsl:when test="$lccn = 'sh85011039'">byx</xsl:when>
                    <xsl:when test="$lccn = 'sh92005056'">bsw</xsl:when>
                    <xsl:when test="$lccn = 'sh85011052'">bdl</xsl:when>
                    <xsl:when test="$lccn = 'sh85011064'">bkc</xsl:when>
                    <xsl:when test="$lccn = 'sh85011063'">bdh</xsl:when>
                    <xsl:when test="$lccn = 'sh85011066'">bkq</xsl:when>
                    <xsl:when test="$lccn = 'sh85011086'">bqi</xsl:when>
                    <xsl:when test="$lccn = 'sh85011099'">bss</xsl:when>
                    <xsl:when test="$lccn = 'sh87003436'">bkr</xsl:when>
                    <xsl:when test="$lccn = 'sh85011102'">bdu</xsl:when>
                    <xsl:when test="$lccn = 'sh87003178'">bls</xsl:when>
                    <xsl:when test="$lccn = 'sh85011134'">blw</xsl:when>
                    <xsl:when test="$lccn = 'sh87000399'">sse</xsl:when>
                    <xsl:when test="$lccn = 'sh93007849'">blz</xsl:when>
                    <xsl:when test="$lccn = 'sh85011141'">ble</xsl:when>
                    <xsl:when test="$lccn = 'sh85011177'">ban</xsl:when>
                    <xsl:when test="$lccn = 'sh85011358'">bft</xsl:when>
                    <xsl:when test="$lccn = 'sh85011389'">bal</xsl:when>
                    <xsl:when test="$lccn = 'sh85011402'">bam</xsl:when>
                    <xsl:when test="$lccn = 'sh85011404'">baa</xsl:when>
                    <xsl:when test="$lccn = 'sh85011428'">bcf</xsl:when>
                    <xsl:when test="$lccn = 'sh85011431'">bax</xsl:when>
                    <xsl:when test="$lccn = 'sh97005156'">bnd</xsl:when>
                    <xsl:when test="$lccn = 'sh85011477'">liy</xsl:when>
                    <xsl:when test="$lccn = 'sh85011488'">bdy</xsl:when>
                    <xsl:when test="$lccn = 'sh85011489'">bbj</xsl:when>
                    <xsl:when test="$lccn = 'sh85011513'">bgc</xsl:when>
                    <xsl:when test="$lccn = 'sh97008843'">bgz</xsl:when>
                    <xsl:when test="$lccn = 'sh85011534'">bnx</xsl:when>
                    <xsl:when test="$lccn = 'sh98005393'">nwe</xsl:when>
                    <xsl:when test="$lccn = 'sh93006907'">bwi</xsl:when>
                    <xsl:when test="$lccn = 'sh98004935'">bjn</xsl:when>
                    <xsl:when test="$lccn = 'sh85011543'">bjn</xsl:when>
                    <xsl:when test="$lccn = 'sh96000588'">bdu</xsl:when>
                    <xsl:when test="$lccn = 'sh97004142'">bap</xsl:when>
                    <xsl:when test="$lccn = 'sh93002705'">jav</xsl:when>
                    <xsl:when test="$lccn = 'sh88000623'">bno</xsl:when>
                    <xsl:when test="$lccn = 'sh92004897'">pnw</xsl:when>
                    <xsl:when test="$lccn = 'sh85011766'">bhr</xsl:when>
                    <xsl:when test="$lccn = 'sh85011771'">bbb</xsl:when>
                    <xsl:when test="$lccn = 'sh85011774'">brm</xsl:when>
                    <xsl:when test="$lccn = 'sh85011776'">bao</xsl:when>
                    <xsl:when test="$lccn = 'sh85011777'">bsn</xsl:when>
                    <xsl:when test="$lccn = 'sh85011820'">bcj</xsl:when>
                    <xsl:when test="$lccn = 'sh96002072'">bae</xsl:when>
                    <xsl:when test="$lccn = 'sh85011825'">pmf</xsl:when>
                    <xsl:when test="$lccn = 'sh85011834'">bfa</xsl:when>
                    <xsl:when test="$lccn = 'sh85011835'">nrb</xsl:when>
                    <xsl:when test="$lccn = 'sh2001005810'">bch</xsl:when>
                    <xsl:when test="$lccn = 'sh92003361'">bba</xsl:when>
                    <xsl:when test="$lccn = 'sh85011978'">sgh</xsl:when>
                    <xsl:when test="$lccn = 'sh85011998'">byr</xsl:when>
                    <xsl:when test="$lccn = 'sh85012012'">bas</xsl:when>
                    <xsl:when test="$lccn = 'sh93007567'">bdb</xsl:when>
                    <xsl:when test="$lccn = 'sh85012064'">bsh</xsl:when>
                    <xsl:when test="$lccn = 'sh85012068'">bak</xsl:when>
                    <xsl:when test="$lccn = 'sh85012138'">eus</xsl:when>
                    <xsl:when test="$lccn = 'sh85012174'">bsq</xsl:when>
                    <xsl:when test="$lccn = 'sh85012177'">bsc</xsl:when>
                    <xsl:when test="$lccn = 'sh87000954'">ifb</xsl:when>
                    <xsl:when test="$lccn = 'sh97000390'">bya</xsl:when>
                    <xsl:when test="$lccn = 'sh85012311'">bya</xsl:when>
                    <xsl:when test="$lccn = 'sh85012314'">ivv</xsl:when>
                    <xsl:when test="$lccn = 'sh85012375'">btc</xsl:when>
                    <xsl:when test="$lccn = 'sh85012399'">bbl</xsl:when>
                    <xsl:when test="$lccn = 'sh85012441'">sne</xsl:when>
                    <xsl:when test="$lccn = 'sh85011715'">bci</xsl:when>
                    <xsl:when test="$lccn = 'sh85012453'">brg</xsl:when>
                    <xsl:when test="$lccn = 'sh86007445'">bvz</xsl:when>
                    <xsl:when test="$lccn = 'sh93009065'">lbx</xsl:when>
                    <xsl:when test="$lccn = 'sh93009159'">bxj</xsl:when>
                    <xsl:when test="$lccn = 'sh90005924'">onb</xsl:when>
                    <xsl:when test="$lccn = 'sh85012688'">oci</xsl:when>
                    <xsl:when test="$lccn = 'sh85012780'">tnr</xsl:when>
                    <xsl:when test="$lccn = 'sh2003005680'">dbj</xsl:when>
                    <xsl:when test="$lccn = 'sh85012920'">bej</xsl:when>
                    <xsl:when test="$lccn = 'sh85012926'">bkv</xsl:when>
                    <xsl:when test="$lccn = 'sh85018438'">bel</xsl:when>
                    <xsl:when test="$lccn = 'sh85013030'">blc</xsl:when>
                    <xsl:when test="$lccn = 'sh85013096'">bem</xsl:when>
                    <xsl:when test="$lccn = 'sh85013098'">beq</xsl:when>
                    <xsl:when test="$lccn = 'sh85013099'">bmb</xsl:when>
                    <xsl:when test="$lccn = 'sh85013101'">bef</xsl:when>
                    <xsl:when test="$lccn = 'sh96002148'">nhb</xsl:when>
                    <xsl:when test="$lccn = 'sh85013141'">bng</xsl:when>
                    <xsl:when test="$lccn = 'sh85013150'">ben</xsl:when>
                    <xsl:when test="$lccn = 'sh85013169'">bww</xsl:when>
                    <xsl:when test="$lccn = 'sh95003814'">pse</xsl:when>
                    <xsl:when test="$lccn = 'sh85013250'">bue</xsl:when>
                    <xsl:when test="$lccn = 'sh86003945'">bkl</xsl:when>
                    <xsl:when test="$lccn = 'sh87001266'">pse</xsl:when>
                    <xsl:when test="$lccn = 'sh2002004299'">bew</xsl:when>
                    <xsl:when test="$lccn = 'sh85013456'">byf</xsl:when>
                    <xsl:when test="$lccn = 'sh85013476'">plt</xsl:when>
                    <xsl:when test="$lccn = 'sh90005920'">bjq</xsl:when>
                    <xsl:when test="$lccn = 'sh99002901'">kap</xsl:when>
                    <xsl:when test="$lccn = 'sh92003042'">bhd</xsl:when>
                    <xsl:when test="$lccn = 'sh87003658'">bhd</xsl:when>
                    <xsl:when test="$lccn = 'sh85013542'">bhb</xsl:when>
                    <xsl:when test="$lccn = 'sh85013549'">bho</xsl:when>
                    <xsl:when test="$lccn = 'sh93008728'">unr</xsl:when>
                    <xsl:when test="$lccn = 'sh85013562'">bhw</xsl:when>
                    <xsl:when test="$lccn = 'sh97000067'">beh</xsl:when>
                    <xsl:when test="$lccn = 'sh85013566'">big</xsl:when>
                    <xsl:when test="$lccn = 'sh92004898'">cmo</xsl:when>
                    <xsl:when test="$lccn = 'sh85013568'">bth</xsl:when>
                    <xsl:when test="$lccn = 'sh88000367'">bid</xsl:when>
                    <xsl:when test="$lccn = 'sh85013921'">bym</xsl:when>
                    <xsl:when test="$lccn = 'sh85013963'">nmb</xsl:when>
                    <xsl:when test="$lccn = 'sh85013987'">bih</xsl:when>
                    <xsl:when test="$lccn = 'sh92004586'">bjg</xsl:when>
                    <xsl:when test="$lccn = 'sh85013993'">rwr</xsl:when>
                    <xsl:when test="$lccn = 'sh85013996'">bik</xsl:when>
                    <xsl:when test="$lccn = 'sh2004006017'">kfs</xsl:when>
                    <xsl:when test="$lccn = 'sh93006302'">bcu</xsl:when>
                    <xsl:when test="$lccn = 'sh85014026'">byn</xsl:when>
                    <xsl:when test="$lccn = 'sh85014073'">bll</xsl:when>
                    <xsl:when test="$lccn = 'sh85014075'">bhp</xsl:when>
                    <xsl:when test="$lccn = 'sh85014080'">bhg</xsl:when>
                    <xsl:when test="$lccn = 'sh85014103'">bin</xsl:when>
                    <xsl:when test="$lccn = 'sh92003270'">bhq</xsl:when>
                    <xsl:when test="$lccn = 'sh97003750'">bne</xsl:when>
                    <xsl:when test="$lccn = 'sh85017827'">bkd</xsl:when>
                    <xsl:when test="$lccn = 'sh85014116'">bjr</xsl:when>
                    <xsl:when test="$lccn = 'sh90005153'">biy</xsl:when>
                    <xsl:when test="$lccn = 'sh2001004751'">bzr</xsl:when>
                    <xsl:when test="$lccn = 'sh85014357'">bom</xsl:when>
                    <xsl:when test="$lccn = 'sh85014358'">bvq</xsl:when>
                    <xsl:when test="$lccn = 'sh85014401'">leb</xsl:when>
                    <xsl:when test="$lccn = 'sh85014417'">bpy</xsl:when>
                    <xsl:when test="$lccn = 'sh85014431'">nmg</xsl:when>
                    <xsl:when test="$lccn = 'sh85014432'">bis</xsl:when>
                    <xsl:when test="$lccn = 'sh92004544'">bir</xsl:when>
                    <xsl:when test="$lccn = 'sh85014537'">cab</xsl:when>
                    <xsl:when test="$lccn = 'sh85014572'">hea</xsl:when>
                    <xsl:when test="$lccn = 'sh86002415'">blt</xsl:when>
                    <xsl:when test="$lccn = 'sh91002680'">beu</xsl:when>
                    <xsl:when test="$lccn = 'sh92000912'">blr</xsl:when>
                    <xsl:when test="$lccn = 'sh85015179'">bni</xsl:when>
                    <xsl:when test="$lccn = 'sh85015193'">bbo</xsl:when>
                    <xsl:when test="$lccn = 'sh86006662'">csi</xsl:when>
                    <xsl:when test="$lccn = 'sh85015302'">cop</xsl:when>
                    <xsl:when test="$lccn = 'sh85015339'">bzf</xsl:when>
                    <xsl:when test="$lccn = 'sh85015355'">adi</xsl:when>
                    <xsl:when test="$lccn = 'sh87001847'">mog</xsl:when>
                    <xsl:when test="$lccn = 'sh85015373'">bli</xsl:when>
                    <xsl:when test="$lccn = 'sh87000318'">smk</xsl:when>
                    <xsl:when test="$lccn = 'sh93006225'">blj</xsl:when>
                    <xsl:when test="$lccn = 'sh92004850'">boj</xsl:when>
                    <xsl:when test="$lccn = 'sh85015457'">boh</xsl:when>
                    <xsl:when test="$lccn = 'sh91000607'">zmx</xsl:when>
                    <xsl:when test="$lccn = 'sh85097521'">peh</xsl:when>
                    <xsl:when test="$lccn = 'sh85015497'">bfw</xsl:when>
                    <xsl:when test="$lccn = 'sh85015502'">bou</xsl:when>
                    <xsl:when test="$lccn = 'sh85015563'">bot</xsl:when>
                    <xsl:when test="$lccn = 'sh85015564'">bpu</xsl:when>
                    <xsl:when test="$lccn = 'sh92004530'">djk</xsl:when>
                    <xsl:when test="$lccn = 'sh85015565'">bob</xsl:when>
                    <xsl:when test="$lccn = 'sh91003700'">bmq</xsl:when>
                    <xsl:when test="$lccn = 'sh85015793'">dks</xsl:when>
                    <xsl:when test="$lccn = 'sh87007602'">bxb</xsl:when>
                    <xsl:when test="$lccn = 'sh85015796'">boa</xsl:when>
                    <xsl:when test="$lccn = 'sh85015800'">gax</xsl:when>
                    <xsl:when test="$lccn = 'sh93007899'">adi</xsl:when>
                    <xsl:when test="$lccn = 'sh85015881'">bor</xsl:when>
                    <xsl:when test="$lccn = 'sh89002891'">fuv</xsl:when>
                    <xsl:when test="$lccn = 'sh85015890'">brn</xsl:when>
                    <xsl:when test="$lccn = 'sh00003105'">bos</xsl:when>
                    <xsl:when test="$lccn = 'sh92001884'">bmj</xsl:when>
                    <xsl:when test="$lccn = 'sh87007666'">bph</xsl:when>
                    <xsl:when test="$lccn = 'sh87000507'">sbl</xsl:when>
                    <xsl:when test="$lccn = 'sh85108601'">pcc</xsl:when>
                    <xsl:when test="$lccn = 'sh85016310'">brh</xsl:when>
                    <xsl:when test="$lccn = 'sh85016374'">bra</xsl:when>
                    <xsl:when test="$lccn = 'sh85016753'">bre</xsl:when>
                    <xsl:when test="$lccn = 'sh85016790'">bzd</xsl:when>
                    <xsl:when test="$lccn = 'sh85016942'">any</xsl:when>
                    <xsl:when test="$lccn = 'sh94004900'">bfi</xsl:when>
                    <xsl:when test="$lccn = 'sh85017040'">bkk</xsl:when>
                    <xsl:when test="$lccn = 'sh85017400'">bvb</xsl:when>
                    <xsl:when test="$lccn = 'sh85017614'">bdk</xsl:when>
                    <xsl:when test="$lccn = 'sh97001806'">bdm</xsl:when>
                    <xsl:when test="$lccn = 'sh85017675'">bug</xsl:when>
                    <xsl:when test="$lccn = 'sh85017684'">bgt</xsl:when>
                    <xsl:when test="$lccn = 'sh94005815'">bgg</xsl:when>
                    <xsl:when test="$lccn = 'sh85017823'">buo</xsl:when>
                    <xsl:when test="$lccn = 'sh85017824'">sdo</xsl:when>
                    <xsl:when test="$lccn = 'sh98005027'">buk</xsl:when>
                    <xsl:when test="$lccn = 'sh85017831'">bxk</xsl:when>
                    <xsl:when test="$lccn = 'sh85017903'">bul</xsl:when>
                    <xsl:when test="$lccn = 'sh87007466'">bwu</xsl:when>
                    <xsl:when test="$lccn = 'sh85017979'">bum</xsl:when>
                    <xsl:when test="$lccn = 'sh2002002075'">bck</xsl:when>
                    <xsl:when test="$lccn = 'sh85017986'">bfn</xsl:when>
                    <xsl:when test="$lccn = 'sh87007603'">bdd</xsl:when>
                    <xsl:when test="$lccn = 'sh85017988'">bns</xsl:when>
                    <xsl:when test="$lccn = 'sh90004680'">swu</xsl:when>
                    <xsl:when test="$lccn = 'sh99005134'">bkz</xsl:when>
                    <xsl:when test="$lccn = 'sh85018020'">bnn</xsl:when>
                    <xsl:when test="$lccn = 'sh87004150'">blf</xsl:when>
                    <xsl:when test="$lccn = 'sh85018050'">bvr</xsl:when>
                    <xsl:when test="$lccn = 'sh85018089'">bua</xsl:when>
                    <xsl:when test="$lccn = 'sh85018097'">bji</xsl:when>
                    <xsl:when test="$lccn = 'sh85018133'">mya</xsl:when>
                    <xsl:when test="$lccn = 'sh85018214'">mhs</xsl:when>
                    <xsl:when test="$lccn = 'sh87007463'">bmu</xsl:when>
                    <xsl:when test="$lccn = 'sh85018217'">bsk</xsl:when>
                    <xsl:when test="$lccn = 'sh85018254'">buf</xsl:when>
                    <xsl:when test="$lccn = 'sh85018423'">bwd</xsl:when>
                    <xsl:when test="$lccn = 'sh91003701'">bww</xsl:when>
                    <xsl:when test="$lccn = 'sh96000155'">bee</xsl:when>
                    <xsl:when test="$lccn = 'sh89006521'">cjp</xsl:when>
                    <xsl:when test="$lccn = 'sh85018608'">cbv</xsl:when>
                    <xsl:when test="$lccn = 'sh85018619'">cad</xsl:when>
                    <xsl:when test="$lccn = 'sh85018701'">chl</xsl:when>
                    <xsl:when test="$lccn = 'sh85018712'">kgk</xsl:when>
                    <xsl:when test="$lccn = 'sh85018722'">frc</xsl:when>
                    <xsl:when test="$lccn = 'sh85018724'">hrv</xsl:when>
                    <xsl:when test="$lccn = 'sh85018938'">caw</xsl:when>
                    <xsl:when test="$lccn = 'sh85019018'">rmr</xsl:when>
                    <xsl:when test="$lccn = 'sh85019040'">clu</xsl:when>
                    <xsl:when test="$lccn = 'sh85071387'">aoc</xsl:when>
                    <xsl:when test="$lccn = 'sh85019182'">cni</xsl:when>
                    <xsl:when test="$lccn = 'sh85019271'">kbh</xsl:when>
                    <xsl:when test="$lccn = 'sh85019272'">cam</xsl:when>
                    <xsl:when test="$lccn = 'sh85019476'">quf</xsl:when>
                    <xsl:when test="$lccn = 'sh85019579'">cbu</xsl:when>
                    <xsl:when test="$lccn = 'sh85019585'">ram</xsl:when>
                    <xsl:when test="$lccn = 'sh85019593'">caz</xsl:when>
                    <xsl:when test="$lccn = 'sh85019869'">kaq</xsl:when>
                    <xsl:when test="$lccn = 'sh92004531'">kea</xsl:when>
                    <xsl:when test="$lccn = 'sh87007471'">cot</xsl:when>
                    <xsl:when test="$lccn = 'sh91003089'">caq</xsl:when>
                    <xsl:when test="$lccn = 'sh85020058'">cbc</xsl:when>
                    <xsl:when test="$lccn = 'sh94000809'">xcr</xsl:when>
                    <xsl:when test="$lccn = 'sh85020274'">car</xsl:when>
                    <xsl:when test="$lccn = 'sh91001634'">cal</xsl:when>
                    <xsl:when test="$lccn = 'sh96007026'">rue</xsl:when>
                    <xsl:when test="$lccn = 'sh85020469'">crx</xsl:when>
                    <xsl:when test="$lccn = 'sh85020593'">cbr</xsl:when>
                    <xsl:when test="$lccn = 'sh85020596'">cbs</xsl:when>
                    <xsl:when test="$lccn = 'sh85020782'">cat</xsl:when>
                    <xsl:when test="$lccn = 'sh85020962'">chc</xsl:when>
                    <xsl:when test="$lccn = 'sh85021246'">cto</xsl:when>
                    <xsl:when test="$lccn = 'sh85021456'">jqr</xsl:when>
                    <xsl:when test="$lccn = 'sh85021542'">cav</xsl:when>
                    <xsl:when test="$lccn = 'sh89006436'">cbi</xsl:when>
                    <xsl:when test="$lccn = 'sh85021555'">txu</xsl:when>
                    <xsl:when test="$lccn = 'sh96003821'">cay</xsl:when>
                    <xsl:when test="$lccn = 'sh85021563'">cyb</xsl:when>
                    <xsl:when test="$lccn = 'sh85021584'">ceb</xsl:when>
                    <xsl:when test="$lccn = 'sh96009143'">xce</xsl:when>
                    <xsl:when test="$lccn = 'sh88005094'">bnc</xsl:when>
                    <xsl:when test="$lccn = 'sh92004899'">cmo</xsl:when>
                    <xsl:when test="$lccn = 'sh98000812'">sml</xsl:when>
                    <xsl:when test="$lccn = 'sh86007780'">syb</xsl:when>
                    <xsl:when test="$lccn = 'sh90002786'">esu</xsl:when>
                    <xsl:when test="$lccn = 'sh85022232'">cbk</xsl:when>
                    <xsl:when test="$lccn = 'sh85022249'">cao</xsl:when>
                    <xsl:when test="$lccn = 'sh85022321'">chg</xsl:when>
                    <xsl:when test="$lccn = 'sh00001672'">sgw</xsl:when>
                    <xsl:when test="$lccn = 'sh86005099'">mvf</xsl:when>
                    <xsl:when test="$lccn = 'sh85022360'">nri</xsl:when>
                    <xsl:when test="$lccn = 'sh85022362'">ccp</xsl:when>
                    <xsl:when test="$lccn = 'sh85022404'">ceg</xsl:when>
                    <xsl:when test="$lccn = 'sh85022415'">cji</xsl:when>
                    <xsl:when test="$lccn = 'sh97000762'">ccg</xsl:when>
                    <xsl:when test="$lccn = 'sh85022418'">lae</xsl:when>
                    <xsl:when test="$lccn = 'sh85022435'">cdh</xsl:when>
                    <xsl:when test="$lccn = 'sh86008121'">can</xsl:when>
                    <xsl:when test="$lccn = 'sh93006490'">cmi</xsl:when>
                    <xsl:when test="$lccn = 'sh94000885'">ccc</xsl:when>
                    <xsl:when test="$lccn = 'sh96001688'">rab</xsl:when>
                    <xsl:when test="$lccn = 'sh85022445'">cha</xsl:when>
                    <xsl:when test="$lccn = 'sh85022505'">nbc</xsl:when>
                    <xsl:when test="$lccn = 'sh97007948'">chx</xsl:when>
                    <xsl:when test="$lccn = 'sh85023198'">hne</xsl:when>
                    <xsl:when test="$lccn = 'sh85022798'">cbt</xsl:when>
                    <xsl:when test="$lccn = 'sh85022814'">che</xsl:when>
                    <xsl:when test="$lccn = 'sh95010794'">mrn</xsl:when>
                    <xsl:when test="$lccn = 'sh85022887'">ute</xsl:when>
                    <xsl:when test="$lccn = 'sh97003086'">ady</xsl:when>
                    <xsl:when test="$lccn = 'sh85023061'">cdm</xsl:when>
                    <xsl:when test="$lccn = 'sh85023087'">chr</xsl:when>
                    <xsl:when test="$lccn = 'sh92005279'">arg</xsl:when>
                    <xsl:when test="$lccn = 'sh85023183'">nya</xsl:when>
                    <xsl:when test="$lccn = 'sh85023193'">chy</xsl:when>
                    <xsl:when test="$lccn = 'sh85023219'">cip</xsl:when>
                    <xsl:when test="$lccn = 'sh85023225'">chb</xsl:when>
                    <xsl:when test="$lccn = 'sh85023289'">cic</xsl:when>
                    <xsl:when test="$lccn = 'sh85072299'">cgg</xsl:when>
                    <xsl:when test="$lccn = 'sh2002004857'">csg</xsl:when>
                    <xsl:when test="$lccn = 'sh85023936'">hur</xsl:when>
                    <xsl:when test="$lccn = 'sh85023952'">cas</xsl:when>
                    <xsl:when test="$lccn = 'sh85023955'">cid</xsl:when>
                    <xsl:when test="$lccn = 'sh94005842'">cih</xsl:when>
                    <xsl:when test="$lccn = 'sh93007141'">cnb</xsl:when>
                    <xsl:when test="$lccn = 'sh85024301'">zho</xsl:when>
                    <xsl:when test="$lccn = 'sh00002637'">csl</xsl:when>
                    <xsl:when test="$lccn = 'sh85024399'">chh</xsl:when>
                    <xsl:when test="$lccn = 'sh85024415'">cap</xsl:when>
                    <xsl:when test="$lccn = 'sh85024417'">chp</xsl:when>
                    <xsl:when test="$lccn = 'sh85024439'">cax</xsl:when>
                    <xsl:when test="$lccn = 'sh85024446'">apm</xsl:when>
                    <xsl:when test="$lccn = 'sh85024450'">gui</xsl:when>
                    <xsl:when test="$lccn = 'sh92004587'">nhd</xsl:when>
                    <xsl:when test="$lccn = 'sh2002005964'">gom</xsl:when>
                    <xsl:when test="$lccn = 'sh85024493'">ctm</xsl:when>
                    <xsl:when test="$lccn = 'sh85024599'">coz</xsl:when>
                    <xsl:when test="$lccn = 'sh85024613'">cho</xsl:when>
                    <xsl:when test="$lccn = 'sh85024635'">cjk</xsl:when>
                    <xsl:when test="$lccn = 'sh2001009622'">cht</xsl:when>
                    <xsl:when test="$lccn = 'sh85025499'">cuj</xsl:when>
                    <xsl:when test="$lccn = 'sh85024693'">cce</xsl:when>
                    <xsl:when test="$lccn = 'sh85024760'">crt</xsl:when>
                    <xsl:when test="$lccn = 'sh85024767'">caa</xsl:when>
                    <xsl:when test="$lccn = 'sh85025002'">crw</xsl:when>
                    <xsl:when test="$lccn = 'sh85025464'">cjv</xsl:when>
                    <xsl:when test="$lccn = 'sh93002784'">ems</xsl:when>
                    <xsl:when test="$lccn = 'sh85025481'">ckt</xsl:when>
                    <xsl:when test="$lccn = 'sh85025485'">cag</xsl:when>
                    <xsl:when test="$lccn = 'sh85025491'">chs</xsl:when>
                    <xsl:when test="$lccn = 'sh85025754'">chu</xsl:when>
                    <xsl:when test="$lccn = 'sh85025887'">der</xsl:when>
                    <xsl:when test="$lccn = 'sh85025890'">chv</xsl:when>
                    <xsl:when test="$lccn = 'sh93006227'">cia</xsl:when>
                    <xsl:when test="$lccn = 'sh85025944'">swh</xsl:when>
                    <xsl:when test="$lccn = 'sh2002001717'">cim</xsl:when>
                    <xsl:when test="$lccn = 'sh93006228'">sun</xsl:when>
                    <xsl:when test="$lccn = 'sh85026542'">clm</xsl:when>
                    <xsl:when test="$lccn = 'sh85027306'">xcw</xsl:when>
                    <xsl:when test="$lccn = 'sh85027563'">cod</xsl:when>
                    <xsl:when test="$lccn = 'sh85027634'">coc</xsl:when>
                    <xsl:when test="$lccn = 'sh85027698'">con</xsl:when>
                    <xsl:when test="$lccn = 'sh85028682'">cof</xsl:when>
                    <xsl:when test="$lccn = 'sh85028776'">oka</xsl:when>
                    <xsl:when test="$lccn = 'sh85028786'">com</xsl:when>
                    <xsl:when test="$lccn = 'sh90002073'">swb</xsl:when>
                    <xsl:when test="$lccn = 'sh85032249'">csz</xsl:when>
                    <xsl:when test="$lccn = 'sh85032419'">cop</xsl:when>
                    <xsl:when test="$lccn = 'sh97003091'">coq</xsl:when>
                    <xsl:when test="$lccn = 'sh85032507'">crn</xsl:when>
                    <xsl:when test="$lccn = 'sh85033031'">coe</xsl:when>
                    <xsl:when test="$lccn = 'sh85032849'">cor</xsl:when>
                    <xsl:when test="$lccn = 'sh2001006288'">csr</xsl:when>
                    <xsl:when test="$lccn = 'sh88007671'">mta</xsl:when>
                    <xsl:when test="$lccn = 'sh85033883'">cre</xsl:when>
                    <xsl:when test="$lccn = 'sh85033895'">mus</xsl:when>
                    <xsl:when test="$lccn = 'sh85034019'">crh</xsl:when>
                    <xsl:when test="$lccn = 'sh88000624'">pov</xsl:when>
                    <xsl:when test="$lccn = 'sh00003107'">hrv</xsl:when>
                    <xsl:when test="$lccn = 'sh91003822'">cro</xsl:when>
                    <xsl:when test="$lccn = 'sh85034540'">cua</xsl:when>
                    <xsl:when test="$lccn = 'sh85034541'">kwi</xsl:when>
                    <xsl:when test="$lccn = 'sh85034651'">cub</xsl:when>
                    <xsl:when test="$lccn = 'sh85034657'">acc</xsl:when>
                    <xsl:when test="$lccn = 'sh88005740'">cuk</xsl:when>
                    <xsl:when test="$lccn = 'sh85034694'">cui</xsl:when>
                    <xsl:when test="$lccn = 'sh85034708'">cul</xsl:when>
                    <xsl:when test="$lccn = 'sh85034799'">cuk</xsl:when>
                    <xsl:when test="$lccn = 'sh85034824'">cup</xsl:when>
                    <xsl:when test="$lccn = 'sh93009002'">kpc</xsl:when>
                    <xsl:when test="$lccn = 'sh85035020'">cyo</xsl:when>
                    <xsl:when test="$lccn = 'sh85035271'">ces</xsl:when>
                    <xsl:when test="$lccn = 'sh91002765'">kzf</xsl:when>
                    <xsl:when test="$lccn = 'sh85035340'">dbq</xsl:when>
                    <xsl:when test="$lccn = 'sh85035342'">dav</xsl:when>
                    <xsl:when test="$lccn = 'sh85035355'">xdc</xsl:when>
                    <xsl:when test="$lccn = 'sh85035387'">dap</xsl:when>
                    <xsl:when test="$lccn = 'sh85035389'">dgz</xsl:when>
                    <xsl:when test="$lccn = 'sh85035406'">dag</xsl:when>
                    <xsl:when test="$lccn = 'sh85035409'">dta</xsl:when>
                    <xsl:when test="$lccn = 'sh85035410'">dal</xsl:when>
                    <xsl:when test="$lccn = 'sh87003846'">btd</xsl:when>
                    <xsl:when test="$lccn = 'sh85035479'">dcc</xsl:when>
                    <xsl:when test="$lccn = 'sh85035500'">dak</xsl:when>
                    <xsl:when test="$lccn = 'sh85035532'">dlm</xsl:when>
                    <xsl:when test="$lccn = 'sh85080105'">mbp</xsl:when>
                    <xsl:when test="$lccn = 'sh92002105'">dms</xsl:when>
                    <xsl:when test="$lccn = 'sh85035619'">daf</xsl:when>
                    <xsl:when test="$lccn = 'sh85035707'">daa</xsl:when>
                    <xsl:when test="$lccn = 'sh85035731'">dan</xsl:when>
                    <xsl:when test="$lccn = 'sh85035755'">sip</xsl:when>
                    <xsl:when test="$lccn = 'sh87003423'">dhw</xsl:when>
                    <xsl:when test="$lccn = 'sh85035784'">dry</xsl:when>
                    <xsl:when test="$lccn = 'sh85035792'">dhr</xsl:when>
                    <xsl:when test="$lccn = 'sh85035793'">dar</xsl:when>
                    <xsl:when test="$lccn = 'sh85035797'">prs</xsl:when>
                    <xsl:when test="$lccn = 'sh85035800'">mps</xsl:when>
                    <xsl:when test="$lccn = 'sh93006303'">dww</xsl:when>
                    <xsl:when test="$lccn = 'sh85035965'">dai</xsl:when>
                    <xsl:when test="$lccn = 'sh85040270'">knx</xsl:when>
                    <xsl:when test="$lccn = 'sh85035985'">dzd</xsl:when>
                    <xsl:when test="$lccn = 'sh92004855'">ded</xsl:when>
                    <xsl:when test="$lccn = 'sh85036471'">deg</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003586'">vas</xsl:when>
                    <xsl:when test="$lccn = 'sh85036489'">dhv</xsl:when>
                    <xsl:when test="$lccn = 'sh85036550'">del</xsl:when>
                    <xsl:when test="$lccn = 'sh87001050'">zlm</xsl:when>
                    <xsl:when test="$lccn = 'sh85132244'">tfn</xsl:when>
                    <xsl:when test="$lccn = 'sh85036693'">ddn</xsl:when>
                    <xsl:when test="$lccn = 'sh92006538'">dez</xsl:when>
                    <xsl:when test="$lccn = 'sh85037117'">des</xsl:when>
                    <xsl:when test="$lccn = 'sh85037254'">bgc</xsl:when>
                    <xsl:when test="$lccn = 'sh93009160'">dhl</xsl:when>
                    <xsl:when test="$lccn = 'sh85037433'">tbh</xsl:when>
                    <xsl:when test="$lccn = 'sh85037445'">dhi</xsl:when>
                    <xsl:when test="$lccn = 'sh2002007147'">dho</xsl:when>
                    <xsl:when test="$lccn = 'sh85037452'">dhu</xsl:when>
                    <xsl:when test="$lccn = 'sh85037644'">mbd</xsl:when>
                    <xsl:when test="$lccn = 'sh85037757'">ddo</xsl:when>
                    <xsl:when test="$lccn = 'sh85037778'">coj</xsl:when>
                    <xsl:when test="$lccn = 'sh85132467'">mhu</xsl:when>
                    <xsl:when test="$lccn = 'sh85037994'">dig</xsl:when>
                    <xsl:when test="$lccn = 'sh85038029'">dis</xsl:when>
                    <xsl:when test="$lccn = 'sh2001005737'">diz</xsl:when>
                    <xsl:when test="$lccn = 'sh85038063'">mwr</xsl:when>
                    <xsl:when test="$lccn = 'sh85038075'">din</xsl:when>
                    <xsl:when test="$lccn = 'sh98003592'">csk</xsl:when>
                    <xsl:when test="$lccn = 'sh85038111'">dyu</xsl:when>
                    <xsl:when test="$lccn = 'sh85038277'">diu</xsl:when>
                    <xsl:when test="$lccn = 'sh87003431'">div</xsl:when>
                    <xsl:when test="$lccn = 'sh85038660'">dif</xsl:when>
                    <xsl:when test="$lccn = 'sh00010107'">mdx</xsl:when>
                    <xsl:when test="$lccn = 'sh2003000221'">duj</xsl:when>
                    <xsl:when test="$lccn = 'sh85038661'">ddj</xsl:when>
                    <xsl:when test="$lccn = 'sh87007053'">dyi</xsl:when>
                    <xsl:when test="$lccn = 'sh85038665'">dji</xsl:when>
                    <xsl:when test="$lccn = 'sh85038666'">jig</xsl:when>
                    <xsl:when test="$lccn = 'sh85038667'">dbl</xsl:when>
                    <xsl:when test="$lccn = 'sh85038668'">djk</xsl:when>
                    <xsl:when test="$lccn = 'sh93006295'">kvo</xsl:when>
                    <xsl:when test="$lccn = 'sh85038696'">dob</xsl:when>
                    <xsl:when test="$lccn = 'sh85038790'">dgo</xsl:when>
                    <xsl:when test="$lccn = 'sh99013338'">dgr</xsl:when>
                    <xsl:when test="$lccn = 'sh88006669'">ngc</xsl:when>
                    <xsl:when test="$lccn = 'sh95002951'">new</xsl:when>
                    <xsl:when test="$lccn = 'sh86000177'">dlg</xsl:when>
                    <xsl:when test="$lccn = 'sh85039943'">dmk</xsl:when>
                    <xsl:when test="$lccn = 'sh85039010'">dop</xsl:when>
                    <xsl:when test="$lccn = 'sh85071989'">kzh</xsl:when>
                    <xsl:when test="$lccn = 'sh85138597'">sce</xsl:when>
                    <xsl:when test="$lccn = 'sh87005171'">grc</xsl:when>
                    <xsl:when test="$lccn = 'sh95004839'">dow</xsl:when>
                    <xsl:when test="$lccn = 'sh85039845'">dua</xsl:when>
                    <xsl:when test="$lccn = 'sh97001588'">dud</xsl:when>
                    <xsl:when test="$lccn = 'sh85039941'">dgc</xsl:when>
                    <xsl:when test="$lccn = 'sh85039942'">due</xsl:when>
                    <xsl:when test="$lccn = 'sh85039947'">duf</xsl:when>
                    <xsl:when test="$lccn = 'sh93004402'">dus</xsl:when>
                    <xsl:when test="$lccn = 'sh87007198'">duc</xsl:when>
                    <xsl:when test="$lccn = 'sh85039977'">dng</xsl:when>
                    <xsl:when test="$lccn = 'sh2001009653'">duo</xsl:when>
                    <xsl:when test="$lccn = 'sh92002033'">dug</xsl:when>
                    <xsl:when test="$lccn = 'sh87000375'">dun</xsl:when>
                    <xsl:when test="$lccn = 'sh85040106'">nld</xsl:when>
                    <xsl:when test="$lccn = 'sh2002006078'">dse</xsl:when>
                    <xsl:when test="$lccn = 'sh2004009507'">wkw</xsl:when>
                    <xsl:when test="$lccn = 'sh85040273'">dya</xsl:when>
                    <xsl:when test="$lccn = 'sh85040355'">dyu</xsl:when>
                    <xsl:when test="$lccn = 'sh85040360'">dzo</xsl:when>
                    <xsl:when test="$lccn = 'sh85007289'">hye</xsl:when>
                    <xsl:when test="$lccn = 'sh85040572'">mky</xsl:when>
                    <xsl:when test="$lccn = 'sh85139267'">wls</xsl:when>
                    <xsl:when test="$lccn = 'sh96007786'">aer</xsl:when>
                    <xsl:when test="$lccn = 'sh88005176'">bkb</xsl:when>
                    <xsl:when test="$lccn = 'sh85086357'">mng</xsl:when>
                    <xsl:when test="$lccn = 'sh85104767'">peb</xsl:when>
                    <xsl:when test="$lccn = 'sh85040628'">yuy</xsl:when>
                    <xsl:when test="$lccn = 'sh85064198'">igb</xsl:when>
                    <xsl:when test="$lccn = 'sh85040653'">xeb</xsl:when>
                    <xsl:when test="$lccn = 'sh2002005878'">etr</xsl:when>
                    <xsl:when test="$lccn = 'sh99004228'">dbf</xsl:when>
                    <xsl:when test="$lccn = 'sh85041203'">efi</xsl:when>
                    <xsl:when test="$lccn = 'sh2002007687'">ego</xsl:when>
                    <xsl:when test="$lccn = 'sh85041339'">egy</xsl:when>
                    <xsl:when test="$lccn = 'sh85041420'">eip</xsl:when>
                    <xsl:when test="$lccn = 'sh85041429'">etu</xsl:when>
                    <xsl:when test="$lccn = 'sh85041438'">eka</xsl:when>
                    <xsl:when test="$lccn = 'sh92006497'">lol</xsl:when>
                    <xsl:when test="$lccn = 'sh85041445'">ekp</xsl:when>
                    <xsl:when test="$lccn = 'sh85041489'">elx</xsl:when>
                    <xsl:when test="$lccn = 'sh93002706'">emb</xsl:when>
                    <xsl:when test="$lccn = 'sh85042731'">ebu</xsl:when>
                    <xsl:when test="$lccn = 'sh89003263'">eme</xsl:when>
                    <xsl:when test="$lccn = 'sh85043161'">enq</xsl:when>
                    <xsl:when test="$lccn = 'sh85043173'">enn</xsl:when>
                    <xsl:when test="$lccn = 'sh85043175'">eno</xsl:when>
                    <xsl:when test="$lccn = 'sh85043413'">eng</xsl:when>
                    <xsl:when test="$lccn = 'sh90002090'">pse</xsl:when>
                    <xsl:when test="$lccn = 'sh85044220'">gey</xsl:when>
                    <xsl:when test="$lccn = 'sh85125617'">sja</xsl:when>
                    <xsl:when test="$lccn = 'sh85044665'">erg</xsl:when>
                    <xsl:when test="$lccn = 'sh85044810'">ese</xsl:when>
                    <xsl:when test="$lccn = 'sh85044918'">esq</xsl:when>
                    <xsl:when test="$lccn = 'sh85044985'">est</xsl:when>
                    <xsl:when test="$lccn = 'sh98003615'">csk</xsl:when>
                    <xsl:when test="$lccn = 'sh85045068'">ecr</xsl:when>
                    <xsl:when test="$lccn = 'sh85045159'">gez</xsl:when>
                    <xsl:when test="$lccn = 'sh85045468'">ett</xsl:when>
                    <xsl:when test="$lccn = 'sh85045473'">ets</xsl:when>
                    <xsl:when test="$lccn = 'sh85045527'">opt</xsl:when>
                    <xsl:when test="$lccn = 'sh85045963'">eve</xsl:when>
                    <xsl:when test="$lccn = 'sh85045974'">evn</xsl:when>
                    <xsl:when test="$lccn = 'sh85046045'">ewe</xsl:when>
                    <xsl:when test="$lccn = 'sh85046052'">ewo</xsl:when>
                    <xsl:when test="$lccn = 'sh85046639'">eya</xsl:when>
                    <xsl:when test="$lccn = 'sh85046718'">izi</xsl:when>
                    <xsl:when test="$lccn = 'sh85046938'">fai</xsl:when>
                    <xsl:when test="$lccn = 'sh92006130'">cfm</xsl:when>
                    <xsl:when test="$lccn = 'sh85046961'">fli</xsl:when>
                    <xsl:when test="$lccn = 'sh85046963'">xfa</xsl:when>
                    <xsl:when test="$lccn = 'sh88005536'">fap</xsl:when>
                    <xsl:when test="$lccn = 'sh85047098'">fan</xsl:when>
                    <xsl:when test="$lccn = 'sh85047169'">fat</xsl:when>
                    <xsl:when test="$lccn = 'sh85047334'">fao</xsl:when>
                    <xsl:when test="$lccn = 'sh85047429'">faa</xsl:when>
                    <xsl:when test="$lccn = 'sh94006579'">ddg</xsl:when>
                    <xsl:when test="$lccn = 'sh85047678'">fmp</xsl:when>
                    <xsl:when test="$lccn = 'sh88007021'">hif</xsl:when>
                    <xsl:when test="$lccn = 'sh85048183'">fij</xsl:when>
                    <xsl:when test="$lccn = 'sh90002823'">fil</xsl:when>
                    <xsl:when test="$lccn = 'sh85048412'">fin</xsl:when>
                    <xsl:when test="$lccn = 'sh85049251'">nlg</xsl:when>
                    <xsl:when test="$lccn = 'sh2002005507'">foi</xsl:when>
                    <xsl:when test="$lccn = 'sh92001499'">ppo</xsl:when>
                    <xsl:when test="$lccn = 'sh85050171'">fon</xsl:when>
                    <xsl:when test="$lccn = 'sh91004273'">frd</xsl:when>
                    <xsl:when test="$lccn = 'sh85050483'">for</xsl:when>
                    <xsl:when test="$lccn = 'sh89006430'">yrk</xsl:when>
                    <xsl:when test="$lccn = 'sh85051121'">sac</xsl:when>
                    <xsl:when test="$lccn = 'sh85051829'">fra</xsl:when>
                    <xsl:when test="$lccn = 'sh85052039'">fur</xsl:when>
                    <xsl:when test="$lccn = 'sh91005015'">flr</xsl:when>
                    <xsl:when test="$lccn = 'sh85052296'">fun</xsl:when>
                    <xsl:when test="$lccn = 'sh85052493'">fvr</xsl:when>
                    <xsl:when test="$lccn = 'sh2002004936'">fuu</xsl:when>
                    <xsl:when test="$lccn = 'sh85052606'">fud</xsl:when>
                    <xsl:when test="$lccn = 'sh85052605'">fut</xsl:when>
                    <xsl:when test="$lccn = 'sh85052622'">fuy</xsl:when>
                    <xsl:when test="$lccn = 'sh99001048'">pym</xsl:when>
                    <xsl:when test="$lccn = 'sh85052633'">gnk</xsl:when>
                    <xsl:when test="$lccn = 'sh85052641'">gwj</xsl:when>
                    <xsl:when test="$lccn = 'sh85052643'">gaa</xsl:when>
                    <xsl:when test="$lccn = 'sh87007199'">gab</xsl:when>
                    <xsl:when test="$lccn = 'sh87000035'">gau</xsl:when>
                    <xsl:when test="$lccn = 'sh93006063'">gbj</xsl:when>
                    <xsl:when test="$lccn = 'sh85052677'">gad</xsl:when>
                    <xsl:when test="$lccn = 'sh96004862'">ged</xsl:when>
                    <xsl:when test="$lccn = 'sh89003502'">gbk</xsl:when>
                    <xsl:when test="$lccn = 'sh85052696'">gaj</xsl:when>
                    <xsl:when test="$lccn = 'sh85052711'">gft</xsl:when>
                    <xsl:when test="$lccn = 'sh2002001680'">gbu</xsl:when>
                    <xsl:when test="$lccn = 'sh85052718'">gag</xsl:when>
                    <xsl:when test="$lccn = 'sh85052728'">ggu</xsl:when>
                    <xsl:when test="$lccn = 'sh85052732'">gah</xsl:when>
                    <xsl:when test="$lccn = 'sh85052774'">gbi</xsl:when>
                    <xsl:when test="$lccn = 'sh85052814'">glg</xsl:when>
                    <xsl:when test="$lccn = 'sh85052862'">adl</xsl:when>
                    <xsl:when test="$lccn = 'sh96002574'">gal</xsl:when>
                    <xsl:when test="$lccn = 'sh85052896'">sba</xsl:when>
                    <xsl:when test="$lccn = 'sh00008639'">gbl</xsl:when>
                    <xsl:when test="$lccn = 'sh98003283'">gmo</xsl:when>
                    <xsl:when test="$lccn = 'sh2004003271'">nso</xsl:when>
                    <xsl:when test="$lccn = 'sh85053008'">lug</xsl:when>
                    <xsl:when test="$lccn = 'sh85053028'">gnb</xsl:when>
                    <xsl:when test="$lccn = 'sh85053029'">nba</xsl:when>
                    <xsl:when test="$lccn = 'sh93001589'">pwg</xsl:when>
                    <xsl:when test="$lccn = 'sh85053057'">gbc</xsl:when>
                    <xsl:when test="$lccn = 'sh85053163'">gbm</xsl:when>
                    <xsl:when test="$lccn = 'sh85053189'">grt</xsl:when>
                    <xsl:when test="$lccn = 'sh85053374'">oci</xsl:when>
                    <xsl:when test="$lccn = 'sh90004112'">gaq</xsl:when>
                    <xsl:when test="$lccn = 'sh85053576'">ubu</xsl:when>
                    <xsl:when test="$lccn = 'sh95002634'">gyd</xsl:when>
                    <xsl:when test="$lccn = 'sh85053584'">gay</xsl:when>
                    <xsl:when test="$lccn = 'sh85053600'">gbr</xsl:when>
                    <xsl:when test="$lccn = 'sh85053602'">bza</xsl:when>
                    <xsl:when test="$lccn = 'sh85058041'">gby</xsl:when>
                    <xsl:when test="$lccn = 'sh85053604'">gba</xsl:when>
                    <xsl:when test="$lccn = 'sh85053651'">gdd</xsl:when>
                    <xsl:when test="$lccn = 'sh90004284'">drs</xsl:when>
                    <xsl:when test="$lccn = 'sh85085465'">gej</xsl:when>
                    <xsl:when test="$lccn = 'sh85054242'">kat</xsl:when>
                    <xsl:when test="$lccn = 'sh85054365'">deu</xsl:when>
                    <xsl:when test="$lccn = 'sh85054873'">bdy</xsl:when>
                    <xsl:when test="$lccn = 'sh85054927'">glk</xsl:when>
                    <xsl:when test="$lccn = 'sh85054929'">gil</xsl:when>
                    <xsl:when test="$lccn = 'sh85054964'">niv</xsl:when>
                    <xsl:when test="$lccn = 'sh85054967'">gim</xsl:when>
                    <xsl:when test="$lccn = 'sh85054990'">gin</xsl:when>
                    <xsl:when test="$lccn = 'sh85055030'">nyf</xsl:when>
                    <xsl:when test="$lccn = 'sh85055037'">myx</xsl:when>
                    <xsl:when test="$lccn = 'sh85055238'">glw</xsl:when>
                    <xsl:when test="$lccn = 'sh87003439'">gls</xsl:when>
                    <xsl:when test="$lccn = 'sh85055482'">guc</xsl:when>
                    <xsl:when test="$lccn = 'sh85055605'">gdo</xsl:when>
                    <xsl:when test="$lccn = 'sh85055658'">god</xsl:when>
                    <xsl:when test="$lccn = 'sh85055672'">gog</xsl:when>
                    <xsl:when test="$lccn = 'sh85055674'">ggw</xsl:when>
                    <xsl:when test="$lccn = 'sh2001003388'">gkn</xsl:when>
                    <xsl:when test="$lccn = 'sh85055690'">gol</xsl:when>
                    <xsl:when test="$lccn = 'sh85055822'">gvf</xsl:when>
                    <xsl:when test="$lccn = 'sh85055826'">bbp</xsl:when>
                    <xsl:when test="$lccn = 'sh85055843'">gon</xsl:when>
                    <xsl:when test="$lccn = 'sh85055858'">gjn</xsl:when>
                    <xsl:when test="$lccn = 'sh93006491'">kiw</xsl:when>
                    <xsl:when test="$lccn = 'sh00004044'">hac</xsl:when>
                    <xsl:when test="$lccn = 'sh85055968'">gor</xsl:when>
                    <xsl:when test="$lccn = 'sh85055993'">got</xsl:when>
                    <xsl:when test="$lccn = 'sh85057030'">grb</xsl:when>
                    <xsl:when test="$lccn = 'sh85057151'">grc</xsl:when>
                    <xsl:when test="$lccn = 'sh86005147'">uum</xsl:when>
                    <xsl:when test="$lccn = 'sh85057578'">guh</xsl:when>
                    <xsl:when test="$lccn = 'sh85057586'">gvc</xsl:when>
                    <xsl:when test="$lccn = 'sh85057587'">gnc</xsl:when>
                    <xsl:when test="$lccn = 'sh85057601'">grn</xsl:when>
                    <xsl:when test="$lccn = 'sh85057611'">gyr</xsl:when>
                    <xsl:when test="$lccn = 'sh94003719'">var</xsl:when>
                    <xsl:when test="$lccn = 'sh94000886'">gut</xsl:when>
                    <xsl:when test="$lccn = 'sh85057664'">guo</xsl:when>
                    <xsl:when test="$lccn = 'sh87001877'">guq</xsl:when>
                    <xsl:when test="$lccn = 'sh85057676'">gym</xsl:when>
                    <xsl:when test="$lccn = 'sh85057683'">gde</xsl:when>
                    <xsl:when test="$lccn = 'sh85057705'">ktd</xsl:when>
                    <xsl:when test="$lccn = 'sh96004352'">kky</xsl:when>
                    <xsl:when test="$lccn = 'sh85057708'">ghs</xsl:when>
                    <xsl:when test="$lccn = 'sh85057858'">guj</xsl:when>
                    <xsl:when test="$lccn = 'sh85057876'">gju</xsl:when>
                    <xsl:when test="$lccn = 'sh94000048'">gvs</xsl:when>
                    <xsl:when test="$lccn = 'sh85057905'">gnn</xsl:when>
                    <xsl:when test="$lccn = 'sh85057929'">gyf</xsl:when>
                    <xsl:when test="$lccn = 'sh99013591'">guw</xsl:when>
                    <xsl:when test="$lccn = 'sh89004879'">gni</xsl:when>
                    <xsl:when test="$lccn = 'sh85057950'">yas</xsl:when>
                    <xsl:when test="$lccn = 'sh85057953'">gup</xsl:when>
                    <xsl:when test="$lccn = 'sh85057954'">guf</xsl:when>
                    <xsl:when test="$lccn = 'sh97005347'">gnr</xsl:when>
                    <xsl:when test="$lccn = 'sh85057963'">kat</xsl:when>
                    <xsl:when test="$lccn = 'sh85057970'">gux</xsl:when>
                    <xsl:when test="$lccn = 'sh85057987'">guz</xsl:when>
                    <xsl:when test="$lccn = 'sh85058034'">lnu</xsl:when>
                    <xsl:when test="$lccn = 'sh85058037'">gwx</xsl:when>
                    <xsl:when test="$lccn = 'sh85058039'">gwn</xsl:when>
                    <xsl:when test="$lccn = 'sh93006309'">gdn</xsl:when>
                    <xsl:when test="$lccn = 'sh96003287'">gwi</xsl:when>
                    <xsl:when test="$lccn = 'sh85058046'">jya</xsl:when>
                    <xsl:when test="$lccn = 'sh00008826'">haq</xsl:when>
                    <xsl:when test="$lccn = 'sh85058281'">hai</xsl:when>
                    <xsl:when test="$lccn = 'sh87003583'">has</xsl:when>
                    <xsl:when test="$lccn = 'sh85073983'">cnh</xsl:when>
                    <xsl:when test="$lccn = 'sh85058389'">lad</xsl:when>
                    <xsl:when test="$lccn = 'sh85058406'">hlb</xsl:when>
                    <xsl:when test="$lccn = 'sh85058434'">hla</xsl:when>
                    <xsl:when test="$lccn = 'sh87007472'">gaw</xsl:when>
                    <xsl:when test="$lccn = 'sh93006548'">dad</xsl:when>
                    <xsl:when test="$lccn = 'sh85058740'">hag</xsl:when>
                    <xsl:when test="$lccn = 'sh85058739'">luy</xsl:when>
                    <xsl:when test="$lccn = 'sh87007005'">hni</xsl:when>
                    <xsl:when test="$lccn = 'sh85058781'">hnn</xsl:when>
                    <xsl:when test="$lccn = 'sh85058822'">har</xsl:when>
                    <xsl:when test="$lccn = 'sh85058824'">hoj</xsl:when>
                    <xsl:when test="$lccn = 'sh85058983'">hro</xsl:when>
                    <xsl:when test="$lccn = 'sh85059109'">hss</xsl:when>
                    <xsl:when test="$lccn = 'sh99014661'">had</xsl:when>
                    <xsl:when test="$lccn = 'sh85059289'">xht</xsl:when>
                    <xsl:when test="$lccn = 'sh85059313'">hau</xsl:when>
                    <xsl:when test="$lccn = 'sh85059330'">yuf</xsl:when>
                    <xsl:when test="$lccn = 'sh85059372'">haw</xsl:when>
                    <xsl:when test="$lccn = 'sh85149778'">hay</xsl:when>
                    <xsl:when test="$lccn = 'sh85059433'">vay</xsl:when>
                    <xsl:when test="$lccn = 'sh85059437'">haz</xsl:when>
                    <xsl:when test="$lccn = 'sh85059465'">kup</xsl:when>
                    <xsl:when test="$lccn = 'sh2001005233'">xed</xsl:when>
                    <xsl:when test="$lccn = 'sh93002522'">heh</xsl:when>
                    <xsl:when test="$lccn = 'sh85059952'">hei</xsl:when>
                    <xsl:when test="$lccn = 'sh85060372'">her</xsl:when>
                    <xsl:when test="$lccn = 'sh85060627'">hid</xsl:when>
                    <xsl:when test="$lccn = 'sh91000920'">mba</xsl:when>
                    <xsl:when test="$lccn = 'sh85060811'">hil</xsl:when>
                    <xsl:when test="$lccn = 'sh85060847'">him</xsl:when>
                    <xsl:when test="$lccn = 'sh87007978'">dhm</xsl:when>
                    <xsl:when test="$lccn = 'sh85060875'">hin</xsl:when>
                    <xsl:when test="$lccn = 'sh85061012'">hmo</xsl:when>
                    <xsl:when test="$lccn = 'sh85061263'">mik</xsl:when>
                    <xsl:when test="$lccn = 'sh85061276'">hit</xsl:when>
                    <xsl:when test="$lccn = 'sh85061286'">hix</xsl:when>
                    <xsl:when test="$lccn = 'sh85061296'">hmr</xsl:when>
                    <xsl:when test="$lccn = 'sh85061299'">hmn</xsl:when>
                    <xsl:when test="$lccn = 'sh90004954'">hnj</xsl:when>
                    <xsl:when test="$lccn = 'sh85061304'">hoc</xsl:when>
                    <xsl:when test="$lccn = 'sh85061535'">hoo</xsl:when>
                    <xsl:when test="$lccn = 'sh85061940'">hop</xsl:when>
                    <xsl:when test="$lccn = 'sh93006310'">hre</xsl:when>
                    <xsl:when test="$lccn = 'sh85062719'">ygr</xsl:when>
                    <xsl:when test="$lccn = 'sh92005264'">hmd</xsl:when>
                    <xsl:when test="$lccn = 'sh92005134'">lis</xsl:when>
                    <xsl:when test="$lccn = 'sh85062727'">yuf</xsl:when>
                    <xsl:when test="$lccn = 'sh85062731'">hub</xsl:when>
                    <xsl:when test="$lccn = 'sh85062733'">qvw</xsl:when>
                    <xsl:when test="$lccn = 'sh85062741'">auc</xsl:when>
                    <xsl:when test="$lccn = 'sh85062818'">hch</xsl:when>
                    <xsl:when test="$lccn = 'sh85062823'">hul</xsl:when>
                    <xsl:when test="$lccn = 'sh85062828'">hui</xsl:when>
                    <xsl:when test="$lccn = 'sh97005093'">hke</xsl:when>
                    <xsl:when test="$lccn = 'sh85062991'">hum</xsl:when>
                    <xsl:when test="$lccn = 'sh85062997'">hun</xsl:when>
                    <xsl:when test="$lccn = 'sh96004239'">huz</xsl:when>
                    <xsl:when test="$lccn = 'sh85063162'">hup</xsl:when>
                    <xsl:when test="$lccn = 'sh85063189'">xhu</xsl:when>
                    <xsl:when test="$lccn = 'sh85063876'">iai</xsl:when>
                    <xsl:when test="$lccn = 'sh85063883'">yml</xsl:when>
                    <xsl:when test="$lccn = 'sh85063892'">ian</xsl:when>
                    <xsl:when test="$lccn = 'sh85089475'">ibl</xsl:when>
                    <xsl:when test="$lccn = 'sh85063901'">iba</xsl:when>
                    <xsl:when test="$lccn = 'sh85063904'">ibg</xsl:when>
                    <xsl:when test="$lccn = 'sh87007979'">iby</xsl:when>
                    <xsl:when test="$lccn = 'sh85063908'">xib</xsl:when>
                    <xsl:when test="$lccn = 'sh86007446'">ibb</xsl:when>
                    <xsl:when test="$lccn = 'sh85063961'">arh</xsl:when>
                    <xsl:when test="$lccn = 'sh85064029'">isl</xsl:when>
                    <xsl:when test="$lccn = 'sh94005161'">idd</xsl:when>
                    <xsl:when test="$lccn = 'sh95003806'">idt</xsl:when>
                    <xsl:when test="$lccn = 'sh85064179'">idu</xsl:when>
                    <xsl:when test="$lccn = 'sh85064185'">clk</xsl:when>
                    <xsl:when test="$lccn = 'sh85064186'">viv</xsl:when>
                    <xsl:when test="$lccn = 'sh00002639'">igl</xsl:when>
                    <xsl:when test="$lccn = 'sh85064203'">ibo</xsl:when>
                    <xsl:when test="$lccn = 'sh85064205'">ige</xsl:when>
                    <xsl:when test="$lccn = 'sh93008535'">ihp</xsl:when>
                    <xsl:when test="$lccn = 'sh85149071'">yor</xsl:when>
                    <xsl:when test="$lccn = 'sh85064231'">ijc</xsl:when>
                    <xsl:when test="$lccn = 'sh00001800'">ikx</xsl:when>
                    <xsl:when test="$lccn = 'sh87006119'">ikw</xsl:when>
                    <xsl:when test="$lccn = 'sh85064248'">izi</xsl:when>
                    <xsl:when test="$lccn = 'sh85064250'">ilb</xsl:when>
                    <xsl:when test="$lccn = 'sh88007672'">mbi</xsl:when>
                    <xsl:when test="$lccn = 'sh85064320'">mia</xsl:when>
                    <xsl:when test="$lccn = 'sh85064428'">ilo</xsl:when>
                    <xsl:when test="$lccn = 'sh85064432'">ilk</xsl:when>
                    <xsl:when test="$lccn = 'sh92005116'">imo</xsl:when>
                    <xsl:when test="$lccn = 'sh87001878'">kat</xsl:when>
                    <xsl:when test="$lccn = 'sh96010755'">inp</xsl:when>
                    <xsl:when test="$lccn = 'sh89004858'">smn</xsl:when>
                    <xsl:when test="$lccn = 'sh85065767'">ind</xsl:when>
                    <xsl:when test="$lccn = 'sh97004126'">inl</xsl:when>
                    <xsl:when test="$lccn = 'sh85066338'">ing</xsl:when>
                    <xsl:when test="$lccn = 'sh85066340'">inj</xsl:when>
                    <xsl:when test="$lccn = 'sh85066342'">tbi</xsl:when>
                    <xsl:when test="$lccn = 'sh97004970'">kat</xsl:when>
                    <xsl:when test="$lccn = 'sh85066360'">izh</xsl:when>
                    <xsl:when test="$lccn = 'sh85066365'">inh</xsl:when>
                    <xsl:when test="$lccn = 'sh97004089'">ino</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003103'">ior</xsl:when>
                    <xsl:when test="$lccn = 'sh85067265'">igs</xsl:when>
                    <xsl:when test="$lccn = 'sh90002806'">iku</xsl:when>
                    <xsl:when test="$lccn = 'sh90002810'">ipk</xsl:when>
                    <xsl:when test="$lccn = 'sh2002012128'">ikt</xsl:when>
                    <xsl:when test="$lccn = 'sh87005172'">grc</xsl:when>
                    <xsl:when test="$lccn = 'sh85067859'">iow</xsl:when>
                    <xsl:when test="$lccn = 'sh93007528'">ipi</xsl:when>
                    <xsl:when test="$lccn = 'sh85067877'">apu</xsl:when>
                    <xsl:when test="$lccn = 'sh88000625'">iqu</xsl:when>
                    <xsl:when test="$lccn = 'sh93006298'">irh</xsl:when>
                    <xsl:when test="$lccn = 'sh85067933'">irn</xsl:when>
                    <xsl:when test="$lccn = 'sh85067959'">irk</xsl:when>
                    <xsl:when test="$lccn = 'sh85068101'">gle</xsl:when>
                    <xsl:when test="$lccn = 'sh85068317'">iru</xsl:when>
                    <xsl:when test="$lccn = 'sh93006312'">iou</xsl:when>
                    <xsl:when test="$lccn = 'sh85068371'">sgl</xsl:when>
                    <xsl:when test="$lccn = 'sh85068375'">inn</xsl:when>
                    <xsl:when test="$lccn = 'sh85068492'">crb</xsl:when>
                    <xsl:when test="$lccn = 'sh85068623'">tix</xsl:when>
                    <xsl:when test="$lccn = 'sh85068628'">isd</xsl:when>
                    <xsl:when test="$lccn = 'sh85068765'">ruo</xsl:when>
                    <xsl:when test="$lccn = 'sh85068806'">ita</xsl:when>
                    <xsl:when test="$lccn = 'sh97002830'">ise</xsl:when>
                    <xsl:when test="$lccn = 'sh85069053'">itv</xsl:when>
                    <xsl:when test="$lccn = 'sh97008084'">ivb</xsl:when>
                    <xsl:when test="$lccn = 'sh85069066'">ito</xsl:when>
                    <xsl:when test="$lccn = 'sh97003999'">its</xsl:when>
                    <xsl:when test="$lccn = 'sh91001897'">itz</xsl:when>
                    <xsl:when test="$lccn = 'sh85069131'">ibd</xsl:when>
                    <xsl:when test="$lccn = 'sh85069133'">iwm</xsl:when>
                    <xsl:when test="$lccn = 'sh85069137'">ixc</xsl:when>
                    <xsl:when test="$lccn = 'sh85069152'">izi</xsl:when>
                    <xsl:when test="$lccn = 'sh85069172'">grj</xsl:when>
                    <xsl:when test="$lccn = 'sh91002445'">jah</xsl:when>
                    <xsl:when test="$lccn = 'sh85069292'">dhd</xsl:when>
                    <xsl:when test="$lccn = 'sh85069303'">sjm</xsl:when>
                    <xsl:when test="$lccn = 'sh93005100'">min</xsl:when>
                    <xsl:when test="$lccn = 'sh85069336'">yaa</xsl:when>
                    <xsl:when test="$lccn = 'sh85069643'">jpn</xsl:when>
                    <xsl:when test="$lccn = 'sh85069645'">ojp</xsl:when>
                    <xsl:when test="$lccn = 'sh85069751'">jra</xsl:when>
                    <xsl:when test="$lccn = 'sh93002028'">jns</xsl:when>
                    <xsl:when test="$lccn = 'sh85069794'">jav</xsl:when>
                    <xsl:when test="$lccn = 'sh85069859'">jbn</xsl:when>
                    <xsl:when test="$lccn = 'sh85069868'">jeh</xsl:when>
                    <xsl:when test="$lccn = 'sh00006338'">jek</xsl:when>
                    <xsl:when test="$lccn = 'sh92004871'">tow</xsl:when>
                    <xsl:when test="$lccn = 'sh88001332'">kan</xsl:when>
                    <xsl:when test="$lccn = 'sh85070521'">jic</xsl:when>
                    <xsl:when test="$lccn = 'sh85070523'">apj</xsl:when>
                    <xsl:when test="$lccn = 'sh85070544'">yij</xsl:when>
                    <xsl:when test="$lccn = 'sh85070550'">jul</xsl:when>
                    <xsl:when test="$lccn = 'sh85070551'">jit</xsl:when>
                    <xsl:when test="$lccn = 'sh85070689'">mmy</xsl:when>
                    <xsl:when test="$lccn = 'sh93006113'">jun</xsl:when>
                    <xsl:when test="$lccn = 'sh85070889'">jrb</xsl:when>
                    <xsl:when test="$lccn = 'sh85068810'">itk</xsl:when>
                    <xsl:when test="$lccn = 'sh85070892'">jpr</xsl:when>
                    <xsl:when test="$lccn = 'sh87005872'">bhh</xsl:when>
                    <xsl:when test="$lccn = 'sh97007140'">jdt</xsl:when>
                    <xsl:when test="$lccn = 'sh85070987'">jbu</xsl:when>
                    <xsl:when test="$lccn = 'sh85071061'">jup</xsl:when>
                    <xsl:when test="$lccn = 'sh85070816'">juc</xsl:when>
                    <xsl:when test="$lccn = 'sh85071214'">kbd</xsl:when>
                    <xsl:when test="$lccn = 'sh88001883'">kbp</xsl:when>
                    <xsl:when test="$lccn = 'sh85071233'">kab</xsl:when>
                    <xsl:when test="$lccn = 'sh85071238'">kfr</xsl:when>
                    <xsl:when test="$lccn = 'sh85071242'">kac</xsl:when>
                    <xsl:when test="$lccn = 'sh92006053'">kdv</xsl:when>
                    <xsl:when test="$lccn = 'sh85071254'">kbr</xsl:when>
                    <xsl:when test="$lccn = 'sh85071260'">kog</xsl:when>
                    <xsl:when test="$lccn = 'sh85071263'">syw</xsl:when>
                    <xsl:when test="$lccn = 'sh85071265'">cgc</xsl:when>
                    <xsl:when test="$lccn = 'sh91005457'">kdm</xsl:when>
                    <xsl:when test="$lccn = 'sh91000810'">kcg</xsl:when>
                    <xsl:when test="$lccn = 'sh85071272'">kki</xsl:when>
                    <xsl:when test="$lccn = 'sh93002793'">nij</xsl:when>
                    <xsl:when test="$lccn = 'sh85071286'">kzq</xsl:when>
                    <xsl:when test="$lccn = 'sh87000037'">pbz</xsl:when>
                    <xsl:when test="$lccn = 'sh85071294'">kgp</xsl:when>
                    <xsl:when test="$lccn = 'sh96007832'">klq</xsl:when>
                    <xsl:when test="$lccn = 'sh87007985'">kbm</xsl:when>
                    <xsl:when test="$lccn = 'sh85071308'">kaj</xsl:when>
                    <xsl:when test="$lccn = 'sh85071309'">hrv</xsl:when>
                    <xsl:when test="$lccn = 'sh99002917'">tbd</xsl:when>
                    <xsl:when test="$lccn = 'sh92001245'">kkj</xsl:when>
                    <xsl:when test="$lccn = 'sh85071320'">keo</xsl:when>
                    <xsl:when test="$lccn = 'sh85071322'">ijn</xsl:when>
                    <xsl:when test="$lccn = 'sh98004758'">kzz</xsl:when>
                    <xsl:when test="$lccn = 'sh90004794'">kqe</xsl:when>
                    <xsl:when test="$lccn = 'sh87007200'">kmh</xsl:when>
                    <xsl:when test="$lccn = 'sh85071327'">tbk</xsl:when>
                    <xsl:when test="$lccn = 'sh98008149'">kck</xsl:when>
                    <xsl:when test="$lccn = 'sh85071331'">kyl</xsl:when>
                    <xsl:when test="$lccn = 'sh94000377'">kls</xsl:when>
                    <xsl:when test="$lccn = 'sh87005970'">kal</xsl:when>
                    <xsl:when test="$lccn = 'sh85071340'">kln</xsl:when>
                    <xsl:when test="$lccn = 'sh85071351'">fla</xsl:when>
                    <xsl:when test="$lccn = 'sh85071353'">ktg</xsl:when>
                    <xsl:when test="$lccn = 'sh85071365'">xal</xsl:when>
                    <xsl:when test="$lccn = 'sh89004001'">bco</xsl:when>
                    <xsl:when test="$lccn = 'sh2001004523'">kay</xsl:when>
                    <xsl:when test="$lccn = 'sh85071386'">kbq</xsl:when>
                    <xsl:when test="$lccn = 'sh92004872'">kms</xsl:when>
                    <xsl:when test="$lccn = 'sh85071389'">xas</xsl:when>
                    <xsl:when test="$lccn = 'sh85071391'">kam</xsl:when>
                    <xsl:when test="$lccn = 'sh85071393'">xbr</xsl:when>
                    <xsl:when test="$lccn = 'sh85071395'">itl</xsl:when>
                    <xsl:when test="$lccn = 'sh93009161'">kld</xsl:when>
                    <xsl:when test="$lccn = 'sh85071428'">kgq</xsl:when>
                    <xsl:when test="$lccn = 'sh85071435'">kmt</xsl:when>
                    <xsl:when test="$lccn = 'sh98005029'">xla</xsl:when>
                    <xsl:when test="$lccn = 'sh85071437'">hig</xsl:when>
                    <xsl:when test="$lccn = 'sh85071439'">ogo</xsl:when>
                    <xsl:when test="$lccn = 'sh85071445'">kna</xsl:when>
                    <xsl:when test="$lccn = 'sh90004946'">bjj</xsl:when>
                    <xsl:when test="$lccn = 'sh85071449'">kfk</xsl:when>
                    <xsl:when test="$lccn = 'sh92003201'">kbl</xsl:when>
                    <xsl:when test="$lccn = 'sh85071467'">xnr</xsl:when>
                    <xsl:when test="$lccn = 'sh85071472'">kmu</xsl:when>
                    <xsl:when test="$lccn = 'sh85071473'">kjb</xsl:when>
                    <xsl:when test="$lccn = 'sh85071475'">kne</xsl:when>
                    <xsl:when test="$lccn = 'sh85071484'">kan</xsl:when>
                    <xsl:when test="$lccn = 'sh85071533'">kau</xsl:when>
                    <xsl:when test="$lccn = 'sh85071545'">kqn</xsl:when>
                    <xsl:when test="$lccn = 'sh85071552'">hmt</xsl:when>
                    <xsl:when test="$lccn = 'sh85071554'">ekg</xsl:when>
                    <xsl:when test="$lccn = 'sh85071556'">kpg</xsl:when>
                    <xsl:when test="$lccn = 'sh85071561'">kdk</xsl:when>
                    <xsl:when test="$lccn = 'sh85071578'">kah</xsl:when>
                    <xsl:when test="$lccn = 'sh92004865'">leu</xsl:when>
                    <xsl:when test="$lccn = 'sh85071582'">krc</xsl:when>
                    <xsl:when test="$lccn = 'sh85071587'">kdr</xsl:when>
                    <xsl:when test="$lccn = 'sh85071573'">kaa</xsl:when>
                    <xsl:when test="$lccn = 'sh85071598'">kdj</xsl:when>
                    <xsl:when test="$lccn = 'sh87007475'">kzr</xsl:when>
                    <xsl:when test="$lccn = 'sh93004963'">kth</xsl:when>
                    <xsl:when test="$lccn = 'sh94005217'">kyj</xsl:when>
                    <xsl:when test="$lccn = 'sh85071610'">kpt</xsl:when>
                    <xsl:when test="$lccn = 'sh85071623'">kbj</xsl:when>
                    <xsl:when test="$lccn = 'sh85071627'">krl</xsl:when>
                    <xsl:when test="$lccn = 'sh85071639'">kmv</xsl:when>
                    <xsl:when test="$lccn = 'sh85071641'">kzw</xsl:when>
                    <xsl:when test="$lccn = 'sh87007202'">ktn</xsl:when>
                    <xsl:when test="$lccn = 'sh97003239'">kko</xsl:when>
                    <xsl:when test="$lccn = 'sh97006124'">est</xsl:when>
                    <xsl:when test="$lccn = 'sh99001309'">arr</xsl:when>
                    <xsl:when test="$lccn = 'sh85071661'">btx</xsl:when>
                    <xsl:when test="$lccn = 'sh85071665'">kyh</xsl:when>
                    <xsl:when test="$lccn = 'sh85071667'">kbn</xsl:when>
                    <xsl:when test="$lccn = 'sh85071689'">iru</xsl:when>
                    <xsl:when test="$lccn = 'sh85071695'">xsm</xsl:when>
                    <xsl:when test="$lccn = 'sh85071697'">kju</xsl:when>
                    <xsl:when test="$lccn = 'sh85071703'">kas</xsl:when>
                    <xsl:when test="$lccn = 'sh85071708'">csb</xsl:when>
                    <xsl:when test="$lccn = 'sh99004140'">kao</xsl:when>
                    <xsl:when test="$lccn = 'sh91000811'">kcg</xsl:when>
                    <xsl:when test="$lccn = 'sh85071739'">kmg</xsl:when>
                    <xsl:when test="$lccn = 'sh87000521'">nij</xsl:when>
                    <xsl:when test="$lccn = 'sh85071745'">ktw</xsl:when>
                    <xsl:when test="$lccn = 'sh85071751'">kda</xsl:when>
                    <xsl:when test="$lccn = 'sh85071753'">kax</xsl:when>
                    <xsl:when test="$lccn = 'sh93006308'">pss</xsl:when>
                    <xsl:when test="$lccn = 'sh93004598'">bpp</xsl:when>
                    <xsl:when test="$lccn = 'sh85071766'">zku</xsl:when>
                    <xsl:when test="$lccn = 'sh85071771'">ahk</xsl:when>
                    <xsl:when test="$lccn = 'sh85071778'">xaw</xsl:when>
                    <xsl:when test="$lccn = 'sh85071792'">kaw</xsl:when>
                    <xsl:when test="$lccn = 'sh87007203'">kyz</xsl:when>
                    <xsl:when test="$lccn = 'sh85071802'">pdu</xsl:when>
                    <xsl:when test="$lccn = 'sh97008884'">kak</xsl:when>
                    <xsl:when test="$lccn = 'sh94001497'">gbb</xsl:when>
                    <xsl:when test="$lccn = 'sh88006677'">kge</xsl:when>
                    <xsl:when test="$lccn = 'sh85071814'">kaz</xsl:when>
                    <xsl:when test="$lccn = 'sh90005015'">ksx</xsl:when>
                    <xsl:when test="$lccn = 'sh85071873'">kek</xsl:when>
                    <xsl:when test="$lccn = 'sh85071874'">kel</xsl:when>
                    <xsl:when test="$lccn = 'sh85071876'">keb</xsl:when>
                    <xsl:when test="$lccn = 'sh97008886'">ify</xsl:when>
                    <xsl:when test="$lccn = 'sh85071903'">kem</xsl:when>
                    <xsl:when test="$lccn = 'sh85071906'">ahg</xsl:when>
                    <xsl:when test="$lccn = 'sh85071926'">kyq</xsl:when>
                    <xsl:when test="$lccn = 'sh85072029'">ker</xsl:when>
                    <xsl:when test="$lccn = 'sh85072047'">ked</xsl:when>
                    <xsl:when test="$lccn = 'sh85072053'">kvr</xsl:when>
                    <xsl:when test="$lccn = 'sh85072088'">ket</xsl:when>
                    <xsl:when test="$lccn = 'sh85072089'">kcv</xsl:when>
                    <xsl:when test="$lccn = 'sh90002122'">xte</xsl:when>
                    <xsl:when test="$lccn = 'sh85072136'">xkv</xsl:when>
                    <xsl:when test="$lccn = 'sh85072146'">kjf</xsl:when>
                    <xsl:when test="$lccn = 'sh85072147'">klr</xsl:when>
                    <xsl:when test="$lccn = 'sh85072148'">khk</xsl:when>
                    <xsl:when test="$lccn = 'sh85072151'">xam</xsl:when>
                    <xsl:when test="$lccn = 'sh85072154'">kht</xsl:when>
                    <xsl:when test="$lccn = 'sh89004821'">khn</xsl:when>
                    <xsl:when test="$lccn = 'sh85072162'">kca</xsl:when>
                    <xsl:when test="$lccn = 'sh85072166'">hin</xsl:when>
                    <xsl:when test="$lccn = 'sh85072169'">khr</xsl:when>
                    <xsl:when test="$lccn = 'sh85072177'">kha</xsl:when>
                    <xsl:when test="$lccn = 'sh99013999'">xhe</xsl:when>
                    <xsl:when test="$lccn = 'sh85072195'">nkh</xsl:when>
                    <xsl:when test="$lccn = 'sh85072199'">kjj</xsl:when>
                    <xsl:when test="$lccn = 'sh87002872'">zkt</xsl:when>
                    <xsl:when test="$lccn = 'sh85072208'">kjg</xsl:when>
                    <xsl:when test="$lccn = 'sh85072214'">xuu</xsl:when>
                    <xsl:when test="$lccn = 'sh90004586'">zkh</xsl:when>
                    <xsl:when test="$lccn = 'sh85072221'">kho</xsl:when>
                    <xsl:when test="$lccn = 'sh93009145'">mai</xsl:when>
                    <xsl:when test="$lccn = 'sh85072222'">khw</xsl:when>
                    <xsl:when test="$lccn = 'sh85072223'">sgh</xsl:when>
                    <xsl:when test="$lccn = 'sh92002303'">cka</xsl:when>
                    <xsl:when test="$lccn = 'sh92002304'">cnk</xsl:when>
                    <xsl:when test="$lccn = 'sh85072226'">kkh</xsl:when>
                    <xsl:when test="$lccn = 'sh2001005806'">khv</xsl:when>
                    <xsl:when test="$lccn = 'sh85072229'">csh</xsl:when>
                    <xsl:when test="$lccn = 'sh88006899'">ifk</xsl:when>
                    <xsl:when test="$lccn = 'sh85072239'">kic</xsl:when>
                    <xsl:when test="$lccn = 'sh91005013'">flr</xsl:when>
                    <xsl:when test="$lccn = 'sh85072310'">kik</xsl:when>
                    <xsl:when test="$lccn = 'sh89006379'">sjd</xsl:when>
                    <xsl:when test="$lccn = 'sh85072322'">klb</xsl:when>
                    <xsl:when test="$lccn = 'sh85072353'">kmb</xsl:when>
                    <xsl:when test="$lccn = 'sh87000522'">krj</xsl:when>
                    <xsl:when test="$lccn = 'sh97001836'">zga</xsl:when>
                    <xsl:when test="$lccn = 'sh85072460'">swc</xsl:when>
                    <xsl:when test="$lccn = 'sh85115623'">kin</xsl:when>
                    <xsl:when test="$lccn = 'sh85072496'">kio</xsl:when>
                    <xsl:when test="$lccn = 'sh85072498'">kue</xsl:when>
                    <xsl:when test="$lccn = 'sh85072501'">kln</xsl:when>
                    <xsl:when test="$lccn = 'sh85072526'">kij</xsl:when>
                    <xsl:when test="$lccn = 'sh85072537'">luy</xsl:when>
                    <xsl:when test="$lccn = 'sh99005124'">kje</xsl:when>
                    <xsl:when test="$lccn = 'sh85072547'">kiz</xsl:when>
                    <xsl:when test="$lccn = 'sh85072560'">tap</xsl:when>
                    <xsl:when test="$lccn = 'sh00003103'">gia</xsl:when>
                    <xsl:when test="$lccn = 'sh85072593'">ktu</xsl:when>
                    <xsl:when test="$lccn = 'sh85072619'">kla</xsl:when>
                    <xsl:when test="$lccn = 'sh93002529'">tlh</xsl:when>
                    <xsl:when test="$lccn = 'sh93008437'">btz</xsl:when>
                    <xsl:when test="$lccn = 'sh90001321'">cku</xsl:when>
                    <xsl:when test="$lccn = 'sh85072760'">kpw</xsl:when>
                    <xsl:when test="$lccn = 'sh85072773'">kfa</xsl:when>
                    <xsl:when test="$lccn = 'sh88006359'">kpm</xsl:when>
                    <xsl:when test="$lccn = 'sh95008089'">bcs</xsl:when>
                    <xsl:when test="$lccn = 'sh93004599'">kbk</xsl:when>
                    <xsl:when test="$lccn = 'sh85135558'">trp</xsl:when>
                    <xsl:when test="$lccn = 'sh97005144'">bhp</xsl:when>
                    <xsl:when test="$lccn = 'sh85072835'">ijc</xsl:when>
                    <xsl:when test="$lccn = 'sh96003703'">bkm</xsl:when>
                    <xsl:when test="$lccn = 'sh85072844'">kmm</xsl:when>
                    <xsl:when test="$lccn = 'sh85072857'">kpf</xsl:when>
                    <xsl:when test="$lccn = 'sh95004387'">tyn</xsl:when>
                    <xsl:when test="$lccn = 'sh85072858'">nui</xsl:when>
                    <xsl:when test="$lccn = 'sh87001276'">kge</xsl:when>
                    <xsl:when test="$lccn = 'sh85072861'">kom</xsl:when>
                    <xsl:when test="$lccn = 'sh85072863'">koi</xsl:when>
                    <xsl:when test="$lccn = 'sh85072868'">kpv</xsl:when>
                    <xsl:when test="$lccn = 'sh93009490'">kmw</xsl:when>
                    <xsl:when test="$lccn = 'sh89006659'">kvh</xsl:when>
                    <xsl:when test="$lccn = 'sh93007629'">snp</xsl:when>
                    <xsl:when test="$lccn = 'sh85072890'">kfc</xsl:when>
                    <xsl:when test="$lccn = 'sh92004873'">nas</xsl:when>
                    <xsl:when test="$lccn = 'sh85072898'">kon</xsl:when>
                    <xsl:when test="$lccn = 'sh85071469'">ems</xsl:when>
                    <xsl:when test="$lccn = 'sh85072912'">kok</xsl:when>
                    <xsl:when test="$lccn = 'sh85072918'">xon</xsl:when>
                    <xsl:when test="$lccn = 'sh85072932'">nbe</xsl:when>
                    <xsl:when test="$lccn = 'sh85072937'">kng</xsl:when>
                    <xsl:when test="$lccn = 'sh94005162'">ozm</xsl:when>
                    <xsl:when test="$lccn = 'sh85072942'">ikt</xsl:when>
                    <xsl:when test="$lccn = 'sh85072998'">kqz</xsl:when>
                    <xsl:when test="$lccn = 'sh85073002'">kpr</xsl:when>
                    <xsl:when test="$lccn = 'sh85073088'">kor</xsl:when>
                    <xsl:when test="$lccn = 'sh85073090'">okm</xsl:when>
                    <xsl:when test="$lccn = 'sh85073089'">oko</xsl:when>
                    <xsl:when test="$lccn = 'sh91005703'">sna</xsl:when>
                    <xsl:when test="$lccn = 'sh00005128'">bpr</xsl:when>
                    <xsl:when test="$lccn = 'sh96009998'">khe</xsl:when>
                    <xsl:when test="$lccn = 'sh87006122'">kfp</xsl:when>
                    <xsl:when test="$lccn = 'sh85073160'">kpy</xsl:when>
                    <xsl:when test="$lccn = 'sh97002651'">kkl</xsl:when>
                    <xsl:when test="$lccn = 'sh85073168'">kze</xsl:when>
                    <xsl:when test="$lccn = 'sh85073174'">mar</xsl:when>
                    <xsl:when test="$lccn = 'sh85073192'">kfe</xsl:when>
                    <xsl:when test="$lccn = 'sh99002248'">zko</xsl:when>
                    <xsl:when test="$lccn = 'sh85073212'">kff</xsl:when>
                    <xsl:when test="$lccn = 'sh2002009975'">ses</xsl:when>
                    <xsl:when test="$lccn = 'sh85073216'">koy</xsl:when>
                    <xsl:when test="$lccn = 'sh85073226'">kpe</xsl:when>
                    <xsl:when test="$lccn = 'sh85073227'">kpo</xsl:when>
                    <xsl:when test="$lccn = 'sh92002315'">xra</xsl:when>
                    <xsl:when test="$lccn = 'sh85073272'">kpl</xsl:when>
                    <xsl:when test="$lccn = 'sh85073288'">kri</xsl:when>
                    <xsl:when test="$lccn = 'sh91001734'">rop</xsl:when>
                    <xsl:when test="$lccn = 'sh92005010'">mcm</xsl:when>
                    <xsl:when test="$lccn = 'sh86002353'">kgo</xsl:when>
                    <xsl:when test="$lccn = 'sh85073316'">klu</xsl:when>
                    <xsl:when test="$lccn = 'sh85073346'">kua</xsl:when>
                    <xsl:when test="$lccn = 'sh85073348'">dar</xsl:when>
                    <xsl:when test="$lccn = 'sh87003179'">kvb</xsl:when>
                    <xsl:when test="$lccn = 'sh85073357'">gom</xsl:when>
                    <xsl:when test="$lccn = 'sh85073376'">kdt</xsl:when>
                    <xsl:when test="$lccn = 'sh85073375'">kxu</xsl:when>
                    <xsl:when test="$lccn = 'sh94002692'">kux</xsl:when>
                    <xsl:when test="$lccn = 'sh85073382'">tcz</xsl:when>
                    <xsl:when test="$lccn = 'sh2001003488'">bfa</xsl:when>
                    <xsl:when test="$lccn = 'sh85057706'">gvn</xsl:when>
                    <xsl:when test="$lccn = 'sh85073390'">kkw</xsl:when>
                    <xsl:when test="$lccn = 'sh85073392'">glj</xsl:when>
                    <xsl:when test="$lccn = 'sh85073408'">kfx</xsl:when>
                    <xsl:when test="$lccn = 'sh85073409'">kle</xsl:when>
                    <xsl:when test="$lccn = 'sh85090731'">nee</xsl:when>
                    <xsl:when test="$lccn = 'sh88003806'">kra</xsl:when>
                    <xsl:when test="$lccn = 'sh85073417'">kfy</xsl:when>
                    <xsl:when test="$lccn = 'sh85057906'">kgs</xsl:when>
                    <xsl:when test="$lccn = 'sh85073430'">kum</xsl:when>
                    <xsl:when test="$lccn = 'sh85073434'">knn</xsl:when>
                    <xsl:when test="$lccn = 'sh85073435'">kun</xsl:when>
                    <xsl:when test="$lccn = 'sh85073444'">kup</xsl:when>
                    <xsl:when test="$lccn = 'sh88000626'">xuo</xsl:when>
                    <xsl:when test="$lccn = 'sh85073458'">key</xsl:when>
                    <xsl:when test="$lccn = 'sh87007613'">kud</xsl:when>
                    <xsl:when test="$lccn = 'sh91006169'">knk</xsl:when>
                    <xsl:when test="$lccn = 'sh85073463'">kur</xsl:when>
                    <xsl:when test="$lccn = 'sh85073471'">kuj</xsl:when>
                    <xsl:when test="$lccn = 'sh85073473'">kfq</xsl:when>
                    <xsl:when test="$lccn = 'sh88004087'">kyw</xsl:when>
                    <xsl:when test="$lccn = 'sh85073488'">kru</xsl:when>
                    <xsl:when test="$lccn = 'sh86007447'">kfi</xsl:when>
                    <xsl:when test="$lccn = 'sh85073501'">kus</xsl:when>
                    <xsl:when test="$lccn = 'sh85073496'">kos</xsl:when>
                    <xsl:when test="$lccn = 'sh85073503'">kgg</xsl:when>
                    <xsl:when test="$lccn = 'sh85073514'">kut</xsl:when>
                    <xsl:when test="$lccn = 'sh88007010'">kuy</xsl:when>
                    <xsl:when test="$lccn = 'sh85012070'">bak</xsl:when>
                    <xsl:when test="$lccn = 'sh85073521'">kxv</xsl:when>
                    <xsl:when test="$lccn = 'sh85073533'">mas</xsl:when>
                    <xsl:when test="$lccn = 'sh85073536'">kwd</xsl:when>
                    <xsl:when test="$lccn = 'sh85073542'">kwk</xsl:when>
                    <xsl:when test="$lccn = 'sh96012120'">ksq</xsl:when>
                    <xsl:when test="$lccn = 'sh85073543'">kwn</xsl:when>
                    <xsl:when test="$lccn = 'sh85048918'">kwf</xsl:when>
                    <xsl:when test="$lccn = 'sh99014696'">cwt</xsl:when>
                    <xsl:when test="$lccn = 'sh85073552'">goa</xsl:when>
                    <xsl:when test="$lccn = 'sh85073553'">kwe</xsl:when>
                    <xsl:when test="$lccn = 'sh85073554'">kws</xsl:when>
                    <xsl:when test="$lccn = 'sh86000904'">bri</xsl:when>
                    <xsl:when test="$lccn = 'sh85072516'">kir</xsl:when>
                    <xsl:when test="$lccn = 'sh85073614'">ldi</xsl:when>
                    <xsl:when test="$lccn = 'sh85073615'">gdm</xsl:when>
                    <xsl:when test="$lccn = 'sh85073617'">hia</xsl:when>
                    <xsl:when test="$lccn = 'sh2003000170'">mwi</xsl:when>
                    <xsl:when test="$lccn = 'sh85073799'">lac</xsl:when>
                    <xsl:when test="$lccn = 'sh85073880'">lbj</xsl:when>
                    <xsl:when test="$lccn = 'sh87003128'">lld</xsl:when>
                    <xsl:when test="$lccn = 'sh85073893'">lad</xsl:when>
                    <xsl:when test="$lccn = 'sh85073971'">kjq</xsl:when>
                    <xsl:when test="$lccn = 'sh89007032'">lkh</xsl:when>
                    <xsl:when test="$lccn = 'sh85073978'">lah</xsl:when>
                    <xsl:when test="$lccn = 'sh85073981'">lhu</xsl:when>
                    <xsl:when test="$lccn = 'sh86004223'">lbf</xsl:when>
                    <xsl:when test="$lccn = 'sh92006127'">cfm</xsl:when>
                    <xsl:when test="$lccn = 'sh85073994'">lbe</xsl:when>
                    <xsl:when test="$lccn = 'sh85074149'">mrh</xsl:when>
                    <xsl:when test="$lccn = 'sh2003000169'">lkn</xsl:when>
                    <xsl:when test="$lccn = 'sh85074152'">lkt</xsl:when>
                    <xsl:when test="$lccn = 'sh85074156'">nrz</xsl:when>
                    <xsl:when test="$lccn = 'sh00005847'">slp</xsl:when>
                    <xsl:when test="$lccn = 'sh2003008958'">lby</xsl:when>
                    <xsl:when test="$lccn = 'sh93008044'">xdy</xsl:when>
                    <xsl:when test="$lccn = 'sh85074170'">lam</xsl:when>
                    <xsl:when test="$lccn = 'sh85074171'">lmn</xsl:when>
                    <xsl:when test="$lccn = 'sh2004007039'">snp</xsl:when>
                    <xsl:when test="$lccn = 'sh86004510'">lme</xsl:when>
                    <xsl:when test="$lccn = 'sh2003005696'">lev</xsl:when>
                    <xsl:when test="$lccn = 'sh85074270'">ljp</xsl:when>
                    <xsl:when test="$lccn = 'sh85074275'">mrw</xsl:when>
                    <xsl:when test="$lccn = 'sh85074505'">lno</xsl:when>
                    <xsl:when test="$lccn = 'sh85074644'">lao</xsl:when>
                    <xsl:when test="$lccn = 'sh96005078'">laq</xsl:when>
                    <xsl:when test="$lccn = 'sh98002281'">lbz</xsl:when>
                    <xsl:when test="$lccn = 'sh93004601'">alo</xsl:when>
                    <xsl:when test="$lccn = 'sh2003010193'">lrg</xsl:when>
                    <xsl:when test="$lccn = 'sh89006579'">sva</xsl:when>
                    <xsl:when test="$lccn = 'sh85074944'">lat</xsl:when>
                    <xsl:when test="$lccn = 'sh85075013'">lav</xsl:when>
                    <xsl:when test="$lccn = 'sh85075028'">llu</xsl:when>
                    <xsl:when test="$lccn = 'sh91006071'">lcm</xsl:when>
                    <xsl:when test="$lccn = 'sh2003006250'">lvk</xsl:when>
                    <xsl:when test="$lccn = 'sh93003394'">lbx</xsl:when>
                    <xsl:when test="$lccn = 'sh85075410'">lzz</xsl:when>
                    <xsl:when test="$lccn = 'sh88005402'">wol</xsl:when>
                    <xsl:when test="$lccn = 'sh85075698'">lef</xsl:when>
                    <xsl:when test="$lccn = 'sh87000103'">lse</xsl:when>
                    <xsl:when test="$lccn = 'sh2001000988'">lln</xsl:when>
                    <xsl:when test="$lccn = 'sh97006206'">mui</xsl:when>
                    <xsl:when test="$lccn = 'sh87001425'">liw</xsl:when>
                    <xsl:when test="$lccn = 'sh85075971'">tnl</xsl:when>
                    <xsl:when test="$lccn = 'sh85075973'">len</xsl:when>
                    <xsl:when test="$lccn = 'sh93009491'">led</xsl:when>
                    <xsl:when test="$lccn = 'sh85075980'">leg</xsl:when>
                    <xsl:when test="$lccn = 'sh85075991'">leh</xsl:when>
                    <xsl:when test="$lccn = 'sh85076045'">lep</xsl:when>
                    <xsl:when test="$lccn = 'sh85011166'">les</xsl:when>
                    <xsl:when test="$lccn = 'sh93009696'">lex</xsl:when>
                    <xsl:when test="$lccn = 'sh85076258'">ojv</xsl:when>
                    <xsl:when test="$lccn = 'sh85076373'">lez</xsl:when>
                    <xsl:when test="$lccn = 'sh85076381'">lhm</xsl:when>
                    <xsl:when test="$lccn = 'sh85076382'">njh</xsl:when>
                    <xsl:when test="$lccn = 'sh85076391'">dij</xsl:when>
                    <xsl:when test="$lccn = 'sh85077829'">njn</xsl:when>
                    <xsl:when test="$lccn = 'sh99013626'">lig</xsl:when>
                    <xsl:when test="$lccn = 'sh85076967'">kck</xsl:when>
                    <xsl:when test="$lccn = 'sh85076978'">lil</xsl:when>
                    <xsl:when test="$lccn = 'sh85077000'">lif</xsl:when>
                    <xsl:when test="$lccn = 'sh85077001'">lmp</xsl:when>
                    <xsl:when test="$lccn = 'sh2002009968'">lim</xsl:when>
                    <xsl:when test="$lccn = 'sh2002007295'">lmc</xsl:when>
                    <xsl:when test="$lccn = 'sh86007747'">liy</xsl:when>
                    <xsl:when test="$lccn = 'sh93006284'">lid</xsl:when>
                    <xsl:when test="$lccn = 'sh92001345'">pse</xsl:when>
                    <xsl:when test="$lccn = 'sh85077471'">lis</xsl:when>
                    <xsl:when test="$lccn = 'sh85077647'">lit</xsl:when>
                    <xsl:when test="$lccn = 'sh85077822'">liv</xsl:when>
                    <xsl:when test="$lccn = 'sh2004003273'">nso</xsl:when>
                    <xsl:when test="$lccn = 'sh92000179'">log</xsl:when>
                    <xsl:when test="$lccn = 'sh85078138'">rag</xsl:when>
                    <xsl:when test="$lccn = 'sh2003006561'">jbo</xsl:when>
                    <xsl:when test="$lccn = 'sh87007630'">lok</xsl:when>
                    <xsl:when test="$lccn = 'sh97003762'">llq</xsl:when>
                    <xsl:when test="$lccn = 'sh92005162'">mfb</xsl:when>
                    <xsl:when test="$lccn = 'sh85078172'">lom</xsl:when>
                    <xsl:when test="$lccn = 'sh85078177'">lmo</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003301'">lgu</xsl:when>
                    <xsl:when test="$lccn = 'sh85078309'">lnu</xsl:when>
                    <xsl:when test="$lccn = 'sh95009944'">los</xsl:when>
                    <xsl:when test="$lccn = 'sh85078314'">crc</xsl:when>
                    <xsl:when test="$lccn = 'sh90004650'">loy</xsl:when>
                    <xsl:when test="$lccn = 'sh88000631'">lor</xsl:when>
                    <xsl:when test="$lccn = 'sh87000104'">lse</xsl:when>
                    <xsl:when test="$lccn = 'sh98005034'">uvl</xsl:when>
                    <xsl:when test="$lccn = 'sh85074998'">lot</xsl:when>
                    <xsl:when test="$lccn = 'sh99005776'">loj</xsl:when>
                    <xsl:when test="$lccn = 'sh85078517'">rmy</xsl:when>
                    <xsl:when test="$lccn = 'sh85078668'">dsb</xsl:when>
                    <xsl:when test="$lccn = 'sh91000530'">kml</xsl:when>
                    <xsl:when test="$lccn = 'sh85078695'">loz</xsl:when>
                    <xsl:when test="$lccn = 'sh91006080'">khb</xsl:when>
                    <xsl:when test="$lccn = 'sh85078706'">lub</xsl:when>
                    <xsl:when test="$lccn = 'sh85078707'">lua</xsl:when>
                    <xsl:when test="$lccn = 'sh85078732'">lch</xsl:when>
                    <xsl:when test="$lccn = 'sh85078752'">lud</xsl:when>
                    <xsl:when test="$lccn = 'sh85078094'">lgg</xsl:when>
                    <xsl:when test="$lccn = 'sh85078771'">lui</xsl:when>
                    <xsl:when test="$lccn = 'sh85078778'">vil</xsl:when>
                    <xsl:when test="$lccn = 'sh97008871'">smj</xsl:when>
                    <xsl:when test="$lccn = 'sh85078837'">lup</xsl:when>
                    <xsl:when test="$lccn = 'sh85078845'">str</xsl:when>
                    <xsl:when test="$lccn = 'sh85078874'">lun</xsl:when>
                    <xsl:when test="$lccn = 'sh91004188'">nst</xsl:when>
                    <xsl:when test="$lccn = 'sh96000248'">mgr</xsl:when>
                    <xsl:when test="$lccn = 'sh85078929'">luo</xsl:when>
                    <xsl:when test="$lccn = 'sh85078959'">lus</xsl:when>
                    <xsl:when test="$lccn = 'sh85078962'">khl</xsl:when>
                    <xsl:when test="$lccn = 'sh85079043'">lue</xsl:when>
                    <xsl:when test="$lccn = 'sh85079044'">hit</xsl:when>
                    <xsl:when test="$lccn = 'sh2003005414'">ltz</xsl:when>
                    <xsl:when test="$lccn = 'sh85079056'">lyn</xsl:when>
                    <xsl:when test="$lccn = 'sh85079059'">luy</xsl:when>
                    <xsl:when test="$lccn = 'sh85079066'">lwo</xsl:when>
                    <xsl:when test="$lccn = 'sh85079082'">xlc</xsl:when>
                    <xsl:when test="$lccn = 'sh85079103'">xld</xsl:when>
                    <xsl:when test="$lccn = 'sh85075939'">gnh</xsl:when>
                    <xsl:when test="$lccn = 'sh85079219'">grg</xsl:when>
                    <xsl:when test="$lccn = 'sh96003836'">cma</xsl:when>
                    <xsl:when test="$lccn = 'sh88006358'">cma</xsl:when>
                    <xsl:when test="$lccn = 'sh85079224'">mhy</xsl:when>
                    <xsl:when test="$lccn = 'sh85079229'">mde</xsl:when>
                    <xsl:when test="$lccn = 'sh85079231'">mfz</xsl:when>
                    <xsl:when test="$lccn = 'sh85079236'">mwp</xsl:when>
                    <xsl:when test="$lccn = 'sh85079243'">mca</xsl:when>
                    <xsl:when test="$lccn = 'sh93004861'">mbn</xsl:when>
                    <xsl:when test="$lccn = 'sh85079284'">mkd</xsl:when>
                    <xsl:when test="$lccn = 'sh85079315'">mcb</xsl:when>
                    <xsl:when test="$lccn = 'sh85079483'">mbr</xsl:when>
                    <xsl:when test="$lccn = 'sh85079486'">myy</xsl:when>
                    <xsl:when test="$lccn = 'sh85079488'">mbc</xsl:when>
                    <xsl:when test="$lccn = 'sh00007291'">mxu</xsl:when>
                    <xsl:when test="$lccn = 'sh85079508'">prs</xsl:when>
                    <xsl:when test="$lccn = 'sh85079527'">mhi</xsl:when>
                    <xsl:when test="$lccn = 'sh91005756'">mrr</xsl:when>
                    <xsl:when test="$lccn = 'sh85079555'">mad</xsl:when>
                    <xsl:when test="$lccn = 'sh92000330'">maf</xsl:when>
                    <xsl:when test="$lccn = 'sh85079567'">mag</xsl:when>
                    <xsl:when test="$lccn = 'sh85079603'">aoe</xsl:when>
                    <xsl:when test="$lccn = 'sh85079631'">mdh</xsl:when>
                    <xsl:when test="$lccn = 'sh88005185'">fia</xsl:when>
                    <xsl:when test="$lccn = 'sh85079853'">mjy</xsl:when>
                    <xsl:when test="$lccn = 'sh85079861'">gdq</xsl:when>
                    <xsl:when test="$lccn = 'sh97008870'">ayz</xsl:when>
                    <xsl:when test="$lccn = 'sh85079894'">mgu</xsl:when>
                    <xsl:when test="$lccn = 'sh2002009431'">mbq</xsl:when>
                    <xsl:when test="$lccn = 'sh85079941'">mai</xsl:when>
                    <xsl:when test="$lccn = 'sh85079951'">mvy</xsl:when>
                    <xsl:when test="$lccn = 'sh85079963'">mwm</xsl:when>
                    <xsl:when test="$lccn = 'sh88000627'">mcp</xsl:when>
                    <xsl:when test="$lccn = 'sh99005127'">mkz</xsl:when>
                    <xsl:when test="$lccn = 'sh85079988'">mak</xsl:when>
                    <xsl:when test="$lccn = 'sh85080000'">kde</xsl:when>
                    <xsl:when test="$lccn = 'sh97006158'">lva</xsl:when>
                    <xsl:when test="$lccn = 'sh85080023'">mlg</xsl:when>
                    <xsl:when test="$lccn = 'sh85080087'">mal</xsl:when>
                    <xsl:when test="$lccn = 'sh2001012439'">mdy</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003457'">mlx</xsl:when>
                    <xsl:when test="$lccn = 'sh2003000182'">mfi</xsl:when>
                    <xsl:when test="$lccn = 'sh85080219'">mlt</xsl:when>
                    <xsl:when test="$lccn = 'sh85080225'">mjt</xsl:when>
                    <xsl:when test="$lccn = 'sh85080228'">mlu</xsl:when>
                    <xsl:when test="$lccn = 'sh85080236'">mup</xsl:when>
                    <xsl:when test="$lccn = 'sh85080247'">mmn</xsl:when>
                    <xsl:when test="$lccn = 'sh85085641'">myk</xsl:when>
                    <xsl:when test="$lccn = 'sh96006530'">mgm</xsl:when>
                    <xsl:when test="$lccn = 'sh85080252'">mgr</xsl:when>
                    <xsl:when test="$lccn = 'sh96000247'">mgr</xsl:when>
                    <xsl:when test="$lccn = 'sh85080286'">maw</xsl:when>
                    <xsl:when test="$lccn = 'sh85080290'">mdi</xsl:when>
                    <xsl:when test="$lccn = 'sh85080334'">mcq</xsl:when>
                    <xsl:when test="$lccn = 'sh85080369'">mva</xsl:when>
                    <xsl:when test="$lccn = 'sh85080370'">mle</xsl:when>
                    <xsl:when test="$lccn = 'sh85080397'">mnc</xsl:when>
                    <xsl:when test="$lccn = 'sh85080406'">mid</xsl:when>
                    <xsl:when test="$lccn = 'sh92004867'">mmx</xsl:when>
                    <xsl:when test="$lccn = 'sh85080418'">mhq</xsl:when>
                    <xsl:when test="$lccn = 'sh85080419'">mdr</xsl:when>
                    <xsl:when test="$lccn = 'sh85080431'">mjl</xsl:when>
                    <xsl:when test="$lccn = 'sh85080432'">sbb</xsl:when>
                    <xsl:when test="$lccn = 'sh85080443'">man</xsl:when>
                    <xsl:when test="$lccn = 'sh85080445'">mfv</xsl:when>
                    <xsl:when test="$lccn = 'sh93001550'">mpj</xsl:when>
                    <xsl:when test="$lccn = 'sh85080476'">rar</xsl:when>
                    <xsl:when test="$lccn = 'sh93009162'">mem</xsl:when>
                    <xsl:when test="$lccn = 'sh92004868'">mna</xsl:when>
                    <xsl:when test="$lccn = 'sh88007703'">mpc</xsl:when>
                    <xsl:when test="$lccn = 'sh85080512'">mrv</xsl:when>
                    <xsl:when test="$lccn = 'sh85080514'">mdj</xsl:when>
                    <xsl:when test="$lccn = 'sh85080517'">mqy</xsl:when>
                    <xsl:when test="$lccn = 'sh92004869'">mbh</xsl:when>
                    <xsl:when test="$lccn = 'sh85080532'">cjr</xsl:when>
                    <xsl:when test="$lccn = 'sh85080533'">iry</xsl:when>
                    <xsl:when test="$lccn = 'sh85080564'">mni</xsl:when>
                    <xsl:when test="$lccn = 'sh85080577'">knf</xsl:when>
                    <xsl:when test="$lccn = 'sh85080579'">nge</xsl:when>
                    <xsl:when test="$lccn = 'sh85080605'">mev</xsl:when>
                    <xsl:when test="$lccn = 'sh85080630'">msk</xsl:when>
                    <xsl:when test="$lccn = 'sh85080633'">mns</xsl:when>
                    <xsl:when test="$lccn = 'sh99005274'">wow</xsl:when>
                    <xsl:when test="$lccn = 'sh85080783'">obo</xsl:when>
                    <xsl:when test="$lccn = 'sh85080787'">glv</xsl:when>
                    <xsl:when test="$lccn = 'sh93004966'">mxc</xsl:when>
                    <xsl:when test="$lccn = 'sh85080809'">nbi</xsl:when>
                    <xsl:when test="$lccn = 'sh85080810'">mmd</xsl:when>
                    <xsl:when test="$lccn = 'sh85080812'">mri</xsl:when>
                    <xsl:when test="$lccn = 'sh85006436'">arn</xsl:when>
                    <xsl:when test="$lccn = 'sh85080884'">mec</xsl:when>
                    <xsl:when test="$lccn = 'sh85080896'">nma</xsl:when>
                    <xsl:when test="$lccn = 'sh85080899'">mrw</xsl:when>
                    <xsl:when test="$lccn = 'sh85080902'">zmr</xsl:when>
                    <xsl:when test="$lccn = 'sh87001421'">bfy</xsl:when>
                    <xsl:when test="$lccn = 'sh85080916'">mar</xsl:when>
                    <xsl:when test="$lccn = 'sh2002012352'">zmc</xsl:when>
                    <xsl:when test="$lccn = 'sh85081083'">mrc</xsl:when>
                    <xsl:when test="$lccn = 'sh85081087'">gvf</xsl:when>
                    <xsl:when test="$lccn = 'sh85081291'">mbw</xsl:when>
                    <xsl:when test="$lccn = 'sh2002011317'">mvo</xsl:when>
                    <xsl:when test="$lccn = 'sh85081584'">mah</xsl:when>
                    <xsl:when test="$lccn = 'sh98000024'">mpj</xsl:when>
                    <xsl:when test="$lccn = 'sh96009858'">vma</xsl:when>
                    <xsl:when test="$lccn = 'sh92004815'">mhx</xsl:when>
                    <xsl:when test="$lccn = 'sh85081684'">mwr</xsl:when>
                    <xsl:when test="$lccn = 'sh86006115'">mcn</xsl:when>
                    <xsl:when test="$lccn = 'sh85081784'">mbl</xsl:when>
                    <xsl:when test="$lccn = 'sh85081788'">mas</xsl:when>
                    <xsl:when test="$lccn = 'sh85081792'">msb</xsl:when>
                    <xsl:when test="$lccn = 'sh91001108'">emo</xsl:when>
                    <xsl:when test="$lccn = 'sh85081805'">amr</xsl:when>
                    <xsl:when test="$lccn = 'sh90004933'">msh</xsl:when>
                    <xsl:when test="$lccn = 'sh85081915'">wam</xsl:when>
                    <xsl:when test="$lccn = 'sh88007673'">mbt</xsl:when>
                    <xsl:when test="$lccn = 'sh85082198'">mat</xsl:when>
                    <xsl:when test="$lccn = 'sh00003985'">mtm</xsl:when>
                    <xsl:when test="$lccn = 'sh85082263'">mvb</xsl:when>
                    <xsl:when test="$lccn = 'sh95004597'">mgw</xsl:when>
                    <xsl:when test="$lccn = 'sh86002220'">mxx</xsl:when>
                    <xsl:when test="$lccn = 'sh85082280'">mav</xsl:when>
                    <xsl:when test="$lccn = 'sh85082295'">mph</xsl:when>
                    <xsl:when test="$lccn = 'sh92000636'">mnb</xsl:when>
                    <xsl:when test="$lccn = 'sh98003426'">mxl</xsl:when>
                    <xsl:when test="$lccn = 'sh95003311'">slz</xsl:when>
                    <xsl:when test="$lccn = 'sh85082432'">mfy</xsl:when>
                    <xsl:when test="$lccn = 'sh85082440'">mcf</xsl:when>
                    <xsl:when test="$lccn = 'sh92004590'">ifu</xsl:when>
                    <xsl:when test="$lccn = 'sh85082465'">myb</xsl:when>
                    <xsl:when test="$lccn = 'sh85082467'">mdp</xsl:when>
                    <xsl:when test="$lccn = 'sh96000265'">mpk</xsl:when>
                    <xsl:when test="$lccn = 'sh85082471'">kbc</xsl:when>
                    <xsl:when test="$lccn = 'sh85082476'">mdt</xsl:when>
                    <xsl:when test="$lccn = 'sh98001619'">baw</xsl:when>
                    <xsl:when test="$lccn = 'sh85082477'">liz</xsl:when>
                    <xsl:when test="$lccn = 'sh85082481'">mbo</xsl:when>
                    <xsl:when test="$lccn = 'sh85082484'">mdw</xsl:when>
                    <xsl:when test="$lccn = 'sh2004010351'">mhd</xsl:when>
                    <xsl:when test="$lccn = 'sh2004010350'">mgz</xsl:when>
                    <xsl:when test="$lccn = 'sh85082487'">mhw</xsl:when>
                    <xsl:when test="$lccn = 'sh85082488'">mdd</xsl:when>
                    <xsl:when test="$lccn = 'sh85082489'">mck</xsl:when>
                    <xsl:when test="$lccn = 'sh85082492'">gun</xsl:when>
                    <xsl:when test="$lccn = 'sh93006319'">mej</xsl:when>
                    <xsl:when test="$lccn = 'sh85082832'">xme</xsl:when>
                    <xsl:when test="$lccn = 'sh85083242'">med</xsl:when>
                    <xsl:when test="$lccn = 'sh85083249'">byv</xsl:when>
                    <xsl:when test="$lccn = 'sh93006354'">mek</xsl:when>
                    <xsl:when test="$lccn = 'sh96005088'">lbw</xsl:when>
                    <xsl:when test="$lccn = 'sh85083406'">pwm</xsl:when>
                    <xsl:when test="$lccn = 'sh85083402'">mxe</xsl:when>
                    <xsl:when test="$lccn = 'sh85083464'">tsj</xsl:when>
                    <xsl:when test="$lccn = 'sh89005769'">xkd</xsl:when>
                    <xsl:when test="$lccn = 'sh2001005807'">sim</xsl:when>
                    <xsl:when test="$lccn = 'sh85083537'">men</xsl:when>
                    <xsl:when test="$lccn = 'sh85083589'">mez</xsl:when>
                    <xsl:when test="$lccn = 'sh85083721'">mwv</xsl:when>
                    <xsl:when test="$lccn = 'sh90003765'">bvu</xsl:when>
                    <xsl:when test="$lccn = 'sh85083868'">xmr</xsl:when>
                    <xsl:when test="$lccn = 'sh85083893'">mer</xsl:when>
                    <xsl:when test="$lccn = 'sh85083909'">apm</xsl:when>
                    <xsl:when test="$lccn = 'sh85083973'">cms</xsl:when>
                    <xsl:when test="$lccn = 'sh85084475'">mtr</xsl:when>
                    <xsl:when test="$lccn = 'sh85084476'">wtm</xsl:when>
                    <xsl:when test="$lccn = 'sh2003005172'">mfs</xsl:when>
                    <xsl:when test="$lccn = 'sh98003618'">gng</xsl:when>
                    <xsl:when test="$lccn = 'sh85084654'">mia</xsl:when>
                    <xsl:when test="$lccn = 'sh85084657'">mpt</xsl:when>
                    <xsl:when test="$lccn = 'sh85084691'">crg</xsl:when>
                    <xsl:when test="$lccn = 'sh85084718'">mic</xsl:when>
                    <xsl:when test="$lccn = 'sh99013592'">mei</xsl:when>
                    <xsl:when test="$lccn = 'sh85085062'">mgi</xsl:when>
                    <xsl:when test="$lccn = 'sh86004912'">sjl</xsl:when>
                    <xsl:when test="$lccn = 'sh86004582'">mxj</xsl:when>
                    <xsl:when test="$lccn = 'sh85085085'">mik</xsl:when>
                    <xsl:when test="$lccn = 'sh85085090'">mjw</xsl:when>
                    <xsl:when test="$lccn = 'sh85085108'">adi</xsl:when>
                    <xsl:when test="$lccn = 'sh98002463'">inm</xsl:when>
                    <xsl:when test="$lccn = 'sh85085475'">min</xsl:when>
                    <xsl:when test="$lccn = 'sh97000387'">mvn</xsl:when>
                    <xsl:when test="$lccn = 'sh85085637'">xmf</xsl:when>
                    <xsl:when test="$lccn = 'sh85085948'">mwl</xsl:when>
                    <xsl:when test="$lccn = 'sh85085988'">tat</xsl:when>
                    <xsl:when test="$lccn = 'sh85085993'">clk</xsl:when>
                    <xsl:when test="$lccn = 'sh85085996'">mpx</xsl:when>
                    <xsl:when test="$lccn = 'sh85085997'">mpx</xsl:when>
                    <xsl:when test="$lccn = 'sh85087476'">miq</xsl:when>
                    <xsl:when test="$lccn = 'sh85086311'">zmq</xsl:when>
                    <xsl:when test="$lccn = 'sh98001334'">mkf</xsl:when>
                    <xsl:when test="$lccn = 'sh92005119'">mux</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003120'">bqz</xsl:when>
                    <xsl:when test="$lccn = 'sh98003413'">mra</xsl:when>
                    <xsl:when test="$lccn = 'sh85086358'">mzw</xsl:when>
                    <xsl:when test="$lccn = 'sh85086366'">mfq</xsl:when>
                    <xsl:when test="$lccn = 'sh85086399'">moy</xsl:when>
                    <xsl:when test="$lccn = 'sh87004817'">mhc</xsl:when>
                    <xsl:when test="$lccn = 'sh85086485'">mhj</xsl:when>
                    <xsl:when test="$lccn = 'sh85086490'">gum</xsl:when>
                    <xsl:when test="$lccn = 'sh85086499'">mov</xsl:when>
                    <xsl:when test="$lccn = 'sh85086502'">moh</xsl:when>
                    <xsl:when test="$lccn = 'sh85086508'">mof</xsl:when>
                    <xsl:when test="$lccn = 'sh87004818'">ign</xsl:when>
                    <xsl:when test="$lccn = 'sh92004816'">mwt</xsl:when>
                    <xsl:when test="$lccn = 'sh85086533'">mkj</xsl:when>
                    <xsl:when test="$lccn = 'sh2003009028'">mkm</xsl:when>
                    <xsl:when test="$lccn = 'sh85086534'">nst</xsl:when>
                    <xsl:when test="$lccn = 'sh85086537'">mdf</xsl:when>
                    <xsl:when test="$lccn = 'sh92001900'">moz</xsl:when>
                    <xsl:when test="$lccn = 'sh85086551'">mol</xsl:when>
                    <xsl:when test="$lccn = 'sh2002004828'">mox</xsl:when>
                    <xsl:when test="$lccn = 'sh85086634'">arn</xsl:when>
                    <xsl:when test="$lccn = 'sh85086666'">mnw</xsl:when>
                    <xsl:when test="$lccn = 'sh85086824'">mon</xsl:when>
                    <xsl:when test="$lccn = 'sh85086816'">lol</xsl:when>
                    <xsl:when test="$lccn = 'sh85086840'">mjg</xsl:when>
                    <xsl:when test="$lccn = 'sh97001837'">moj</xsl:when>
                    <xsl:when test="$lccn = 'sh2004006904'">mnh</xsl:when>
                    <xsl:when test="$lccn = 'sh85086885'">mte</xsl:when>
                    <xsl:when test="$lccn = 'sh85087007'">moe</xsl:when>
                    <xsl:when test="$lccn = 'sh85087085'">mxk</xsl:when>
                    <xsl:when test="$lccn = 'sh85087244'">mos</xsl:when>
                    <xsl:when test="$lccn = 'sh85087184'">mop</xsl:when>
                    <xsl:when test="$lccn = 'sh90005077'">mal</xsl:when>
                    <xsl:when test="$lccn = 'sh85087267'">mzq</xsl:when>
                    <xsl:when test="$lccn = 'sh85087319'">ayo</xsl:when>
                    <xsl:when test="$lccn = 'sh85087320'">mor</xsl:when>
                    <xsl:when test="$lccn = 'sh93004782'">mqn</xsl:when>
                    <xsl:when test="$lccn = 'sh85087406'">mrl</xsl:when>
                    <xsl:when test="$lccn = 'sh85087413'">mgd</xsl:when>
                    <xsl:when test="$lccn = 'sh85087454'">cas</xsl:when>
                    <xsl:when test="$lccn = 'sh92005365'">nmh</xsl:when>
                    <xsl:when test="$lccn = 'sh85087501'">mtt</xsl:when>
                    <xsl:when test="$lccn = 'sh85087556'">mot</xsl:when>
                    <xsl:when test="$lccn = 'sh2004005038'">mlv</xsl:when>
                    <xsl:when test="$lccn = 'sh85087704'">meu</xsl:when>
                    <xsl:when test="$lccn = 'sh97004074'">mqt</xsl:when>
                    <xsl:when test="$lccn = 'sh85006426'">ape</xsl:when>
                    <xsl:when test="$lccn = 'sh85087781'">kpx</xsl:when>
                    <xsl:when test="$lccn = 'sh85088022'">mzp</xsl:when>
                    <xsl:when test="$lccn = 'sh85088210'">mye</xsl:when>
                    <xsl:when test="$lccn = 'sh95007487'">mug</xsl:when>
                    <xsl:when test="$lccn = 'sh85088224'">moa</xsl:when>
                    <xsl:when test="$lccn = 'sh2003010188'">mwd</xsl:when>
                    <xsl:when test="$lccn = 'sh85088260'">muv</xsl:when>
                    <xsl:when test="$lccn = 'sh92004870'">mlp</xsl:when>
                    <xsl:when test="$lccn = 'sh85088289'">bmr</xsl:when>
                    <xsl:when test="$lccn = 'sh85088293'">mwc</xsl:when>
                    <xsl:when test="$lccn = 'sh95003826'">min</xsl:when>
                    <xsl:when test="$lccn = 'sh85088299'">ckb</xsl:when>
                    <xsl:when test="$lccn = 'sh85088303'">mlm</xsl:when>
                    <xsl:when test="$lccn = 'sh97006122'">est</xsl:when>
                    <xsl:when test="$lccn = 'sh85088335'">mpb</xsl:when>
                    <xsl:when test="$lccn = 'sh85088407'">mzm</xsl:when>
                    <xsl:when test="$lccn = 'sh92006093'">mwq</xsl:when>
                    <xsl:when test="$lccn = 'sh87004493'">mnb</xsl:when>
                    <xsl:when test="$lccn = 'sh87007476'">mua</xsl:when>
                    <xsl:when test="$lccn = 'sh94001046'">mnf</xsl:when>
                    <xsl:when test="$lccn = 'sh85088422'">muh</xsl:when>
                    <xsl:when test="$lccn = 'sh85088425'">my</xsl:when>
                    <xsl:when test="$lccn = 'sh94002687'">mhk</xsl:when>
                    <xsl:when test="$lccn = 'sh97008265'">myr</xsl:when>
                    <xsl:when test="$lccn = 'sh85088505'">mnj</xsl:when>
                    <xsl:when test="$lccn = 'sh94000219'">irn</xsl:when>
                    <xsl:when test="$lccn = 'sh85088509'">umu</xsl:when>
                    <xsl:when test="$lccn = 'sh85088518'">mtq</xsl:when>
                    <xsl:when test="$lccn = 'sh92003277'">sur</xsl:when>
                    <xsl:when test="$lccn = 'sh94000203'">myp</xsl:when>
                    <xsl:when test="$lccn = 'sh85088636'">mur</xsl:when>
                    <xsl:when test="$lccn = 'sh85088633'">mwf</xsl:when>
                    <xsl:when test="$lccn = 'sh85088651'">huu</xsl:when>
                    <xsl:when test="$lccn = 'sh94005357'">zmu</xsl:when>
                    <xsl:when test="$lccn = 'sh85088703'">mse</xsl:when>
                    <xsl:when test="$lccn = 'sh85088742'">mug</xsl:when>
                    <xsl:when test="$lccn = 'sh87000662'">mui</xsl:when>
                    <xsl:when test="$lccn = 'sh99002916'">msu</xsl:when>
                    <xsl:when test="$lccn = 'sh85089145'">css</xsl:when>
                    <xsl:when test="$lccn = 'sh85089155'">myw</xsl:when>
                    <xsl:when test="$lccn = 'sh92003278'">sur</xsl:when>
                    <xsl:when test="$lccn = 'sh85089165'">wbh</xsl:when>
                    <xsl:when test="$lccn = 'sh91005993'">sie</xsl:when>
                    <xsl:when test="$lccn = 'sh85089321'">yms</xsl:when>
                    <xsl:when test="$lccn = 'sh86004730'">mzb</xsl:when>
                    <xsl:when test="$lccn = 'sh85089474'">naf</xsl:when>
                    <xsl:when test="$lccn = 'sh98007129'">nfr</xsl:when>
                    <xsl:when test="$lccn = 'sh2002005875'">nca</xsl:when>
                    <xsl:when test="$lccn = 'sh85010670'">nah</xsl:when>
                    <xsl:when test="$lccn = 'sh85089559'">nak</xsl:when>
                    <xsl:when test="$lccn = 'sh93006356'">nss</xsl:when>
                    <xsl:when test="$lccn = 'sh96008986'">nal</xsl:when>
                    <xsl:when test="$lccn = 'sh85089581'">naq</xsl:when>
                    <xsl:when test="$lccn = 'sh00007003'">nmk</xsl:when>
                    <xsl:when test="$lccn = 'sh93009494'">nmq</xsl:when>
                    <xsl:when test="$lccn = 'sh94004161'">nnm</xsl:when>
                    <xsl:when test="$lccn = 'sh85089661'">gld</xsl:when>
                    <xsl:when test="$lccn = 'sh85089665'">nnc</xsl:when>
                    <xsl:when test="$lccn = 'sh91003113'">ncb</xsl:when>
                    <xsl:when test="$lccn = 'sh85089669'">nnb</xsl:when>
                    <xsl:when test="$lccn = 'sh85089671'">kln</xsl:when>
                    <xsl:when test="$lccn = 'sh85089682'">gur</xsl:when>
                    <xsl:when test="$lccn = 'sh92004875'">nnk</xsl:when>
                    <xsl:when test="$lccn = 'sh85089697'">nnt</xsl:when>
                    <xsl:when test="$lccn = 'sh85089786'">npy</xsl:when>
                    <xsl:when test="$lccn = 'sh85089789'">nac</xsl:when>
                    <xsl:when test="$lccn = 'sh85089831'">mof</xsl:when>
                    <xsl:when test="$lccn = 'sh85089865'">nay</xsl:when>
                    <xsl:when test="$lccn = 'sh85089883'">nsk</xsl:when>
                    <xsl:when test="$lccn = 'sh85089930'">ncz</xsl:when>
                    <xsl:when test="$lccn = 'sh97006840'">ntm</xsl:when>
                    <xsl:when test="$lccn = 'sh85090323'">nau</xsl:when>
                    <xsl:when test="$lccn = 'sh85090350'">nav</xsl:when>
                    <xsl:when test="$lccn = 'sh99000092'">nmz</xsl:when>
                    <xsl:when test="$lccn = 'sh85087466'">nbf</xsl:when>
                    <xsl:when test="$lccn = 'sh85090465'">ncu</xsl:when>
                    <xsl:when test="$lccn = 'sh85024233'">ndc</xsl:when>
                    <xsl:when test="$lccn = 'sh85090471'">nbl</xsl:when>
                    <xsl:when test="$lccn = 'sh85090472'">nde</xsl:when>
                    <xsl:when test="$lccn = 'sh2003010198'">djj</xsl:when>
                    <xsl:when test="$lccn = 'sh85090484'">ndo</xsl:when>
                    <xsl:when test="$lccn = 'sh85090486'">nmd</xsl:when>
                    <xsl:when test="$lccn = 'sh2003005810'">ndt</xsl:when>
                    <xsl:when test="$lccn = 'sh86004211'">neg</xsl:when>
                    <xsl:when test="$lccn = 'sh98005031'">nsn</xsl:when>
                    <xsl:when test="$lccn = 'sh85090715'">ijs</xsl:when>
                    <xsl:when test="$lccn = 'sh85090719'">nem</xsl:when>
                    <xsl:when test="$lccn = 'sh85090732'">yrk</xsl:when>
                    <xsl:when test="$lccn = 'sh85090733'">nen</xsl:when>
                    <xsl:when test="$lccn = 'sh90004399'">tld</xsl:when>
                    <xsl:when test="$lccn = 'sh85090833'">nep</xsl:when>
                    <xsl:when test="$lccn = 'sh98004856'">nzs</xsl:when>
                    <xsl:when test="$lccn = 'sh85091532'">new</xsl:when>
                    <xsl:when test="$lccn = 'sh85091650'">nez</xsl:when>
                    <xsl:when test="$lccn = 'sh85091657'">ntj</xsl:when>
                    <xsl:when test="$lccn = 'sh85091658'">nxg</xsl:when>
                    <xsl:when test="$lccn = 'sh85091662'">nju</xsl:when>
                    <xsl:when test="$lccn = 'sh85091661'">nij</xsl:when>
                    <xsl:when test="$lccn = 'sh85091664'">nig</xsl:when>
                    <xsl:when test="$lccn = 'sh2003010163'">djd</xsl:when>
                    <xsl:when test="$lccn = 'sh86004586'">nmc</xsl:when>
                    <xsl:when test="$lccn = 'sh85091666'">nio</xsl:when>
                    <xsl:when test="$lccn = 'sh85091668'">nid</xsl:when>
                    <xsl:when test="$lccn = 'sh92005150'">nam</xsl:when>
                    <xsl:when test="$lccn = 'sh85091670'">ung</xsl:when>
                    <xsl:when test="$lccn = 'sh2003010440'">nbj</xsl:when>
                    <xsl:when test="$lccn = 'sh85091671'">nrl</xsl:when>
                    <xsl:when test="$lccn = 'sh94000075'">ngm</xsl:when>
                    <xsl:when test="$lccn = 'sh92006054'">cnw</xsl:when>
                    <xsl:when test="$lccn = 'sh2002009530'">nxn</xsl:when>
                    <xsl:when test="$lccn = 'sh85091676'">nbm</xsl:when>
                    <xsl:when test="$lccn = 'sh2004003260'">nge</xsl:when>
                    <xsl:when test="$lccn = 'sh97000756'">niy</xsl:when>
                    <xsl:when test="$lccn = 'sh85091682'">ngi</xsl:when>
                    <xsl:when test="$lccn = 'sh99004934'">xkv</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003317'">jgo</xsl:when>
                    <xsl:when test="$lccn = 'sh85091685'">ngc</xsl:when>
                    <xsl:when test="$lccn = 'sh85091687'">nyy</xsl:when>
                    <xsl:when test="$lccn = 'sh96005071'">nuo</xsl:when>
                    <xsl:when test="$lccn = 'sh85091695'">ibo</xsl:when>
                    <xsl:when test="$lccn = 'sh85091680'">nnh</xsl:when>
                    <xsl:when test="$lccn = 'sh88004018'">nhr</xsl:when>
                    <xsl:when test="$lccn = 'sh85091709'">nia</xsl:when>
                    <xsl:when test="$lccn = 'sh97006954'">ncs</xsl:when>
                    <xsl:when test="$lccn = 'sh85091827'">nie</xsl:when>
                    <xsl:when test="$lccn = 'sh85089525'">nll</xsl:when>
                    <xsl:when test="$lccn = 'sh85091929'">nii</xsl:when>
                    <xsl:when test="$lccn = 'sh85091946'">nim</xsl:when>
                    <xsl:when test="$lccn = 'sh85091967'">noe</xsl:when>
                    <xsl:when test="$lccn = 'sh85091970'">nir</xsl:when>
                    <xsl:when test="$lccn = 'sh85092008'">ojc</xsl:when>
                    <xsl:when test="$lccn = 'sh85092018'">kib</xsl:when>
                    <xsl:when test="$lccn = 'sh85092022'">nsz</xsl:when>
                    <xsl:when test="$lccn = 'sh85092031'">ncg</xsl:when>
                    <xsl:when test="$lccn = 'sh85092033'">lut</xsl:when>
                    <xsl:when test="$lccn = 'sh85092100'">niu</xsl:when>
                    <xsl:when test="$lccn = 'sh95007186'">nka</xsl:when>
                    <xsl:when test="$lccn = 'sh85092112'">nko</xsl:when>
                    <xsl:when test="$lccn = 'sh85092159'">njb</xsl:when>
                    <xsl:when test="$lccn = 'sh85092174'">nog</xsl:when>
                    <xsl:when test="$lccn = 'sh85092176'">nkk</xsl:when>
                    <xsl:when test="$lccn = 'sh88000628'">lem</xsl:when>
                    <xsl:when test="$lccn = 'sh85092207'">not</xsl:when>
                    <xsl:when test="$lccn = 'sh00007260'">snf</xsl:when>
                    <xsl:when test="$lccn = 'sh99013636'">nhu</xsl:when>
                    <xsl:when test="$lccn = 'sh85092387'">noo</xsl:when>
                    <xsl:when test="$lccn = 'sh85092437'">nrn</xsl:when>
                    <xsl:when test="$lccn = 'sh00007002'">llp</xsl:when>
                    <xsl:when test="$lccn = 'sh92000448'">str</xsl:when>
                    <xsl:when test="$lccn = 'sh93006492'">kiw</xsl:when>
                    <xsl:when test="$lccn = 'sh85092542'">atv</xsl:when>
                    <xsl:when test="$lccn = 'sh85017967'">buy</xsl:when>
                    <xsl:when test="$lccn = 'sh91001597'">xnn</xsl:when>
                    <xsl:when test="$lccn = 'sh90004360'">kca</xsl:when>
                    <xsl:when test="$lccn = 'sh92003583'">pao</xsl:when>
                    <xsl:when test="$lccn = 'sh92001747'">pej</xsl:when>
                    <xsl:when test="$lccn = 'sh88003813'">rog</xsl:when>
                    <xsl:when test="$lccn = 'sh2004003295'">sme</xsl:when>
                    <xsl:when test="$lccn = 'sh86006663'">nsq</xsl:when>
                    <xsl:when test="$lccn = 'sh85092572'">nso</xsl:when>
                    <xsl:when test="$lccn = 'sh85092574'">nod</xsl:when>
                    <xsl:when test="$lccn = 'sh85092723'">nno</xsl:when>
                    <xsl:when test="$lccn = 'sh85092722'">nor</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003431'">ncf</xsl:when>
                    <xsl:when test="$lccn = 'sh85092825'">nou</xsl:when>
                    <xsl:when test="$lccn = 'sh85092903'">nov</xsl:when>
                    <xsl:when test="$lccn = 'sh85092927'">thp</xsl:when>
                    <xsl:when test="$lccn = 'sh85092929'">nto</xsl:when>
                    <xsl:when test="$lccn = 'sh85092933'">kcn</xsl:when>
                    <xsl:when test="$lccn = 'sh85093181'">nus</xsl:when>
                    <xsl:when test="$lccn = 'sh85093187'">mrq</xsl:when>
                    <xsl:when test="$lccn = 'sh96010309'">nnv</xsl:when>
                    <xsl:when test="$lccn = 'sh85093190'">nkr</xsl:when>
                    <xsl:when test="$lccn = 'sh85093183'">bhw</xsl:when>
                    <xsl:when test="$lccn = 'sh85093279'">nun</xsl:when>
                    <xsl:when test="$lccn = 'sh85093282'">nuy</xsl:when>
                    <xsl:when test="$lccn = 'sh85093295'">xsm</xsl:when>
                    <xsl:when test="$lccn = 'sh85093297'">nup</xsl:when>
                    <xsl:when test="$lccn = 'sh85093487'">nwb</xsl:when>
                    <xsl:when test="$lccn = 'sh86002260'">cbn</xsl:when>
                    <xsl:when test="$lccn = 'sh99014211'">nev</xsl:when>
                    <xsl:when test="$lccn = 'sh00007228'">yly</xsl:when>
                    <xsl:when test="$lccn = 'sh92004202'">now</xsl:when>
                    <xsl:when test="$lccn = 'sh85093490'">nym</xsl:when>
                    <xsl:when test="$lccn = 'sh85093491'">nyk</xsl:when>
                    <xsl:when test="$lccn = 'sh85093493'">nyj</xsl:when>
                    <xsl:when test="$lccn = 'sh85093495'">nna</xsl:when>
                    <xsl:when test="$lccn = 'sh85093498'">nya</xsl:when>
                    <xsl:when test="$lccn = 'sh85093500'">nyn</xsl:when>
                    <xsl:when test="$lccn = 'sh2002004707'">nih</xsl:when>
                    <xsl:when test="$lccn = 'sh2004005416'">nyh</xsl:when>
                    <xsl:when test="$lccn = 'sh85093537'">nyd</xsl:when>
                    <xsl:when test="$lccn = 'sh85093538'">nyo</xsl:when>
                    <xsl:when test="$lccn = 'sh2002002069'">nyv</xsl:when>
                    <xsl:when test="$lccn = 'sh85134170'">nyu</xsl:when>
                    <xsl:when test="$lccn = 'sh85093553'">nzk</xsl:when>
                    <xsl:when test="$lccn = 'sh92001624'">nzb</xsl:when>
                    <xsl:when test="$lccn = 'sh85093556'">nzi</xsl:when>
                    <xsl:when test="$lccn = 'sh97002646'">obo</xsl:when>
                    <xsl:when test="$lccn = 'sh87006565'">ann</xsl:when>
                    <xsl:when test="$lccn = 'sh85093788'">oca</xsl:when>
                    <xsl:when test="$lccn = 'sh85093808'">ile</xsl:when>
                    <xsl:when test="$lccn = 'sh85074607'">oci</xsl:when>
                    <xsl:when test="$lccn = 'sh85094049'">ocu</xsl:when>
                    <xsl:when test="$lccn = 'sh85094115'">odu</xsl:when>
                    <xsl:when test="$lccn = 'sh85094232'">ofo</xsl:when>
                    <xsl:when test="$lccn = 'sh85094235'">pse</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003111'">ogu</xsl:when>
                    <xsl:when test="$lccn = 'sh85094247'">ozn</xsl:when>
                    <xsl:when test="$lccn = 'sh85094425'">xal</xsl:when>
                    <xsl:when test="$lccn = 'sh85024429'">oji</xsl:when>
                    <xsl:when test="$lccn = 'sh85094462'">oka</xsl:when>
                    <xsl:when test="$lccn = 'sh85094486'">okr</xsl:when>
                    <xsl:when test="$lccn = 'sh85094489'">opm</xsl:when>
                    <xsl:when test="$lccn = 'sh86003727'">ulc</xsl:when>
                    <xsl:when test="$lccn = 'sh85094550'">non</xsl:when>
                    <xsl:when test="$lccn = 'sh85094559'">peo</xsl:when>
                    <xsl:when test="$lccn = 'sh85094563'">osx</xsl:when>
                    <xsl:when test="$lccn = 'sh85094570'">otk</xsl:when>
                    <xsl:when test="$lccn = 'sh85094637'">ong</xsl:when>
                    <xsl:when test="$lccn = 'sh85094638'">olo</xsl:when>
                    <xsl:when test="$lccn = 'sh96003718'">plo</xsl:when>
                    <xsl:when test="$lccn = 'sh85094669'">oma</xsl:when>
                    <xsl:when test="$lccn = 'sh85094677'">oml</xsl:when>
                    <xsl:when test="$lccn = 'sh85094715'">ona</xsl:when>
                    <xsl:when test="$lccn = 'sh85094781'">one</xsl:when>
                    <xsl:when test="$lccn = 'sh89006577'">oon</xsl:when>
                    <xsl:when test="$lccn = 'sh92005781'">ons</xsl:when>
                    <xsl:when test="$lccn = 'sh85094817'">ono</xsl:when>
                    <xsl:when test="$lccn = 'sh88001780'">hei</xsl:when>
                    <xsl:when test="$lccn = 'sh85094865'">opt</xsl:when>
                    <xsl:when test="$lccn = 'sh85095408'">mvf</xsl:when>
                    <xsl:when test="$lccn = 'sh85033287'">ore</xsl:when>
                    <xsl:when test="$lccn = 'sh85095667'">ori</xsl:when>
                    <xsl:when test="$lccn = 'sh2001001246'">orc</xsl:when>
                    <xsl:when test="$lccn = 'sh98003899'">orz</xsl:when>
                    <xsl:when test="$lccn = 'sh87000267'">oru</xsl:when>
                    <xsl:when test="$lccn = 'sh85095733'">oac</xsl:when>
                    <xsl:when test="$lccn = 'sh85095741'">oaa</xsl:when>
                    <xsl:when test="$lccn = 'sh85095742'">okv</xsl:when>
                    <xsl:when test="$lccn = 'sh85095743'">oro</xsl:when>
                    <xsl:when test="$lccn = 'sh85052810'">orm</xsl:when>
                    <xsl:when test="$lccn = 'sh93007635'">enw</xsl:when>
                    <xsl:when test="$lccn = 'sh85095736'">orh</xsl:when>
                    <xsl:when test="$lccn = 'sh89006670'">ury</xsl:when>
                    <xsl:when test="$lccn = 'sh85095864'">osa</xsl:when>
                    <xsl:when test="$lccn = 'sh2001007071'">osc</xsl:when>
                    <xsl:when test="$lccn = 'sh87003107'">osi</xsl:when>
                    <xsl:when test="$lccn = 'sh85095945'">oss</xsl:when>
                    <xsl:when test="$lccn = 'sh93004804'">otd</xsl:when>
                    <xsl:when test="$lccn = 'sh85096041'">iow</xsl:when>
                    <xsl:when test="$lccn = 'sh85096089'">otw</xsl:when>
                    <xsl:when test="$lccn = 'sh90004184'">oua</xsl:when>
                    <xsl:when test="$lccn = 'sh96007809'">chz</xsl:when>
                    <xsl:when test="$lccn = 'sh85096409'">pma</xsl:when>
                    <xsl:when test="$lccn = 'sh90002818'">ems</xsl:when>
                    <xsl:when test="$lccn = 'sh85096538'">pac</xsl:when>
                    <xsl:when test="$lccn = 'sh87000287'">adi</xsl:when>
                    <xsl:when test="$lccn = 'sh85096544'">dip</xsl:when>
                    <xsl:when test="$lccn = 'sh87007477'">pbi</xsl:when>
                    <xsl:when test="$lccn = 'sh85096570'">pbb</xsl:when>
                    <xsl:when test="$lccn = 'sh85096602'">pal</xsl:when>
                    <xsl:when test="$lccn = 'sh85096605'">new</xsl:when>
                    <xsl:when test="$lccn = 'sh85096611'">pri</xsl:when>
                    <xsl:when test="$lccn = 'sh98004672'">adi</xsl:when>
                    <xsl:when test="$lccn = 'sh91000630'">ppi</xsl:when>
                    <xsl:when test="$lccn = 'sh85096867'">pck</xsl:when>
                    <xsl:when test="$lccn = 'sh88000337'">pwn</xsl:when>
                    <xsl:when test="$lccn = 'sh95008141'">pav</xsl:when>
                    <xsl:when test="$lccn = 'sh93003391'">pku</xsl:when>
                    <xsl:when test="$lccn = 'sh85096908'">gfk</xsl:when>
                    <xsl:when test="$lccn = 'sh85096957'">plq</xsl:when>
                    <xsl:when test="$lccn = 'sh86004813'">kpy</xsl:when>
                    <xsl:when test="$lccn = 'sh85096982'">pau</xsl:when>
                    <xsl:when test="$lccn = 'sh85097195'">pli</xsl:when>
                    <xsl:when test="$lccn = 'sh85097199'">plu</xsl:when>
                    <xsl:when test="$lccn = 'sh85097279'">tav</xsl:when>
                    <xsl:when test="$lccn = 'sh95010211'">pmf</xsl:when>
                    <xsl:when test="$lccn = 'sh85097283'">pam</xsl:when>
                    <xsl:when test="$lccn = 'sh89003728'">par</xsl:when>
                    <xsl:when test="$lccn = 'sh85097353'">pbh</xsl:when>
                    <xsl:when test="$lccn = 'sh85097359'">mpx</xsl:when>
                    <xsl:when test="$lccn = 'sh85097431'">pag</xsl:when>
                    <xsl:when test="$lccn = 'sh91002728'">slm</xsl:when>
                    <xsl:when test="$lccn = 'sh85097435'">pbr</xsl:when>
                    <xsl:when test="$lccn = 'sh85097451'">pan</xsl:when>
                    <xsl:when test="$lccn = 'sh85097472'">pno</xsl:when>
                    <xsl:when test="$lccn = 'sh90004824'">pbb</xsl:when>
                    <xsl:when test="$lccn = 'sh85097529'">zpw</xsl:when>
                    <xsl:when test="$lccn = 'sh92004591'">agp</xsl:when>
                    <xsl:when test="$lccn = 'sh88007185'">pbg</xsl:when>
                    <xsl:when test="$lccn = 'sh85097979'">pcj</xsl:when>
                    <xsl:when test="$lccn = 'sh85098024'">pab</xsl:when>
                    <xsl:when test="$lccn = 'sh85098015'">pah</xsl:when>
                    <xsl:when test="$lccn = 'sh85098093'">pci</xsl:when>
                    <xsl:when test="$lccn = 'sh85098311'">guj</xsl:when>
                    <xsl:when test="$lccn = 'sh85098341'">xpr</xsl:when>
                    <xsl:when test="$lccn = 'sh91003036'">gbm</xsl:when>
                    <xsl:when test="$lccn = 'sh85098421'">paq</xsl:when>
                    <xsl:when test="$lccn = 'sh2002009985'">sig</xsl:when>
                    <xsl:when test="$lccn = 'sh2002009965'">lbx</xsl:when>
                    <xsl:when test="$lccn = 'sh87001067'">zlm</xsl:when>
                    <xsl:when test="$lccn = 'sh85098496'">pqm</xsl:when>
                    <xsl:when test="$lccn = 'sh85098627'">pbc</xsl:when>
                    <xsl:when test="$lccn = 'sh85098666'">ptp</xsl:when>
                    <xsl:when test="$lccn = 'sh86004221'">lae</xsl:when>
                    <xsl:when test="$lccn = 'sh87000798'">mfa</xsl:when>
                    <xsl:when test="$lccn = 'sh85098831'">psm</xsl:when>
                    <xsl:when test="$lccn = 'sh85098882'">pwa</xsl:when>
                    <xsl:when test="$lccn = 'sh85098883'">bns</xsl:when>
                    <xsl:when test="$lccn = 'sh85098891'">paw</xsl:when>
                    <xsl:when test="$lccn = 'sh93006448'">ped</xsl:when>
                    <xsl:when test="$lccn = 'sh2004009499'">uun</xsl:when>
                    <xsl:when test="$lccn = 'sh85099015'">pcb</xsl:when>
                    <xsl:when test="$lccn = 'sh85099239'">arn</xsl:when>
                    <xsl:when test="$lccn = 'sh98004642'">pel</xsl:when>
                    <xsl:when test="$lccn = 'sh2004007459'">ppp</xsl:when>
                    <xsl:when test="$lccn = 'sh85099337'">aoc</xsl:when>
                    <xsl:when test="$lccn = 'sh85099380'">pem</xsl:when>
                    <xsl:when test="$lccn = 'sh2004003277'">mui</xsl:when>
                    <xsl:when test="$lccn = 'sh85099395'">peg</xsl:when>
                    <xsl:when test="$lccn = 'sh85099551'">pdc</xsl:when>
                    <xsl:when test="$lccn = 'sh85099568'">aaq</xsl:when>
                    <xsl:when test="$lccn = 'sh2002001995'">pea</xsl:when>
                    <xsl:when test="$lccn = 'sh85100008'">pip</xsl:when>
                    <xsl:when test="$lccn = 'sh85100070'">fas</xsl:when>
                    <xsl:when test="$lccn = 'sh85100313'">pex</xsl:when>
                    <xsl:when test="$lccn = 'sh85100567'">phl</xsl:when>
                    <xsl:when test="$lccn = 'sh85101028'">phn</xsl:when>
                    <xsl:when test="$lccn = 'sh85101048'">nph</xsl:when>
                    <xsl:when test="$lccn = 'sh85101444'">xpg</xsl:when>
                    <xsl:when test="$lccn = 'sh85101462'">pht</xsl:when>
                    <xsl:when test="$lccn = 'sh87007986'">pio</xsl:when>
                    <xsl:when test="$lccn = 'sh2002011288'">pid</xsl:when>
                    <xsl:when test="$lccn = 'sh85102115'">plg</xsl:when>
                    <xsl:when test="$lccn = 'sh00007215'">piv</xsl:when>
                    <xsl:when test="$lccn = 'sh86004434'">pia</xsl:when>
                    <xsl:when test="$lccn = 'sh85102174'">ood</xsl:when>
                    <xsl:when test="$lccn = 'sh2004007041'">pnn</xsl:when>
                    <xsl:when test="$lccn = 'sh94005378'">pif</xsl:when>
                    <xsl:when test="$lccn = 'sh85102281'">piu</xsl:when>
                    <xsl:when test="$lccn = 'sh99013637'">pny</xsl:when>
                    <xsl:when test="$lccn = 'sh85102410'">ppl</xsl:when>
                    <xsl:when test="$lccn = 'sh94005839'">myp</xsl:when>
                    <xsl:when test="$lccn = 'sh92005242'">pir</xsl:when>
                    <xsl:when test="$lccn = 'sh85102439'">pie</xsl:when>
                    <xsl:when test="$lccn = 'sh85102488'">pih</xsl:when>
                    <xsl:when test="$lccn = 'sh85102504'">pjt</xsl:when>
                    <xsl:when test="$lccn = 'sh2003005574'">pit</xsl:when>
                    <xsl:when test="$lccn = 'sh86006664'">pmw</xsl:when>
                    <xsl:when test="$lccn = 'sh85103647'">npo</xsl:when>
                    <xsl:when test="$lccn = 'sh85103902'">poy</xsl:when>
                    <xsl:when test="$lccn = 'sh85103978'">pox</xsl:when>
                    <xsl:when test="$lccn = 'sh85104296'">pol</xsl:when>
                    <xsl:when test="$lccn = 'sh85104776'">pon</xsl:when>
                    <xsl:when test="$lccn = 'sh93006230'">pns</xsl:when>
                    <xsl:when test="$lccn = 'sh85105054'">psw</xsl:when>
                    <xsl:when test="$lccn = 'sh85105344'">por</xsl:when>
                    <xsl:when test="$lccn = 'sh97001480'">psr</xsl:when>
                    <xsl:when test="$lccn = 'sh85105670'">pot</xsl:when>
                    <xsl:when test="$lccn = 'sh85105681'">phr</xsl:when>
                    <xsl:when test="$lccn = 'sh96007788'">pwr</xsl:when>
                    <xsl:when test="$lccn = 'sh97008458'">pim</xsl:when>
                    <xsl:when test="$lccn = 'sh85107831'">pro</xsl:when>
                    <xsl:when test="$lccn = 'sh85108100'">prg</xsl:when>
                    <xsl:when test="$lccn = 'sh85097281'">pue</xsl:when>
                    <xsl:when test="$lccn = 'sh85108980'">fuf</xsl:when>
                    <xsl:when test="$lccn = 'sh85109048'">puw</xsl:when>
                    <xsl:when test="$lccn = 'sh85109110'">xpu</xsl:when>
                    <xsl:when test="$lccn = 'sh85109134'">puu</xsl:when>
                    <xsl:when test="$lccn = 'sh92003693'">puo</xsl:when>
                    <xsl:when test="$lccn = 'sh85109155'">puq</xsl:when>
                    <xsl:when test="$lccn = 'sh85109158'">iar</xsl:when>
                    <xsl:when test="$lccn = 'sh92002285'">prx</xsl:when>
                    <xsl:when test="$lccn = 'sh85109221'">pad</xsl:when>
                    <xsl:when test="$lccn = 'sh85109230'">pus</xsl:when>
                    <xsl:when test="$lccn = 'sh85109404'">hae</xsl:when>
                    <xsl:when test="$lccn = 'sh85109472'">ahg</xsl:when>
                    <xsl:when test="$lccn = 'sh2002009969'">fcs</xsl:when>
                    <xsl:when test="$lccn = 'sh85109790'">que</xsl:when>
                    <xsl:when test="$lccn = 'sh99004393'">qya</xsl:when>
                    <xsl:when test="$lccn = 'sh85109853'">qui</xsl:when>
                    <xsl:when test="$lccn = 'sh85109872'">qun</xsl:when>
                    <xsl:when test="$lccn = 'sh85110110'">pim</xsl:when>
                    <xsl:when test="$lccn = 'sh85110213'">rah</xsl:when>
                    <xsl:when test="$lccn = 'sh85110329'">rad</xsl:when>
                    <xsl:when test="$lccn = 'sh87000364'">xrr</xsl:when>
                    <xsl:when test="$lccn = 'sh85110829'">roh</xsl:when>
                    <xsl:when test="$lccn = 'sh96000785'">aph</xsl:when>
                    <xsl:when test="$lccn = 'sh85111241'">raj</xsl:when>
                    <xsl:when test="$lccn = 'sh85111251'">rjs</xsl:when>
                    <xsl:when test="$lccn = 'sh91001628'">rma</xsl:when>
                    <xsl:when test="$lccn = 'sh87007478'">rai</xsl:when>
                    <xsl:when test="$lccn = 'sh99005132'">ljp</xsl:when>
                    <xsl:when test="$lccn = 'sh90005384'">rgk</xsl:when>
                    <xsl:when test="$lccn = 'sh92005014'">rah</xsl:when>
                    <xsl:when test="$lccn = 'sh2004000918'">lag</xsl:when>
                    <xsl:when test="$lccn = 'sh85111393'">rao</xsl:when>
                    <xsl:when test="$lccn = 'sh85111401'">rap</xsl:when>
                    <xsl:when test="$lccn = 'sh85111471'">rar</xsl:when>
                    <xsl:when test="$lccn = 'sh99004097'">rth</xsl:when>
                    <xsl:when test="$lccn = 'sh92005614'">rwo</xsl:when>
                    <xsl:when test="$lccn = 'sh92005354'">raw</xsl:when>
                    <xsl:when test="$lccn = 'sh87003621'">mui</xsl:when>
                    <xsl:when test="$lccn = 'sh86005267'">rej</xsl:when>
                    <xsl:when test="$lccn = 'sh2003010420'">rmb</xsl:when>
                    <xsl:when test="$lccn = 'sh93002874'">reb</xsl:when>
                    <xsl:when test="$lccn = 'sh85112833'">rel</xsl:when>
                    <xsl:when test="$lccn = 'sh85112848'">ren</xsl:when>
                    <xsl:when test="$lccn = 'sh85112851'">nre</xsl:when>
                    <xsl:when test="$lccn = 'sh85112857'">mnv</xsl:when>
                    <xsl:when test="$lccn = 'sh85113139'">rgr</xsl:when>
                    <xsl:when test="$lccn = 'sh92005359'">ril</xsl:when>
                    <xsl:when test="$lccn = 'sh85114051'">rif</xsl:when>
                    <xsl:when test="$lccn = 'sh85114100'">rkb</xsl:when>
                    <xsl:when test="$lccn = 'sh85114208'">rit</xsl:when>
                    <xsl:when test="$lccn = 'sh92000635'">rmm</xsl:when>
                    <xsl:when test="$lccn = 'sh85115084'">rom</xsl:when>
                    <xsl:when test="$lccn = 'sh85115036'">ron</xsl:when>
                    <xsl:when test="$lccn = 'sh85115224'">cla</xsl:when>
                    <xsl:when test="$lccn = 'sh85115307'">rng</xsl:when>
                    <xsl:when test="$lccn = 'sh85115308'">nbu</xsl:when>
                    <xsl:when test="$lccn = 'sh85115394'">rro</xsl:when>
                    <xsl:when test="$lccn = 'sh85115516'">rgu</xsl:when>
                    <xsl:when test="$lccn = 'sh85115504'">roo</xsl:when>
                    <xsl:when test="$lccn = 'sh85115520'">rtm</xsl:when>
                    <xsl:when test="$lccn = 'sh85115558'">rug</xsl:when>
                    <xsl:when test="$lccn = 'sh96005086'">scb</xsl:when>
                    <xsl:when test="$lccn = 'sh96000932'">bwg</xsl:when>
                    <xsl:when test="$lccn = 'sh85115846'">run</xsl:when>
                    <xsl:when test="$lccn = 'sh91004875'">rou</xsl:when>
                    <xsl:when test="$lccn = 'sh85115971'">rus</xsl:when>
                    <xsl:when test="$lccn = 'sh85116103'">rut</xsl:when>
                    <xsl:when test="$lccn = 'sh85116105'">rnd</xsl:when>
                    <xsl:when test="$lccn = 'sh85116157'">apb</xsl:when>
                    <xsl:when test="$lccn = 'sh92000446'">str</xsl:when>
                    <xsl:when test="$lccn = 'sh98000731'">xsa</xsl:when>
                    <xsl:when test="$lccn = 'sh93002530'">spy</xsl:when>
                    <xsl:when test="$lccn = 'sh85116186'">auc</xsl:when>
                    <xsl:when test="$lccn = 'sh85116194'">srl</xsl:when>
                    <xsl:when test="$lccn = 'sh99010735'">quv</xsl:when>
                    <xsl:when test="$lccn = 'sh85116407'">sck</xsl:when>
                    <xsl:when test="$lccn = 'sh92003336'">skb</xsl:when>
                    <xsl:when test="$lccn = 'sh2002011338'">sbk</xsl:when>
                    <xsl:when test="$lccn = 'sh85116474'">kki</xsl:when>
                    <xsl:when test="$lccn = 'sh85116503'">cop</xsl:when>
                    <xsl:when test="$lccn = 'sh85116507'">ssy</xsl:when>
                    <xsl:when test="$lccn = 'sh89003354'">saj</xsl:when>
                    <xsl:when test="$lccn = 'sh2002007163'">xsy</xsl:when>
                    <xsl:when test="$lccn = 'sh85116653'">skg</xsl:when>
                    <xsl:when test="$lccn = 'sh85116658'">skt</xsl:when>
                    <xsl:when test="$lccn = 'sh85116659'">sku</xsl:when>
                    <xsl:when test="$lccn = 'sh86004299'">slx</xsl:when>
                    <xsl:when test="$lccn = 'sh85116698'">slr</xsl:when>
                    <xsl:when test="$lccn = 'sh85116761'">sln</xsl:when>
                    <xsl:when test="$lccn = 'sh85116806'">sbe</xsl:when>
                    <xsl:when test="$lccn = 'sh86006784'">ssb</xsl:when>
                    <xsl:when test="$lccn = 'sh85116991'">sam</xsl:when>
                    <xsl:when test="$lccn = 'sh2004001950'">smp</xsl:when>
                    <xsl:when test="$lccn = 'sh85117011'">ori</xsl:when>
                    <xsl:when test="$lccn = 'sh93002719'">zlm</xsl:when>
                    <xsl:when test="$lccn = 'sh89004656'">saq</xsl:when>
                    <xsl:when test="$lccn = 'sh85074670'">raq</xsl:when>
                    <xsl:when test="$lccn = 'sh85117030'">smq</xsl:when>
                    <xsl:when test="$lccn = 'sh85117034'">smo</xsl:when>
                    <xsl:when test="$lccn = 'sh85117218'">sad</xsl:when>
                    <xsl:when test="$lccn = 'sh85117262'">sng</xsl:when>
                    <xsl:when test="$lccn = 'sh85117264'">snl</xsl:when>
                    <xsl:when test="$lccn = 'sh90002897'">sxn</xsl:when>
                    <xsl:when test="$lccn = 'sh85117265'">sag</xsl:when>
                    <xsl:when test="$lccn = 'sh85117267'">nsa</xsl:when>
                    <xsl:when test="$lccn = 'sh00008823'">snq</xsl:when>
                    <xsl:when test="$lccn = 'sh00008825'">sbp</xsl:when>
                    <xsl:when test="$lccn = 'sh85117331'">san</xsl:when>
                    <xsl:when test="$lccn = 'sh85117393'">sat</xsl:when>
                    <xsl:when test="$lccn = 'sh85117399'">dak</xsl:when>
                    <xsl:when test="$lccn = 'sh85117419'">any</xsl:when>
                    <xsl:when test="$lccn = 'sh92004555'">sps</xsl:when>
                    <xsl:when test="$lccn = 'sh99014218'">spu</xsl:when>
                    <xsl:when test="$lccn = 'sh86004587'">sre</xsl:when>
                    <xsl:when test="$lccn = 'sh85117480'">srm</xsl:when>
                    <xsl:when test="$lccn = 'sh88007674'">mbs</xsl:when>
                    <xsl:when test="$lccn = 'sh85117551'">srd</xsl:when>
                    <xsl:when test="$lccn = 'sh85117566'">srh</xsl:when>
                    <xsl:when test="$lccn = 'sh85117591'">srs</xsl:when>
                    <xsl:when test="$lccn = 'sh85117594'">uzn</xsl:when>
                    <xsl:when test="$lccn = 'sh85117607'">sas</xsl:when>
                    <xsl:when test="$lccn = 'sh85117723'">psu</xsl:when>
                    <xsl:when test="$lccn = 'sh85117724'">saz</xsl:when>
                    <xsl:when test="$lccn = 'sh91004504'">szw</xsl:when>
                    <xsl:when test="$lccn = 'sh2002006641'">swr</xsl:when>
                    <xsl:when test="$lccn = 'sh00005131'">saw</xsl:when>
                    <xsl:when test="$lccn = 'sh87007479'">gbf</xsl:when>
                    <xsl:when test="$lccn = 'sh87001682'">hvn</xsl:when>
                    <xsl:when test="$lccn = 'sh96003716'">pos</xsl:when>
                    <xsl:when test="$lccn = 'sh85118883'">sco</xsl:when>
                    <xsl:when test="$lccn = 'sh85057897'">gul</xsl:when>
                    <xsl:when test="$lccn = 'sh85119522'">sec</xsl:when>
                    <xsl:when test="$lccn = 'sh91003734'">sey</xsl:when>
                    <xsl:when test="$lccn = 'sh85119488'">sed</xsl:when>
                    <xsl:when test="$lccn = 'sh87001722'">trv</xsl:when>
                    <xsl:when test="$lccn = 'sh91002064'">sek</xsl:when>
                    <xsl:when test="$lccn = 'sh85119706'">spl</xsl:when>
                    <xsl:when test="$lccn = 'sh85119814'">sel</xsl:when>
                    <xsl:when test="$lccn = 'sh85119863'">nsm</xsl:when>
                    <xsl:when test="$lccn = 'sh90006164'">sea</xsl:when>
                    <xsl:when test="$lccn = 'sh93002099'">kns</xsl:when>
                    <xsl:when test="$lccn = 'sh85119879'">sos</xsl:when>
                    <xsl:when test="$lccn = 'sh2003006251'">sza</xsl:when>
                    <xsl:when test="$lccn = 'sh85119885'">pse</xsl:when>
                    <xsl:when test="$lccn = 'sh85119942'">mus</xsl:when>
                    <xsl:when test="$lccn = 'sh85119980'">seh</xsl:when>
                    <xsl:when test="$lccn = 'sh85120069'">sef</xsl:when>
                    <xsl:when test="$lccn = 'sh85119995'">see</xsl:when>
                    <xsl:when test="$lccn = 'sh85120021'">nse</xsl:when>
                    <xsl:when test="$lccn = 'sh85120060'">set</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003127'">afu</xsl:when>
                    <xsl:when test="$lccn = 'sh85120159'">pse</xsl:when>
                    <xsl:when test="$lccn = 'sh00003109'">srp</xsl:when>
                    <xsl:when test="$lccn = 'sh85120199'">hbs</xsl:when>
                    <xsl:when test="$lccn = 'sh85120213'">srr</xsl:when>
                    <xsl:when test="$lccn = 'sh85120224'">sei</xsl:when>
                    <xsl:when test="$lccn = 'sh99005133'">kkx</xsl:when>
                    <xsl:when test="$lccn = 'sh85044987'">est</xsl:when>
                    <xsl:when test="$lccn = 'sh85120762'">ksw</xsl:when>
                    <xsl:when test="$lccn = 'sh85121089'">ksb</xsl:when>
                    <xsl:when test="$lccn = 'sh85121100'">shn</xsl:when>
                    <xsl:when test="$lccn = 'sh85121128'">mcd</xsl:when>
                    <xsl:when test="$lccn = 'sh85121159'">sht</xsl:when>
                    <xsl:when test="$lccn = 'sh85121165'">shv</xsl:when>
                    <xsl:when test="$lccn = 'sh85121179'">sjw</xsl:when>
                    <xsl:when test="$lccn = 'sh85121269'">swv</xsl:when>
                    <xsl:when test="$lccn = 'sh90002173'">bun</xsl:when>
                    <xsl:when test="$lccn = 'sh91004842'">sdp</xsl:when>
                    <xsl:when test="$lccn = 'sh85121374'">xsr</xsl:when>
                    <xsl:when test="$lccn = 'sh85121389'">shr</xsl:when>
                    <xsl:when test="$lccn = 'sh85121439'">jbn</xsl:when>
                    <xsl:when test="$lccn = 'sh85121441'">shk</xsl:when>
                    <xsl:when test="$lccn = 'sh95007219'">swb</xsl:when>
                    <xsl:when test="$lccn = 'sh85121473'">scl</xsl:when>
                    <xsl:when test="$lccn = 'sh85122956'">shp</xsl:when>
                    <xsl:when test="$lccn = 'sh85121756'">sna</xsl:when>
                    <xsl:when test="$lccn = 'sh85121786'">cjs</xsl:when>
                    <xsl:when test="$lccn = 'sh85122081'">shh</xsl:when>
                    <xsl:when test="$lccn = 'sh85070559'">jiv</xsl:when>
                    <xsl:when test="$lccn = 'sh85122160'">sgh</xsl:when>
                    <xsl:when test="$lccn = 'sh85122171'">shs</xsl:when>
                    <xsl:when test="$lccn = 'sh85122195'">snp</xsl:when>
                    <xsl:when test="$lccn = 'sh86007738'">nco</xsl:when>
                    <xsl:when test="$lccn = 'sh86007875'">cui</xsl:when>
                    <xsl:when test="$lccn = 'sh85122306'">sid</xsl:when>
                    <xsl:when test="$lccn = 'sh85104898'">poi</xsl:when>
                    <xsl:when test="$lccn = 'sh85122384'">lew</xsl:when>
                    <xsl:when test="$lccn = 'sh92001382'">ski</xsl:when>
                    <xsl:when test="$lccn = 'sh85122456'">bla</xsl:when>
                    <xsl:when test="$lccn = 'sh00008820'">mvz</xsl:when>
                    <xsl:when test="$lccn = 'sh85122711'">bts</xsl:when>
                    <xsl:when test="$lccn = 'sh85122717'">smr</xsl:when>
                    <xsl:when test="$lccn = 'sh85122756'">smt</xsl:when>
                    <xsl:when test="$lccn = 'sh93006371'">snc</xsl:when>
                    <xsl:when test="$lccn = 'sh98002387'">liw</xsl:when>
                    <xsl:when test="$lccn = 'sh2004001662'">sjn</xsl:when>
                    <xsl:when test="$lccn = 'sh85122803'">snd</xsl:when>
                    <xsl:when test="$lccn = 'sh85122876'">sin</xsl:when>
                    <xsl:when test="$lccn = 'sh93006287'">xsi</xsl:when>
                    <xsl:when test="$lccn = 'sh89001275'">snn</xsl:when>
                    <xsl:when test="$lccn = 'sh00007334'">qum</xsl:when>
                    <xsl:when test="$lccn = 'sh85121670'">swj</xsl:when>
                    <xsl:when test="$lccn = 'sh85122964'">skr</xsl:when>
                    <xsl:when test="$lccn = 'sh89005564'">skr</xsl:when>
                    <xsl:when test="$lccn = 'sh85122966'">skr</xsl:when>
                    <xsl:when test="$lccn = 'sh85122981'">sri</xsl:when>
                    <xsl:when test="$lccn = 'sh2001004741'">ysr</xsl:when>
                    <xsl:when test="$lccn = 'sh85122984'">srx</xsl:when>
                    <xsl:when test="$lccn = 'sh85122986'">ssd</xsl:when>
                    <xsl:when test="$lccn = 'sh85122995'">sld</xsl:when>
                    <xsl:when test="$lccn = 'sh85123000'">sso</xsl:when>
                    <xsl:when test="$lccn = 'sh85123047'">sis</xsl:when>
                    <xsl:when test="$lccn = 'sh85123060'">siz</xsl:when>
                    <xsl:when test="$lccn = 'sh85123061'">siw</xsl:when>
                    <xsl:when test="$lccn = 'sh85123074'">csy</xsl:when>
                    <xsl:when test="$lccn = 'sh99010327'">sms</xsl:when>
                    <xsl:when test="$lccn = 'sh2004005039'">skv</xsl:when>
                    <xsl:when test="$lccn = 'sh85123476'">slk</xsl:when>
                    <xsl:when test="$lccn = 'sh85123525'">slv</xsl:when>
                    <xsl:when test="$lccn = 'sh85123541'">csb</xsl:when>
                    <xsl:when test="$lccn = 'sh85123761'">sno</xsl:when>
                    <xsl:when test="$lccn = 'sh98003392'">teu</xsl:when>
                    <xsl:when test="$lccn = 'sh89006661'">sob</xsl:when>
                    <xsl:when test="$lccn = 'sh85123835'">tlv</xsl:when>
                    <xsl:when test="$lccn = 'sh85124302'">xog</xsl:when>
                    <xsl:when test="$lccn = 'sh85124307'">sog</xsl:when>
                    <xsl:when test="$lccn = 'sh85124475'">sqt</xsl:when>
                    <xsl:when test="$lccn = 'sh85124662'">sle</xsl:when>
                    <xsl:when test="$lccn = 'sh85124716'">evn</xsl:when>
                    <xsl:when test="$lccn = 'sh85124757'">som</xsl:when>
                    <xsl:when test="$lccn = 'sh85124790'">tbz</xsl:when>
                    <xsl:when test="$lccn = 'sh85125037'">sop</xsl:when>
                    <xsl:when test="$lccn = 'sh85125227'">snk</xsl:when>
                    <xsl:when test="$lccn = 'sh85117749'">srb</xsl:when>
                    <xsl:when test="$lccn = 'sh85125337'">kle</xsl:when>
                    <xsl:when test="$lccn = 'sh85125343'">sot</xsl:when>
                    <xsl:when test="$lccn = 'sh2003000246'">sfs</xsl:when>
                    <xsl:when test="$lccn = 'sh00007004'">erk</xsl:when>
                    <xsl:when test="$lccn = 'sh85104768'">pom</xsl:when>
                    <xsl:when test="$lccn = 'sh92004882'">aoj</xsl:when>
                    <xsl:when test="$lccn = 'sh88005110'">bkb</xsl:when>
                    <xsl:when test="$lccn = 'sh88006271'">ksc</xsl:when>
                    <xsl:when test="$lccn = 'sh89006211'">kca</xsl:when>
                    <xsl:when test="$lccn = 'sh85086481'">mif</xsl:when>
                    <xsl:when test="$lccn = 'sh85096875'">ute</xsl:when>
                    <xsl:when test="$lccn = 'sh89006381'">sma</xsl:when>
                    <xsl:when test="$lccn = 'sh86007781'">laa</xsl:when>
                    <xsl:when test="$lccn = 'sh85125668'">sou</xsl:when>
                    <xsl:when test="$lccn = 'sh2003002048'">tce</xsl:when>
                    <xsl:when test="$lccn = 'sh85126261'">spa</xsl:when>
                    <xsl:when test="$lccn = 'sh97007587'">ssp</xsl:when>
                    <xsl:when test="$lccn = 'sh92001384'">spo</xsl:when>
                    <xsl:when test="$lccn = 'sh85127105'">squ</xsl:when>
                    <xsl:when test="$lccn = 'sh85127122'">srn</xsl:when>
                    <xsl:when test="$lccn = 'sh85127125'">kpm</xsl:when>
                    <xsl:when test="$lccn = 'sh85127288'">hur</xsl:when>
                    <xsl:when test="$lccn = 'sh85128243'">srp</xsl:when>
                    <xsl:when test="$lccn = 'sh85129399'">swp</xsl:when>
                    <xsl:when test="$lccn = 'sh85129423'">sbs</xsl:when>
                    <xsl:when test="$lccn = 'sh85129627'">sue</xsl:when>
                    <xsl:when test="$lccn = 'sh85129741'">swi</xsl:when>
                    <xsl:when test="$lccn = 'sh85130302'">pko</xsl:when>
                    <xsl:when test="$lccn = 'sh85130312'">sub</xsl:when>
                    <xsl:when test="$lccn = 'sh85130311'">suk</xsl:when>
                    <xsl:when test="$lccn = 'sh92004890'">sua</xsl:when>
                    <xsl:when test="$lccn = 'sh87000093'">srg</xsl:when>
                    <xsl:when test="$lccn = 'sh85130400'">tsg</xsl:when>
                    <xsl:when test="$lccn = 'sh92005963'">suv</xsl:when>
                    <xsl:when test="$lccn = 'sh86007872'">smw</xsl:when>
                    <xsl:when test="$lccn = 'sh85130413'">sux</xsl:when>
                    <xsl:when test="$lccn = 'sh85130456'">sum</xsl:when>
                    <xsl:when test="$lccn = 'sh85130508'">sun</xsl:when>
                    <xsl:when test="$lccn = 'sh85130567'">suz</xsl:when>
                    <xsl:when test="$lccn = 'sh94004940'">spp</xsl:when>
                    <xsl:when test="$lccn = 'sh92006485'">squ</xsl:when>
                    <xsl:when test="$lccn = 'sh85130823'">hns</xsl:when>
                    <xsl:when test="$lccn = 'sh92004893'">sgz</xsl:when>
                    <xsl:when test="$lccn = 'sh99003683'">sqn</xsl:when>
                    <xsl:when test="$lccn = 'sh85130905'">sus</xsl:when>
                    <xsl:when test="$lccn = 'sh86006787'">swu</xsl:when>
                    <xsl:when test="$lccn = 'sh85130933'">sva</xsl:when>
                    <xsl:when test="$lccn = 'sh85130962'">swh</xsl:when>
                    <xsl:when test="$lccn = 'sh85131019'">ssw</xsl:when>
                    <xsl:when test="$lccn = 'sh85131135'">swe</xsl:when>
                    <xsl:when test="$lccn = 'sh99013540'">swl</xsl:when>
                    <xsl:when test="$lccn = 'sh91004323'">shz</xsl:when>
                    <xsl:when test="$lccn = 'sh96010966'">syl</xsl:when>
                    <xsl:when test="$lccn = 'sh85131708'">syr</xsl:when>
                    <xsl:when test="$lccn = 'sh89004481'">hun</xsl:when>
                    <xsl:when test="$lccn = 'sh85131779'">tab</xsl:when>
                    <xsl:when test="$lccn = 'sh86004279'">tnm</xsl:when>
                    <xsl:when test="$lccn = 'sh2004010397'">tap</xsl:when>
                    <xsl:when test="$lccn = 'sh85131834'">tna</xsl:when>
                    <xsl:when test="$lccn = 'sh85131891'">ncz</xsl:when>
                    <xsl:when test="$lccn = 'sh98000059'">bgs</xsl:when>
                    <xsl:when test="$lccn = 'sh85131896'">klg</xsl:when>
                    <xsl:when test="$lccn = 'sh85131901'">tgl</xsl:when>
                    <xsl:when test="$lccn = 'sh85131907'">tgw</xsl:when>
                    <xsl:when test="$lccn = 'sh85131908'">tbw</xsl:when>
                    <xsl:when test="$lccn = 'sh87001708'">dap</xsl:when>
                    <xsl:when test="$lccn = 'sh85131914'">tag</xsl:when>
                    <xsl:when test="$lccn = 'sh91003333'">tgo</xsl:when>
                    <xsl:when test="$lccn = 'sh85131922'">tah</xsl:when>
                    <xsl:when test="$lccn = 'sh86005679'">tdd</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003113'">mlg</xsl:when>
                    <xsl:when test="$lccn = 'sh85131958'">tnq</xsl:when>
                    <xsl:when test="$lccn = 'sh85131968'">dav</xsl:when>
                    <xsl:when test="$lccn = 'sh92005257'">bsn</xsl:when>
                    <xsl:when test="$lccn = 'sh85132023'">tgk</xsl:when>
                    <xsl:when test="$lccn = 'sh85132056'">tkm</xsl:when>
                    <xsl:when test="$lccn = 'sh86007514'">tld</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003118'">tlj</xsl:when>
                    <xsl:when test="$lccn = 'sh90000305'">tlr</xsl:when>
                    <xsl:when test="$lccn = 'sh85132150'">tly</xsl:when>
                    <xsl:when test="$lccn = 'sh2001005811'">tmy</xsl:when>
                    <xsl:when test="$lccn = 'sh85132190'">tam</xsl:when>
                    <xsl:when test="$lccn = 'sh85132225'">tpm</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003596'">gvr</xsl:when>
                    <xsl:when test="$lccn = 'sh2004005699'">tcb</xsl:when>
                    <xsl:when test="$lccn = 'sh85132260'">tgg</xsl:when>
                    <xsl:when test="$lccn = 'sh2002007695'">tan</xsl:when>
                    <xsl:when test="$lccn = 'sh85132270'">nmf</xsl:when>
                    <xsl:when test="$lccn = 'sh85132278'">nst</xsl:when>
                    <xsl:when test="$lccn = 'sh85132282'">txg</xsl:when>
                    <xsl:when test="$lccn = 'sh85148913'">ynu</xsl:when>
                    <xsl:when test="$lccn = 'sh85132405'">abq</xsl:when>
                    <xsl:when test="$lccn = 'sh85132434'">taf</xsl:when>
                    <xsl:when test="$lccn = 'sh85132468'">tsz</xsl:when>
                    <xsl:when test="$lccn = 'sh2003001733'">tae</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003176'">yer</xsl:when>
                    <xsl:when test="$lccn = 'sh85132738'">ttt</xsl:when>
                    <xsl:when test="$lccn = 'sh96001668'">txx</xsl:when>
                    <xsl:when test="$lccn = 'sh85132743'">tat</xsl:when>
                    <xsl:when test="$lccn = 'sh92006042'">blk</xsl:when>
                    <xsl:when test="$lccn = 'sh85132788'">aoc</xsl:when>
                    <xsl:when test="$lccn = 'sh85132794'">tsg</xsl:when>
                    <xsl:when test="$lccn = 'sh90004283'">tya</xsl:when>
                    <xsl:when test="$lccn = 'sh88000629'">tbo</xsl:when>
                    <xsl:when test="$lccn = 'sh85132797'">tvs</xsl:when>
                    <xsl:when test="$lccn = 'sh00007431'">sum</xsl:when>
                    <xsl:when test="$lccn = 'sh91002689'">twy</xsl:when>
                    <xsl:when test="$lccn = 'sh85132903'">nut</xsl:when>
                    <xsl:when test="$lccn = 'sh95001065'">cks</xsl:when>
                    <xsl:when test="$lccn = 'sh85132918'">tbl</xsl:when>
                    <xsl:when test="$lccn = 'sh85132920'">kqo</xsl:when>
                    <xsl:when test="$lccn = 'sh89007219'">ttc</xsl:when>
                    <xsl:when test="$lccn = 'sh85133196'">tuq</xsl:when>
                    <xsl:when test="$lccn = 'sh88000630'">lor</xsl:when>
                    <xsl:when test="$lccn = 'sh99005126'">jav</xsl:when>
                    <xsl:when test="$lccn = 'sh93002788'">kps</xsl:when>
                    <xsl:when test="$lccn = 'sh85133261'">teg</xsl:when>
                    <xsl:when test="$lccn = 'sh85133312'">tlf</xsl:when>
                    <xsl:when test="$lccn = 'sh90004607'">atv</xsl:when>
                    <xsl:when test="$lccn = 'sh85133667'">tel</xsl:when>
                    <xsl:when test="$lccn = 'sh88001882'">kdh</xsl:when>
                    <xsl:when test="$lccn = 'sh87000529'">tbt</xsl:when>
                    <xsl:when test="$lccn = 'sh90004003'">tea</xsl:when>
                    <xsl:when test="$lccn = 'sh85135458'">tem</xsl:when>
                    <xsl:when test="$lccn = 'sh85133857'">tqb</xsl:when>
                    <xsl:when test="$lccn = 'sh00003130'">tes</xsl:when>
                    <xsl:when test="$lccn = 'sh87005476'">pah</xsl:when>
                    <xsl:when test="$lccn = 'sh85133956'">tio</xsl:when>
                    <xsl:when test="$lccn = 'sh86008212'">tnm</xsl:when>
                    <xsl:when test="$lccn = 'sh85133970'">ted</xsl:when>
                    <xsl:when test="$lccn = 'sh85133974'">ttr</xsl:when>
                    <xsl:when test="$lccn = 'sh85133999'">ter</xsl:when>
                    <xsl:when test="$lccn = 'sh86008213'">tft</xsl:when>
                    <xsl:when test="$lccn = 'sh85134084'">tfr</xsl:when>
                    <xsl:when test="$lccn = 'sh85134134'">teo</xsl:when>
                    <xsl:when test="$lccn = 'sh85134171'">tll</xsl:when>
                    <xsl:when test="$lccn = 'sh85134232'">tet</xsl:when>
                    <xsl:when test="$lccn = 'sh85134248'">tew</xsl:when>
                    <xsl:when test="$lccn = 'sh85134422'">tcz</xsl:when>
                    <xsl:when test="$lccn = 'sh85134429'">tha</xsl:when>
                    <xsl:when test="$lccn = 'sh85134461'">ths</xsl:when>
                    <xsl:when test="$lccn = 'sh2002006549'">ssf</xsl:when>
                    <xsl:when test="$lccn = 'sh96012132'">thk</xsl:when>
                    <xsl:when test="$lccn = 'sh96007790'">thd</xsl:when>
                    <xsl:when test="$lccn = 'sh85134920'">tou</xsl:when>
                    <xsl:when test="$lccn = 'sh85134998'">txh</xsl:when>
                    <xsl:when test="$lccn = 'sh85135106'">tdh</xsl:when>
                    <xsl:when test="$lccn = 'sh85135224'">bod</xsl:when>
                    <xsl:when test="$lccn = 'sh85135272'">ctd</xsl:when>
                    <xsl:when test="$lccn = 'sh97003847'">tvo</xsl:when>
                    <xsl:when test="$lccn = 'sh2001004769'">tiq</xsl:when>
                    <xsl:when test="$lccn = 'sh85135306'">tif</xsl:when>
                    <xsl:when test="$lccn = 'sh85135308'">tgc</xsl:when>
                    <xsl:when test="$lccn = 'sh85135326'">tig</xsl:when>
                    <xsl:when test="$lccn = 'sh85135329'">tir</xsl:when>
                    <xsl:when test="$lccn = 'sh85135338'">tik</xsl:when>
                    <xsl:when test="$lccn = 'sh88001812'">tkp</xsl:when>
                    <xsl:when test="$lccn = 'sh98004677'">gor</xsl:when>
                    <xsl:when test="$lccn = 'sh85135367'">til</xsl:when>
                    <xsl:when test="$lccn = 'sh92004537'">tim</xsl:when>
                    <xsl:when test="$lccn = 'sh85135481'">tjm</xsl:when>
                    <xsl:when test="$lccn = 'sh88005503'">xsb</xsl:when>
                    <xsl:when test="$lccn = 'sh87007987'">tpz</xsl:when>
                    <xsl:when test="$lccn = 'sh95001594'">cir</xsl:when>
                    <xsl:when test="$lccn = 'sh85135578'">tiy</xsl:when>
                    <xsl:when test="$lccn = 'sh85135670'">tiv</xsl:when>
                    <xsl:when test="$lccn = 'sh85135332'">lax</xsl:when>
                    <xsl:when test="$lccn = 'sh85135672'">tiw</xsl:when>
                    <xsl:when test="$lccn = 'sh85135682'">wac</xsl:when>
                    <xsl:when test="$lccn = 'sh85135690'">tli</xsl:when>
                    <xsl:when test="$lccn = 'sh85135700'">tqo</xsl:when>
                    <xsl:when test="$lccn = 'sh85135707'">tob</xsl:when>
                    <xsl:when test="$lccn = 'sh85135705'">bbc</xsl:when>
                    <xsl:when test="$lccn = 'sh85135754'">tlb</xsl:when>
                    <xsl:when test="$lccn = 'sh85135761'">bud</xsl:when>
                    <xsl:when test="$lccn = 'sh85135774'">tcx</xsl:when>
                    <xsl:when test="$lccn = 'sh85135787'">kim</xsl:when>
                    <xsl:when test="$lccn = 'sh85097547'">ood</xsl:when>
                    <xsl:when test="$lccn = 'sh85022480'">toj</xsl:when>
                    <xsl:when test="$lccn = 'sh85135827'">tpi</xsl:when>
                    <xsl:when test="$lccn = 'sh88000725'">tkl</xsl:when>
                    <xsl:when test="$lccn = 'sh85073344'">ksd</xsl:when>
                    <xsl:when test="$lccn = 'sh86006786'">lbw</xsl:when>
                    <xsl:when test="$lccn = 'sh96010747'">txe</xsl:when>
                    <xsl:when test="$lccn = 'sh96008851'">tod</xsl:when>
                    <xsl:when test="$lccn = 'sh93006465'">txa</xsl:when>
                    <xsl:when test="$lccn = 'sh87006513'">tom</xsl:when>
                    <xsl:when test="$lccn = 'sh85135968'">tdn</xsl:when>
                    <xsl:when test="$lccn = 'sh85135980'">toh</xsl:when>
                    <xsl:when test="$lccn = 'sh85135981'">tog</xsl:when>
                    <xsl:when test="$lccn = 'sh85135982'">ton</xsl:when>
                    <xsl:when test="$lccn = 'sh85136007'">tqw</xsl:when>
                    <xsl:when test="$lccn = 'sh97006151'">txs</xsl:when>
                    <xsl:when test="$lccn = 'sh85136035'">tnt</xsl:when>
                    <xsl:when test="$lccn = 'sh85136055'">ttj</xsl:when>
                    <xsl:when test="$lccn = 'sh85136093'">toq</xsl:when>
                    <xsl:when test="$lccn = 'sh87000561'">sda</xsl:when>
                    <xsl:when test="$lccn = 'sh87000976'">sda</xsl:when>
                    <xsl:when test="$lccn = 'sh85136114'">xal</xsl:when>
                    <xsl:when test="$lccn = 'sh85136200'">trw</xsl:when>
                    <xsl:when test="$lccn = 'sh85135573'">tri</xsl:when>
                    <xsl:when test="$lccn = 'sh85138172'">tpy</xsl:when>
                    <xsl:when test="$lccn = 'sh92005408'">atb</xsl:when>
                    <xsl:when test="$lccn = 'sh85138307'">tkr</xsl:when>
                    <xsl:when test="$lccn = 'sh85138308'">tsd</xsl:when>
                    <xsl:when test="$lccn = 'sh85138314'">bea</xsl:when>
                    <xsl:when test="$lccn = 'sh85138323'">xmw</xsl:when>
                    <xsl:when test="$lccn = 'sh85138327'">tsi</xsl:when>
                    <xsl:when test="$lccn = 'sh85138328'">tsv</xsl:when>
                    <xsl:when test="$lccn = 'sh85138332'">tso</xsl:when>
                    <xsl:when test="$lccn = 'sh85138335'">tsu</xsl:when>
                    <xsl:when test="$lccn = 'sh85138356'">tsc</xsl:when>
                    <xsl:when test="$lccn = 'sh85138359'">tsn</xsl:when>
                    <xsl:when test="$lccn = 'sh85138364'">pmt</xsl:when>
                    <xsl:when test="$lccn = 'sh85138393'">tub</xsl:when>
                    <xsl:when test="$lccn = 'sh85138461'">tte</xsl:when>
                    <xsl:when test="$lccn = 'sh85138472'">tuo</xsl:when>
                    <xsl:when test="$lccn = 'sh85138479'">tca</xsl:when>
                    <xsl:when test="$lccn = 'sh00007497'">tuy</xsl:when>
                    <xsl:when test="$lccn = 'sh85138534'">tcy</xsl:when>
                    <xsl:when test="$lccn = 'sh85138538'">duu</xsl:when>
                    <xsl:when test="$lccn = 'sh85138541'">tmc</xsl:when>
                    <xsl:when test="$lccn = 'sh85138546'">tum</xsl:when>
                    <xsl:when test="$lccn = 'sh85138547'">tmq</xsl:when>
                    <xsl:when test="$lccn = 'sh85011508'">baz</xsl:when>
                    <xsl:when test="$lccn = 'sh85138638'">tun</xsl:when>
                    <xsl:when test="$lccn = 'sh98003529'">tqq</xsl:when>
                    <xsl:when test="$lccn = 'sh85138695'">tpw</xsl:when>
                    <xsl:when test="$lccn = 'sh88000632'">tui</xsl:when>
                    <xsl:when test="$lccn = 'sh85138704'">neb</xsl:when>
                    <xsl:when test="$lccn = 'sh85138782'">tuv</xsl:when>
                    <xsl:when test="$lccn = 'sh85138883'">tur</xsl:when>
                    <xsl:when test="$lccn = 'sh85138907'">tuk</xsl:when>
                    <xsl:when test="$lccn = 'sh85138975'">tus</xsl:when>
                    <xsl:when test="$lccn = 'sh85138990'">tta</xsl:when>
                    <xsl:when test="$lccn = 'sh93008789'">bsb</xsl:when>
                    <xsl:when test="$lccn = 'sh94005832'">tvt</xsl:when>
                    <xsl:when test="$lccn = 'sh85138999'">tvl</xsl:when>
                    <xsl:when test="$lccn = 'sh85139000'">tyv</xsl:when>
                    <xsl:when test="$lccn = 'sh88006898'">ifk</xsl:when>
                    <xsl:when test="$lccn = 'sh87007599'">tue</xsl:when>
                    <xsl:when test="$lccn = 'sh85139030'">twi</xsl:when>
                    <xsl:when test="$lccn = 'sh85139069'">sef</xsl:when>
                    <xsl:when test="$lccn = 'sh85139212'">teh</xsl:when>
                    <xsl:when test="$lccn = 'sh2002005884'">ksj</xsl:when>
                    <xsl:when test="$lccn = 'sh85139236'">ubr</xsl:when>
                    <xsl:when test="$lccn = 'sh85139238'">uby</xsl:when>
                    <xsl:when test="$lccn = 'sh85139253'">ude</xsl:when>
                    <xsl:when test="$lccn = 'sh85139254'">udi</xsl:when>
                    <xsl:when test="$lccn = 'sh85139255'">udm</xsl:when>
                    <xsl:when test="$lccn = 'sh85139266'">udu</xsl:when>
                    <xsl:when test="$lccn = 'sh85139302'">uga</xsl:when>
                    <xsl:when test="$lccn = 'sh85139320'">uig</xsl:when>
                    <xsl:when test="$lccn = 'sh92005029'">nmf</xsl:when>
                    <xsl:when test="$lccn = 'sh93002789'">bld</xsl:when>
                    <xsl:when test="$lccn = 'sh85139389'">ukr</xsl:when>
                    <xsl:when test="$lccn = 'sh85139425'">apb</xsl:when>
                    <xsl:when test="$lccn = 'sh88000341'">udl</xsl:when>
                    <xsl:when test="$lccn = 'sh85139435'">li</xsl:when>
                    <xsl:when test="$lccn = 'sh90005525'">sum</xsl:when>
                    <xsl:when test="$lccn = 'sh85139514'">ppk</xsl:when>
                    <xsl:when test="$lccn = 'sh2001007065'">xum</xsl:when>
                    <xsl:when test="$lccn = 'sh85139537'">umb</xsl:when>
                    <xsl:when test="$lccn = 'sh88007043'">ump</xsl:when>
                    <xsl:when test="$lccn = 'sh92005260'">mtg</xsl:when>
                    <xsl:when test="$lccn = 'sh91005764'">cjh</xsl:when>
                    <xsl:when test="$lccn = 'sh87007063'">kuu</xsl:when>
                    <xsl:when test="$lccn = 'sh85141247'">hsb</xsl:when>
                    <xsl:when test="$lccn = 'sh87003144'">tau</xsl:when>
                    <xsl:when test="$lccn = 'sh2001007851'">kgh</xsl:when>
                    <xsl:when test="$lccn = 'sh2001004720'">uur</xsl:when>
                    <xsl:when test="$lccn = 'sh87000355'">urk</xsl:when>
                    <xsl:when test="$lccn = 'sh96007771'">url</xsl:when>
                    <xsl:when test="$lccn = 'sh85141297'">ura</xsl:when>
                    <xsl:when test="$lccn = 'sh85141298'">xur</xsl:when>
                    <xsl:when test="$lccn = 'sh85141343'">urd</xsl:when>
                    <xsl:when test="$lccn = 'sh2002010064'">urh</xsl:when>
                    <xsl:when test="$lccn = 'sh85141401'">uvh</xsl:when>
                    <xsl:when test="$lccn = 'sh2002004215'">uri</xsl:when>
                    <xsl:when test="$lccn = 'sh85141429'">upv</xsl:when>
                    <xsl:when test="$lccn = 'sh88001614'">ure</xsl:when>
                    <xsl:when test="$lccn = 'sh90004596'">urb</xsl:when>
                    <xsl:when test="$lccn = 'sh85141478'">urb</xsl:when>
                    <xsl:when test="$lccn = 'sh86004487'">wnu</xsl:when>
                    <xsl:when test="$lccn = 'sh85141573'">usa</xsl:when>
                    <xsl:when test="$lccn = 'sh85141564'">usp</xsl:when>
                    <xsl:when test="$lccn = 'sh85141605'">ute</xsl:when>
                    <xsl:when test="$lccn = 'sh85141652'">hau</xsl:when>
                    <xsl:when test="$lccn = 'sh85141661'">uzb</xsl:when>
                    <xsl:when test="$lccn = 'sh85141686'">vaa</xsl:when>
                    <xsl:when test="$lccn = 'sh85141752'">vag</xsl:when>
                    <xsl:when test="$lccn = 'sh85141770'">vai</xsl:when>
                    <xsl:when test="$lccn = 'sh85141777'">vap</xsl:when>
                    <xsl:when test="$lccn = 'sh85141916'">van</xsl:when>
                    <xsl:when test="$lccn = 'sh85142031'">xvn</xsl:when>
                    <xsl:when test="$lccn = 'sh85089520'">vah</xsl:when>
                    <xsl:when test="$lccn = 'sh95004091'">dic</xsl:when>
                    <xsl:when test="$lccn = 'sh85142417'">gri</xsl:when>
                    <xsl:when test="$lccn = 'sh85142421'">frp</xsl:when>
                    <xsl:when test="$lccn = 'sh85142440'">vay</xsl:when>
                    <xsl:when test="$lccn = 'sh85142471'">ved</xsl:when>
                    <xsl:when test="$lccn = 'sh85142530'">dlm</xsl:when>
                    <xsl:when test="$lccn = 'sh85142557'">wlv</xsl:when>
                    <xsl:when test="$lccn = 'sh85142606'">ven</xsl:when>
                    <xsl:when test="$lccn = 'sh85142644'">xve</xsl:when>
                    <xsl:when test="$lccn = 'sh98000811'">vsl</xsl:when>
                    <xsl:when test="$lccn = 'sh85142784'">vep</xsl:when>
                    <xsl:when test="$lccn = 'sh85143298'">vie</xsl:when>
                    <xsl:when test="$lccn = 'sh85143318'">vig</xsl:when>
                    <xsl:when test="$lccn = 'sh85143345'">vif</xsl:when>
                    <xsl:when test="$lccn = 'sh85144417'">vot</xsl:when>
                    <xsl:when test="$lccn = 'sh85144472'">mug</xsl:when>
                    <xsl:when test="$lccn = 'sh2003010776'">vut</xsl:when>
                    <xsl:when test="$lccn = 'sh85144487'">wbm</xsl:when>
                    <xsl:when test="$lccn = 'sh2001005511'">wwa</xsl:when>
                    <xsl:when test="$lccn = 'sh85144515'">waj</xsl:when>
                    <xsl:when test="$lccn = 'sh93002416'">wbr</xsl:when>
                    <xsl:when test="$lccn = 'sh99000888'">waq</xsl:when>
                    <xsl:when test="$lccn = 'sh85144812'">wgi</xsl:when>
                    <xsl:when test="$lccn = 'sh98006664'">wbk</xsl:when>
                    <xsl:when test="$lccn = 'sh85000945'">adt</xsl:when>
                    <xsl:when test="$lccn = 'sh2003004884'">wmh</xsl:when>
                    <xsl:when test="$lccn = 'sh85139227'">waw</xsl:when>
                    <xsl:when test="$lccn = 'sh95007203'">wja</xsl:when>
                    <xsl:when test="$lccn = 'sh2004007547'">wkw</xsl:when>
                    <xsl:when test="$lccn = 'sh85144855'">wbl</xsl:when>
                    <xsl:when test="$lccn = 'sh86004897'">wal</xsl:when>
                    <xsl:when test="$lccn = 'sh85144860'">wbp</xsl:when>
                    <xsl:when test="$lccn = 'sh85144944'">wln</xsl:when>
                    <xsl:when test="$lccn = 'sh85144966'">wmt</xsl:when>
                    <xsl:when test="$lccn = 'sh99004558'">wae</xsl:when>
                    <xsl:when test="$lccn = 'sh93001679'">wms</xsl:when>
                    <xsl:when test="$lccn = 'sh85145065'">wam</xsl:when>
                    <xsl:when test="$lccn = 'sh2001004346'">lbq</xsl:when>
                    <xsl:when test="$lccn = 'sh85145075'">nnp</xsl:when>
                    <xsl:when test="$lccn = 'sh85080421'">mfi</xsl:when>
                    <xsl:when test="$lccn = 'sh86004312'">wad</xsl:when>
                    <xsl:when test="$lccn = 'sh85145078'">wnd</xsl:when>
                    <xsl:when test="$lccn = 'sh85145084'">wne</xsl:when>
                    <xsl:when test="$lccn = 'sh96007749'">wgg</xsl:when>
                    <xsl:when test="$lccn = 'sh85145096'">nbx</xsl:when>
                    <xsl:when test="$lccn = 'sh87002436'">dhg</xsl:when>
                    <xsl:when test="$lccn = 'sh85145102'">wnc</xsl:when>
                    <xsl:when test="$lccn = 'sh85145112'">wao</xsl:when>
                    <xsl:when test="$lccn = 'sh85145173'">aml</xsl:when>
                    <xsl:when test="$lccn = 'sh85145287'">wba</xsl:when>
                    <xsl:when test="$lccn = 'sh2003006896'">wra</xsl:when>
                    <xsl:when test="$lccn = 'sh85117005'">wrz</xsl:when>
                    <xsl:when test="$lccn = 'sh93006861'">wrr</xsl:when>
                    <xsl:when test="$lccn = 'sh2004004977'">wsa</xsl:when>
                    <xsl:when test="$lccn = 'sh00009401'">wrs</xsl:when>
                    <xsl:when test="$lccn = 'sh93009163'">wri</xsl:when>
                    <xsl:when test="$lccn = 'sh95003830'">wrp</xsl:when>
                    <xsl:when test="$lccn = 'sh96001089'">wwr</xsl:when>
                    <xsl:when test="$lccn = 'sh2002012353'">wrm</xsl:when>
                    <xsl:when test="$lccn = 'sh85145328'">wac</xsl:when>
                    <xsl:when test="$lccn = 'sh85145396'">kmo</xsl:when>
                    <xsl:when test="$lccn = 'sh85145398'">was</xsl:when>
                    <xsl:when test="$lccn = 'sh93007608'">ata</xsl:when>
                    <xsl:when test="$lccn = 'sh85145401'">wsk</xsl:when>
                    <xsl:when test="$lccn = 'sh93006878'">wbv</xsl:when>
                    <xsl:when test="$lccn = 'sh85145777'">noa</xsl:when>
                    <xsl:when test="$lccn = 'sh85145794'">aaq</xsl:when>
                    <xsl:when test="$lccn = 'sh85096361'">oym</xsl:when>
                    <xsl:when test="$lccn = 'sh85096363'">way</xsl:when>
                    <xsl:when test="$lccn = 'sh85145893'">wed</xsl:when>
                    <xsl:when test="$lccn = 'sh85146070'">cym</xsl:when>
                    <xsl:when test="$lccn = 'sh85146114'">bsk</xsl:when>
                    <xsl:when test="$lccn = 'sh85007290'">hye</xsl:when>
                    <xsl:when test="$lccn = 'sh85146212'">mqs</xsl:when>
                    <xsl:when test="$lccn = 'sh89004699'">apw</xsl:when>
                    <xsl:when test="$lccn = 'sh88007675'">mbb</xsl:when>
                    <xsl:when test="$lccn = 'sh99005129'">dnw</xsl:when>
                    <xsl:when test="$lccn = 'sh2004006628'">raf</xsl:when>
                    <xsl:when test="$lccn = 'sh86007782'">suc</xsl:when>
                    <xsl:when test="$lccn = 'sh88001958'">ybe</xsl:when>
                    <xsl:when test="$lccn = 'sh85146336'">wew</xsl:when>
                    <xsl:when test="$lccn = 'sh85146480'">mww</xsl:when>
                    <xsl:when test="$lccn = 'sh85146492'">apw</xsl:when>
                    <xsl:when test="$lccn = 'sh85146520'">twh</xsl:when>
                    <xsl:when test="$lccn = 'sh85146586'">wic</xsl:when>
                    <xsl:when test="$lccn = 'sh85146646'">wim</xsl:when>
                    <xsl:when test="$lccn = 'sh85147017'">win</xsl:when>
                    <xsl:when test="$lccn = 'sh89003679'">wit</xsl:when>
                    <xsl:when test="$lccn = 'sh2004007542'">wrh</xsl:when>
                    <xsl:when test="$lccn = 'sh00005428'">wiw</xsl:when>
                    <xsl:when test="$lccn = 'sh85147087'">wiu</xsl:when>
                    <xsl:when test="$lccn = 'sh85147195'">wiy</xsl:when>
                    <xsl:when test="$lccn = 'sh85147201'">wob</xsl:when>
                    <xsl:when test="$lccn = 'sh98001968'">xwc</xsl:when>
                    <xsl:when test="$lccn = 'sh85147210'">woi</xsl:when>
                    <xsl:when test="$lccn = 'sh85147211'">apz</xsl:when>
                    <xsl:when test="$lccn = 'sh85147216'">woe</xsl:when>
                    <xsl:when test="$lccn = 'sh85147243'">wlo</xsl:when>
                    <xsl:when test="$lccn = 'sh85147248'">wol</xsl:when>
                    <xsl:when test="$lccn = 'sh85147779'">wyb</xsl:when>
                    <xsl:when test="$lccn = 'sh85148559'">unp</xsl:when>
                    <xsl:when test="$lccn = 'sh86002290'">wsv</xsl:when>
                    <xsl:when test="$lccn = 'sh92005005'">wtw</xsl:when>
                    <xsl:when test="$lccn = 'sh85148676'">dgi</xsl:when>
                    <xsl:when test="$lccn = 'sh2002005317'">wuv</xsl:when>
                    <xsl:when test="$lccn = 'sh85063187'">wya</xsl:when>
                    <xsl:when test="$lccn = 'sh85006396'">axx</xsl:when>
                    <xsl:when test="$lccn = 'sh85003082'">xav</xsl:when>
                    <xsl:when test="$lccn = 'sh85148822'">xho</xsl:when>
                    <xsl:when test="$lccn = 'sh85148830'">xin</xsl:when>
                    <xsl:when test="$lccn = 'sh93000923'">cuu</xsl:when>
                    <xsl:when test="$lccn = 'sh85148880'">gya</xsl:when>
                    <xsl:when test="$lccn = 'sh85069168'">jae</xsl:when>
                    <xsl:when test="$lccn = 'sh85148884'">yby</xsl:when>
                    <xsl:when test="$lccn = 'sh85148903'">ygr</xsl:when>
                    <xsl:when test="$lccn = 'sh85148905'">yai</xsl:when>
                    <xsl:when test="$lccn = 'sh85148906'">gdf</xsl:when>
                    <xsl:when test="$lccn = 'sh85148909'">yad</xsl:when>
                    <xsl:when test="$lccn = 'sh85148912'">yag</xsl:when>
                    <xsl:when test="$lccn = 'sh92000889'">ynn</xsl:when>
                    <xsl:when test="$lccn = 'sh85148916'">yaf</xsl:when>
                    <xsl:when test="$lccn = 'sh85148921'">yak</xsl:when>
                    <xsl:when test="$lccn = 'sh85148918'">yka</xsl:when>
                    <xsl:when test="$lccn = 'sh85148923'">yaz</xsl:when>
                    <xsl:when test="$lccn = 'sh85148924'">yky</xsl:when>
                    <xsl:when test="$lccn = 'sh85148937'">sah</xsl:when>
                    <xsl:when test="$lccn = 'sh96004681'">yba</xsl:when>
                    <xsl:when test="$lccn = 'sh94005172'">yal</xsl:when>
                    <xsl:when test="$lccn = 'sh85148971'">yam</xsl:when>
                    <xsl:when test="$lccn = 'sh85148972'">yat</xsl:when>
                    <xsl:when test="$lccn = 'sh87002309'">jmd</xsl:when>
                    <xsl:when test="$lccn = 'sh85148974'">tao</xsl:when>
                    <xsl:when test="$lccn = 'sh00002632'">ybi</xsl:when>
                    <xsl:when test="$lccn = 'sh2004003259'">mos</xsl:when>
                    <xsl:when test="$lccn = 'sh85148978'">ynn</xsl:when>
                    <xsl:when test="$lccn = 'sh85148990'">bzf</xsl:when>
                    <xsl:when test="$lccn = 'sh85148996'">dak</xsl:when>
                    <xsl:when test="$lccn = 'sh85149000'">guu</xsl:when>
                    <xsl:when test="$lccn = 'sh2001008087'">jao</xsl:when>
                    <xsl:when test="$lccn = 'sh85149003'">yns</xsl:when>
                    <xsl:when test="$lccn = 'sh85149007'">yao</xsl:when>
                    <xsl:when test="$lccn = 'sh85149008'">ium</xsl:when>
                    <xsl:when test="$lccn = 'sh94001789'">yre</xsl:when>
                    <xsl:when test="$lccn = 'sh85149012'">yap</xsl:when>
                    <xsl:when test="$lccn = 'sh2003006063'">jaq</xsl:when>
                    <xsl:when test="$lccn = 'sh85149017'">yaq</xsl:when>
                    <xsl:when test="$lccn = 'sh85149018'">yrb</xsl:when>
                    <xsl:when test="$lccn = 'sh85149028'">yae</xsl:when>
                    <xsl:when test="$lccn = 'sh93006388'">yyu</xsl:when>
                    <xsl:when test="$lccn = 'sh85149044'">yuf</xsl:when>
                    <xsl:when test="$lccn = 'sh92000977'">yva</xsl:when>
                    <xsl:when test="$lccn = 'sh92003367'">pcc</xsl:when>
                    <xsl:when test="$lccn = 'sh85149051'">yah</xsl:when>
                    <xsl:when test="$lccn = 'sh85149074'">mch</xsl:when>
                    <xsl:when test="$lccn = 'sh92004546'">yle</xsl:when>
                    <xsl:when test="$lccn = 'sh85149107'">ybe</xsl:when>
                    <xsl:when test="$lccn = 'sh99003562'">ybb</xsl:when>
                    <xsl:when test="$lccn = 'sh96004683'">jnj</xsl:when>
                    <xsl:when test="$lccn = 'sh96012088'">yea</xsl:when>
                    <xsl:when test="$lccn = 'sh89005040'">yeu</xsl:when>
                    <xsl:when test="$lccn = 'sh85149133'">yss</xsl:when>
                    <xsl:when test="$lccn = 'sh2002001285'">yey</xsl:when>
                    <xsl:when test="$lccn = 'sh85149145'">yid</xsl:when>
                    <xsl:when test="$lccn = 'sh85149156'">yii</xsl:when>
                    <xsl:when test="$lccn = 'sh91002254'">yee</xsl:when>
                    <xsl:when test="$lccn = 'sh85149159'">yim</xsl:when>
                    <xsl:when test="$lccn = 'sh93009164'">yia</xsl:when>
                    <xsl:when test="$lccn = 'sh91004245'">yiy</xsl:when>
                    <xsl:when test="$lccn = 'sh97008872'">yog</xsl:when>
                    <xsl:when test="$lccn = 'sh91004820'">nst</xsl:when>
                    <xsl:when test="$lccn = 'sh85149207'">yok</xsl:when>
                    <xsl:when test="$lccn = 'sh85149213'">yom</xsl:when>
                    <xsl:when test="$lccn = 'sh2004007040'">yon</xsl:when>
                    <xsl:when test="$lccn = 'sh2003003426'">yut</xsl:when>
                    <xsl:when test="$lccn = 'sh85149236'">yor</xsl:when>
                    <xsl:when test="$lccn = 'sh85149431'">yuc</xsl:when>
                    <xsl:when test="$lccn = 'sh85149432'">ycn</xsl:when>
                    <xsl:when test="$lccn = 'sh99002241'">yuu</xsl:when>
                    <xsl:when test="$lccn = 'sh85070980'">bdy</xsl:when>
                    <xsl:when test="$lccn = 'sh85149490'">sll</xsl:when>
                    <xsl:when test="$lccn = 'sh85149492'">ess</xsl:when>
                    <xsl:when test="$lccn = 'sh85149496'">yuk</xsl:when>
                    <xsl:when test="$lccn = 'sh85149504'">yul</xsl:when>
                    <xsl:when test="$lccn = 'sh85149514'">omc</xsl:when>
                    <xsl:when test="$lccn = 'sh85149518'">yup</xsl:when>
                    <xsl:when test="$lccn = 'sh85149525'">yuz</xsl:when>
                    <xsl:when test="$lccn = 'sh92004895'">yuj</xsl:when>
                    <xsl:when test="$lccn = 'sh85149523'">yur</xsl:when>
                    <xsl:when test="$lccn = 'sh93007666'">yui</xsl:when>
                    <xsl:when test="$lccn = 'sh92004082'">zag</xsl:when>
                    <xsl:when test="$lccn = 'sh85149632'">zak</xsl:when>
                    <xsl:when test="$lccn = 'sh85149635'">zne</xsl:when>
                    <xsl:when test="$lccn = 'sh85149641'">xzh</xsl:when>
                    <xsl:when test="$lccn = 'sh96003764'">zro</xsl:when>
                    <xsl:when test="$lccn = 'sh85149668'">zap</xsl:when>
                    <xsl:when test="$lccn = 'sh85149678'">dje</xsl:when>
                    <xsl:when test="$lccn = 'sh2004001818'">zza</xsl:when>
                    <xsl:when test="$lccn = 'sh85149692'">sgl</xsl:when>
                    <xsl:when test="$lccn = 'sh92005149'">nzm</xsl:when>
                    <xsl:when test="$lccn = 'sh85149737'">zen</xsl:when>
                    <xsl:when test="$lccn = 'sh2002009966'">sna</xsl:when>
                    <xsl:when test="$lccn = 'sh85025462'">zha</xsl:when>
                    <xsl:when test="$lccn = 'sh85149793'">ziw</xsl:when>
                    <xsl:when test="$lccn = 'sh90001565'">gvo</xsl:when>
                    <xsl:when test="$lccn = 'sh92006129'">czt</xsl:when>
                    <xsl:when test="$lccn = 'sh85150030'">zom</xsl:when>
                    <xsl:when test="$lccn = 'sh85150042'">gnd</xsl:when>
                    <xsl:when test="$lccn = 'sh85150044'">zul</xsl:when>
                    <xsl:when test="$lccn = 'sh85150062'">zun</xsl:when>
                    <xsl:when test="$lccn = 'sh00010161'">zwa</xsl:when>
                    <xsl:otherwise>failed</xsl:otherwise>
                </xsl:choose>
            </xsl:when>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>
