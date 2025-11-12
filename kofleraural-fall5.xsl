<!--XSLT for Fallbeispiel 5 in project "Kofler Aural" (https://gams.uni-graz.at/context:kofleraural)-->
<!--Transforms rdf ontology object o:kofleraural.fallbeispiel5 to HTML (https://gams.uni-graz.at/archive/objects/o:kofleraural.fallbeispiel5/methods/sdef:Ontology/get)-->
<!--has modes for each visualisation (Graph, Vertikal, Horizontal, Morphing)-->
<!--Created by: Elisabeth Raunig, Max Vogeltanz, 2025, Department for Digital Humanities, University of Graz-->

<xsl:stylesheet xmlns:s="http://www.w3.org/2001/sw/DataAccess/rf1/result"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:t="http://www.tei-c.org/ns/1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
    xmlns:ecrm="http://erlangen-crm.org/current/"
    xmlns:dbpedia-owl="https://dbpedia.org/property/"
    xmlns:dcterms="http://purl.org/dc/terms/" 
    xmlns:kofler="https://gams.uni-graz.at/o:kofleraural.fallbeispiele#"
    xmlns:void="http://rdfs.org/ns/void#"
    exclude-result-prefixes="#all"
    version="2.0">

    <xsl:include href="kofleraural-static.xsl"/>
    <xsl:strip-space elements="*"/>

    <xsl:output method="xml" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes"
        exclude-result-prefixes="xd"/>

   
    <xsl:template name="content">
        <!-- Bottom navigation für auswahl der modes jede visualisierung ein mode, default (empty mode = vertikal) -->
        <nav class="navbar-dark navbar-fixed-bottom" id="bottom_nav">
            <div class="container">
                
                <p class="bottomnavp">Ansicht wählen: </p>
                <!-- <ul> class="nav"navbar-nav-->
                <p class="bottomnavp">
                    <xsl:if test="$mode = 'graph'">
                        <xsl:attribute name="class">bottomnavp active</xsl:attribute>
                    </xsl:if>
                    <a
                        href="/archive/objects/o:kofleraural.fallbeispiel5/methods/sdef:Ontology/get?mode=graph"
                        role="button">
                        <span class="underlined bottomthickunderline">Graph</span>
                    </a>
                </p>
                <p class="bottomnavp">
                    <xsl:if test="$mode = ''">
                        <xsl:attribute name="class">bottomnavp active</xsl:attribute>
                    </xsl:if>
                    <a href="/archive/objects/o:kofleraural.fallbeispiel5/methods/sdef:Ontology/get" role="button">
                        <span class="underlined bottomthickunderline">Vertikal</span>
                    </a>
                </p>
                <p class="bottomnavp">
                    <xsl:if test="$mode = 'horizontal'">
                        <xsl:attribute name="class">bottomnavp active</xsl:attribute>
                    </xsl:if>
                    <a
                        href="/archive/objects/o:kofleraural.fallbeispiel5/methods/sdef:Ontology/get?mode=horizontal"
                        role="button">
                        <span class="underlined bottomthickunderline">Horizontal</span>
                    </a>
                </p>
                <p class="bottomnavp">
                    <xsl:if test="$mode = 'morphing'">
                        <xsl:attribute name="class">bottomnavp active</xsl:attribute>
                    </xsl:if>
                    <a
                        href="/archive/objects/o:kofleraural.fallbeispiel5/methods/sdef:Ontology/get?mode=morphing"
                        role="button">
                        <span class="underlined bottomthickunderline">Morphing</span>
                    </a>
                </p>
               
                <p class="bottomnavp" style="margin-left: 20px;">Download: </p>
                <p class="bottomnavp">
                   <a
                       href="/archive/objects/o:kofleraural.fallbeispiel5/datastreams/ONTOLOGY/content"
                       role="button"  download="rdfdata">
                        <span class="underlined bottomthickunderline">RDF/XML</span>
                    </a>
                </p>
                 </div>
        </nav>
        
       
        <!-- Wegen Anordung der Unterscheidlichen Phrasen muss für jede Phrasen mit ID abfrage eigenes Template sein -->
        <section class="row equalheight">
           <xsl:choose> 
               <!-- Default Vertikal -->
           <xsl:when test="$mode = ''">   
               <!-- Überschrift und Erklärtext -->
             <article class="col-md-12" style="margin-bottom: 10px; margin-top: 20px;"> 
              
                    <div class="row">
                        <div class="col-md-6"><h3>Fallbeispiel 'Schreib-Szene mit Radio / Herzschlag'</h3>
                            <p>Druck: Am Schreibtisch, 2018, S. 101.</p>
                            <p style="font-size:80%">(11.W7.1: <a style="color:#a48d96" href="{concat($server, '/o:kofleraural.11-W7-1#Mappe3_0104r')}">0104r</a>)</p>
                            <p style="line-height: 90% !important;"> <xsl:text>"</xsl:text><xsl:value-of select="//kofler:Paragraph/rdfs:label"/><xsl:text>"</xsl:text></p>
                            
                    </div>
                        <div class="col-md-6" style="background-color: #f2f5f4">
                            <h5 style="font-size: 85%;">Kommentar:</h5>
                            <p class="falleditcomment">
                                <xsl:value-of select="//kofler:finalPhrase/kofler:editorialComment"/>
                           </p>
                        </div>
                </div>
            </article>
            <!-- Visualisierung vertikal // Anordnung der Phrasen und call von Phrasen templates-->
             <article id="fallcontent1" class="col-md-10 fallcontent" style="margin-bottom: 10px; margin-top: 20px; display: block;" >
                <div class="row col-md-12"> 
                    <h4>Vertikale Visualisierung</h4>
                </div>
                 <div class="row">    <!-- A -->                                
                    <div class="col-md-4">
                        <div><h5 style="font-size: 80%;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_A']]/kofler:textType)"/></h5></div>
                        <div class="falldiv1"> <xsl:text> </xsl:text>
                            <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_A']"></xsl:apply-templates> 
                        </div>
                        <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                        </svg></div> <!-- Pfeil -->
                    </div>
                     <div class="col-md-4">    <!-- B -->
                        <div><h5 style="font-size: 80%;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_B']]/kofler:textType)"/></h5></div>
                        <div class="falldiv1">
                            <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_B']"></xsl:apply-templates> 
                     </div>
                        <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                        </svg></div>
                    </div>
                     <div class="col-md-4">    <!-- C -->
                         <div><h5 style="font-size: 80%;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_C']]/kofler:textType)"/></h5></div>
                         <div class="falldiv1">
                             <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_C']"></xsl:apply-templates>
                         </div>
                         <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                             <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                         </svg></div>
                     </div>
                 </div>
                 <div class="row">   <!-- D -->
                    <div class="col-md-8">
                        <div><h5 style="font-size: 80%;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_D']]/kofler:textType)"/></h5></div>
                        <div class="falldiv1">
                            <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_D']"></xsl:apply-templates>
                            </div>
                        <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                        </svg></div>
                </div>
                     <div class="row">   <!-- G -->
                         <div class="col-md-4">
                             <div><h5 style="font-size: 80%; margin-top: -1rem;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_G']]/kofler:textType)"/></h5></div>
                             <div class="falldiv1">
                                 <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_G']"></xsl:apply-templates>
                             </div>
                             <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                                 <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                             </svg></div>
                         </div>
                     </div>
                </div>
                <div class="row">  <!-- E -->                                  
                    <div class="col-md-8">
                        <div><h5 style="font-size: 80%; margin-top: -1rem;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_E']]/kofler:textType)"/></h5></div>
                        <div class="falldiv1">
                            <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_E']"></xsl:apply-templates>
                        </div>
                        <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                        </svg></div>
                    </div>
                    <div class="row">  <!-- H -->
                        <div class="col-md-4">
                            <div><h5 style="font-size: 80%; margin-top: -1rem;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_H']]/kofler:textType)"/></h5></div>
                            <div class="falldiv1"> 
                                <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_H']"></xsl:apply-templates>
                            </div>
                            <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                            </svg></div>
                        </div>
                    </div>
                </div>
                <div class="row">       
                    <div class="col-md-8"> <!-- F -->
                        <div><h5 style="font-size: 80%; margin-top: -1rem;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_F']]/kofler:textType)"/></h5></div>
                        <div class="falldiv1">
                            <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_F']"></xsl:apply-templates>
                        </div>
                        <div class="col-md-12">
                            <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                            </svg></div>
                        </div>
                    </div>
                    <div class="row">   <!-- I -->
                        <div class="col-md-4">
                            <div><h5 style="font-size: 80%; margin-top: -1rem;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_I']]/kofler:textType)"/></h5></div>
                            <div class="falldiv1"> 
                                <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_I']"></xsl:apply-templates>
                            </div>
                            <div class="col-md-12">
                                <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                                </svg></div>
                            </div>
                        </div>
                    </div>
                </div>

                 <div class="row">       
                     <div class="col-md-12">
                         <div><h5 style="font-size: 80%; margin-top: -1rem;"><xsl:value-of select="distinct-values(//kofler:Phrase[@rdf:about[. ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_J']]/kofler:textType)"/></h5></div>
                         <div class="falldiv1"> 
                             <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_J']"></xsl:apply-templates>
                         </div>
                         <div style="text-align: center;"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-arrow-down" viewBox="0 0 16 16">
                             <path fill-rule="evenodd" d="M8 1a.5.5 0 0 1 .5.5v11.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L7.5 13.293V1.5A.5.5 0 0 1 8 1"/>
                         </svg></div>
                     </div>
                 </div>
                <div class="row">       
                    <div class="col-md-12">
                        <div><h5 style="font-size: 80%; margin-top: -1rem;">Druckversion</h5></div>
                                            <div class="falldiv1">
                            <xsl:apply-templates select="//kofler:finalPhrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase']"></xsl:apply-templates>
                     </div>
                        
                    </div>
                </div>
               
            
             </article>
               <div class="col-md-2" style="font-size: 60%; text-align:center">
                   <br></br>
                   <br></br>
                   <br></br>
                   <br></br>
                   <button id="toggleLegendBtn" title="Legende anzeigen"
                       style="position: absolute; top: 0; right: 0; font-size: 100%;"><img src="{concat($gamsdev, '/kofleraural/img/info_icon.png')}" style="width:30px; height:auto;" alt="Info_Icon"></img>
                   </button>
                   <div class="legend">
                       <h4 style="text-decoration: underline">Legende:</h4>
                       <p><span style="color:#c0c41a;">&#9608;</span><xsl:text> = "gleich wie"; </xsl:text></p>
                       <p><span style="color:#0e9833;">&#9608;</span><xsl:text> = "bleibt gleich"; </xsl:text></p>
                       <p><span style="color:#f5830a;">&#9608;</span><xsl:text> = "anders als"; </xsl:text></p>
                       <p><span style="color:#0c8c98;">&#9608;</span><xsl:text> = "wird zu"; </xsl:text></p>
                       <p><span style="color:#fe3d2d;">&#9608;</span><xsl:text> = "wird nicht fortgeführt"; </xsl:text></p>
                       <p><span style="color:#808080;">Text</span><xsl:text> = mit Bleistift geschrieben</xsl:text></p>
                       <p><span style="color:#000000;">Text</span><xsl:text> = mit Schreibmaschine geschrieben</xsl:text></p>
                       <p><span style="color: blue;">Text</span><xsl:text> = mit Tinte geschrieben</xsl:text></p>
                       <p><span class="falladel">Text</span><xsl:text> = im Original durchgestrichen</xsl:text></p>
                       <p><xsl:text>Revisionen: </xsl:text><a style="text-decoration: underline;" href="/o:kofleraural.editorialdec" target="_blank">Editionsrichtlinien</a></p></div>
               </div>
            </xsl:when>
               <!-- mode horizontal für horizontale Visualisierung  -->
               <xsl:when test="$mode = 'horizontal'"> 
               <!-- Überschrift und Erklärtext -->
               <article class="col-md-12" style="margin-bottom: 10px; margin-top: 20px;"> 
                   
                   <div class="row">
                       <div class="col-md-6"><h3>Fallbeispiel 'Schreib-Szene mit Radio / Herzschlag'</h3>
                           <p>Druck: Am Schreibtisch, 2018, S. 101.</p>
                           <p style="font-size:80%">(11.W7.1: <a style="color:#a48d96" href="{concat($server, '/o:kofleraural.11-W7-1#Mappe3_0104r')}">0104r</a>)</p>
                           <p style="line-height: 90% !important;"> <xsl:text>"</xsl:text><xsl:value-of select="//kofler:Paragraph/rdfs:label"/><xsl:text>"</xsl:text></p>
                       </div>
                       <div class="col-md-6" style="background-color: #f2f5f4">
                           <h5 style="font-size: 85%;">Kommentar:</h5>
                           <p class="falleditcomment">
                               <xsl:value-of select="//kofler:finalPhrase/kofler:editorialComment"/>
                           </p>
                       </div>
                   </div>
              </article>
                   <!-- Visualisierung horizontal // Anordnung der Phrasen und call von Phrasen templates-->
               <article id="fallcontent2" class="col-md-12 fallcontent" style="margin-bottom: 10px; margin-top: 20px;">
                   <div class="col-md-10">
                       <h4>Horizontale Visualisierung</h4>
                       <div class="horizontal-scroll-wrapper">
                           <div class="row custom-row" style="background-color: #ededed;">
                           <div class="horizontal">
                               <h5 style="font-size: 60%;">NOTIZ/VORARBEIT</h5>
                               <!-- ABC -->
                               <div class="horizontalunder"> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_A']"></xsl:apply-templates>
                               </div>
                               <div class="horizontalunder"> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_B']"></xsl:apply-templates>
                               </div>
                               <div class="horizontalunder"> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_C']"></xsl:apply-templates>
                               </div>
                           </div>
                               <div class="horizontal">
                                   <h5 style="font-size: 60%;">TYPOSKRIPT</h5>
                                   <!-- D -->
                                   <div class="horizontalunder"> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_D']"></xsl:apply-templates>
                                   </div>
                                   <!-- G -->
                                   <div class="horizontalunder"> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_G']"></xsl:apply-templates>
                                   </div>
                               </div>
                           <div class="horizontal">
                               <h5 style="font-size: 60%;">TYPOSKRIPT</h5>
                               <!-- E -->
                               <div class="horizontalunder"> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_E']"></xsl:apply-templates>
                               </div>
                               <!-- H -->
                               <div class="horizontalunder"> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_H']"></xsl:apply-templates>
                               </div>
                           </div>
                           <div class="horizontal">
                               <h5 style="font-size: 60%;">TYPOSKRIPT</h5>
                               <!-- F -->
                               <div class="horizontalunder"> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_F']"></xsl:apply-templates>
                               </div>
                               <!-- I -->
                               <div class="horizontalunder"> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_I']"></xsl:apply-templates>
                               </div>
                           </div>
                               <div class="horizontal">
                                   <h5 style="font-size: 60%;">TYPOSKRIPT VOR DRUCK</h5>
                                   <!-- J -->
                                   <div> <xsl:apply-templates select="//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_J']"></xsl:apply-templates>
                                   </div>
                               </div>
                           <div class="horizontal">
                               <h5 style="font-size: 60%;">Druckversion</h5>
                               <!-- Druck -->
                               <div> <xsl:apply-templates select="//kofler:finalPhrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase']"></xsl:apply-templates>
                               </div>
                           </div>
                           </div>
                       </div>
                  </div>
                   <div class="col-md-2" style="font-size: 60%; text-align:center">
                       <br></br>
                       <br></br>
                       <div onmouseover="this.style.background='#ededed';" onmouseleave="this.style.background='white';" style="box-shadow: 0 2px 4px rgba(0,0,0,.1);">
                           <h4 style="text-decoration: underline">Legende:</h4>
                           <p><span style="color:#c0c41a;">&#9608;</span><xsl:text> = "gleich wie"; </xsl:text></p>
                           <p><span style="color:#0e9833;">&#9608;</span><xsl:text> = "bleibt gleich"; </xsl:text></p>
                           <p><span style="color:#f5830a;">&#9608;</span><xsl:text> = "anders als"; </xsl:text></p>
                           <p><span style="color:#0c8c98;">&#9608;</span><xsl:text> = "wird zu"; </xsl:text></p>
                           <p><span style="color:#fe3d2d;">&#9608;</span><xsl:text> = "wird nicht fortgeführt"; </xsl:text></p>
                           <p><span style="color:#808080;">Text</span><xsl:text> = mit Bleistift geschrieben</xsl:text></p>
                           <p><span style="color:#000000;">Text</span><xsl:text> = mit Schreibmaschine geschrieben</xsl:text></p>
                           <p><span style="color: blue;">Text</span><xsl:text> = mit Tinte geschrieben</xsl:text></p>
                           <p><span class="falladel">Text</span><xsl:text> = im Original durchgestrichen</xsl:text></p>
                           <p><xsl:text>Revisionen: </xsl:text><a style="text-decoration: underline;" href="/o:kofleraural.editorialdec" target="_blank">Editionsrichtlinien</a></p></div>
                   </div>
               </article>
                   
           </xsl:when> 
               <!-- mode moorphing Visualisierung mit morphing effekt-->
               <xsl:when test="$mode = 'morphing'"> 
               <!-- Überschrift und Erklärtext -->
               <article class="col-md-12" style="margin-bottom: 10px; margin-top: 20px;"> 
                   <div class="row">
                       <div class="col-md-6"><h3>Fallbeispiel 'Schreib-Szene mit Radio / Herzschlag'</h3>
                           <p>Druck: Am Schreibtisch, 2018, S. 101.</p>
                           <p style="font-size:80%">(11.W7.1: <a style="color:#a48d96" href="{concat($server, '/o:kofleraural.11-W7-1#Mappe3_0104r')}">0104r</a>)</p>
                           <p style="line-height: 90% !important;"> <xsl:text>"</xsl:text><xsl:value-of select="//kofler:Paragraph/rdfs:label"/><xsl:text>"</xsl:text></p>
                       </div>
                       <div class="col-md-6" style="background-color: #f2f5f4">
                           <h5 style="font-size: 85%;">Kommentar:</h5>
                           <p class="falleditcomment">
                               <xsl:value-of select="//kofler:finalPhrase/kofler:editorialComment"/>
                           </p>
                       </div>
                   </div>
               </article>
              <!-- Visualisierung morphing // metadaten zu Phrasen werden hier erzeugt und für die kofler:words werden die Templates aufgerufen -->
             <article id="fallcontent3" class="col-md-12 fallcontent" style="margin-bottom: 10px; margin-top: 20px;">
                 <div class="row col-md-12"> 
                    <h4>Morphing Visualisierung</h4>
                </div>
                 <div class="col-md-12">
                     
                     <div class="col-md-8" style="background-color: #ededed;">
                      
                         <div class="row">
                             <div id="satz1" class="divmorph col-md-4">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase A. In: 11.W7.2, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_A']/kofler:onPage}">Phrase A: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_A_')]">
                                 <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                             </xsl:apply-templates>
                             <xsl:text> </xsl:text> <button class="morph-btnx3"><xsl:text> </xsl:text></button>
                           </div>
                             <div id="satz2" class="divmorph col-md-4" style="display: none;">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase B. In: 11.W7.2, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_B']/kofler:onPage}">Phrase B: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_B_')]">
                             <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                         </xsl:apply-templates>
                             <xsl:text> </xsl:text> <button class="morph-btn2"><xsl:text> </xsl:text></button>
                         </div> 
                             <div id="satz3" class="divmorph col-md-4" style="display: none;">
                                 <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase C. In: 11.W7.2, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_C']/kofler:onPage}">Phrase C: </span><xsl:text> </xsl:text>
                                 <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_C_')]">
                                     <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                                 </xsl:apply-templates>
                                 <xsl:text> </xsl:text> <button class="morph-btn2"><xsl:text> </xsl:text></button>
                             </div>
                         </div>
                         <div class="row">
                             <div id="satz4" class="divmorph col-md-6" style="display: none;">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase D. In: 11.W7.3, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_D']/kofler:onPage}">Phrase D: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_D_')]">
                             <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                         </xsl:apply-templates>
                             <xsl:text> </xsl:text> <button class="morph-btn2"><xsl:text> </xsl:text></button>
                         </div>
                             <div id="satz5" class="divmorph col-md-6" style="display: none;">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase E. In: 11.W7.3, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_G']/kofler:onPage}">Phrase G: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_G_')]">
                                 <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                             </xsl:apply-templates>
                             <xsl:text> </xsl:text> <button class="morph-btn2"><xsl:text> </xsl:text></button>
                         </div>
                         </div>
                         <div class="row"> 
                             <div id="satz6" class="divmorph col-md-6" style="display: none;">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase F. In: 11.W7.3, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_E']/kofler:onPage}">Phrase E: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_E_')]">
                                 <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                             </xsl:apply-templates>
                             <xsl:text> </xsl:text> <button class="morph-btn2"><xsl:text> </xsl:text></button>
                         </div>
                            <div id="satz7" class="divmorph col-md-6" style="display: none;">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase G. In: 11.W7.3, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_H']/kofler:onPage}">Phrase H: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_H_')]">
                                 <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                             </xsl:apply-templates>
                             <xsl:text> </xsl:text> <button class="morph-btn2"><xsl:text> </xsl:text></button>
                         </div>
                        </div>
                         <div class="row"> 
                             <div id="satz8" class="divmorph col-md-6" style="display: none;">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase H. In: 11.W7.3, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_F']/kofler:onPage}">Phrase F: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_F_')]">
                             <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                         </xsl:apply-templates>
                             <xsl:text> </xsl:text> <button class="morph-btn2"><xsl:text> </xsl:text></button>
                         </div>
                             <div id="satz9" class="divmorph col-md-6" style="display: none;">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase I. In: 11.W7.3, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_I']/kofler:onPage}">Phrase I: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_I_')]">
                                 <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                             </xsl:apply-templates>
                             <xsl:text> </xsl:text> <button class="morph-btn"><xsl:text> </xsl:text></button>
                         </div>
                        </div>
                       <div class="row">  
                           <div id="satz10" class="divmorph" style="display: none;">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Phrase J. In: 11.W7.1, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_J']/kofler:onPage}">Phrase J: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_J_')]">
                                 <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                             </xsl:apply-templates>
                             <xsl:text> </xsl:text> <button class="morph-btn"><xsl:text> </xsl:text></button>
                         </div>
                         <div id="satz11" class="divmorph" style="display: none;">
                             <span class="morphspan" data-toggle="tooltip" data-placement="top" title="Am Schreibtisch, Blatt: {//kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_fw']/kofler:onPage}">Druck: </span><xsl:text> </xsl:text>
                             <xsl:apply-templates select="//kofler:finalWord[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_fw')]">
                                 <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
                             </xsl:apply-templates>
                             <xsl:text> </xsl:text>   <button class="reset-btn"><xsl:text> </xsl:text></button>
                         </div>
                       </div>
                         
                         
                       
                        
                         
                     </div>
                    
                     
                     <div class="col-md-1">
                         
                        <xsl:text> </xsl:text>
                       
                     </div>
                     <div class="col-md-3" style="font-size: 70%; box-shadow: 0 2px 4px rgba(0,0,0,.1);" onmouseover="this.style.background='#ededed';" onmouseleave="this.style.background='white';">
                         <h4 style="text-decoration: underline">Legende:</h4>
                         <p><span style="color:#0e9833;">Text</span><xsl:text> = "gleich wie"</xsl:text></p>
                         <p><span style="color:#f5830a;">Text</span><xsl:text> = "anders als"</xsl:text></p>
                         <p><span style="color:#0c8c98;">Text</span><xsl:text> = "wird zu"</xsl:text></p>
                         <p><span style="color:#808080;">Text</span><xsl:text> = "bleibt gleich"</xsl:text></p>
                         <p><span style="color:#000000;">Text</span><xsl:text> = "neu"</xsl:text></p>
                         <p>Klicken Sie den Pfeil, um die nächste Stufe anzuzeigen.</p>
                     </div>
                 </div>
               
                 
              
                 
                   </article>
            </xsl:when>
               
               <!-- Graph Visualisierung -->
               <xsl:when test="$mode = 'graph'">
                <!-- Überschrift und Erklärtext -->
                <article class="col-md-12" style="margin-bottom: 10px; margin-top: 20px;"> 
                    
                    <div class="row">
                        <div class="col-md-6"><h3>Fallbeispiel 'Schreib-Szene mit Radio / Herzschlag'</h3>
                            <p>Druck: Am Schreibtisch, 2018, S. 101.</p>
                            <p style="font-size:80%">(11.W7.1: <a style="color:#a48d96" href="{concat($server, '/o:kofleraural.11-W7-1#Mappe3_0104r')}">0104r</a>)</p>
                            <p style="line-height: 90% !important;"> <xsl:text>"</xsl:text><xsl:value-of select="//kofler:Paragraph/rdfs:label"/><xsl:text>"</xsl:text></p>
                        </div>
                        <div class="col-md-6" style="background-color: #f2f5f4">
                            <h5 style="font-size: 85%;">Kommentar:</h5>
                            <p class="falleditcomment">
                                <xsl:value-of select="//kofler:finalPhrase/kofler:editorialComment"/>
                            </p>
                        </div>
                    </div>
                </article>
                <!-- Visualisierung graph -->
             <article id="fallcontent4" class="col-md-12 fallcontent" style="margin-bottom: 10px; margin-top: 20px;">
                <div class="row col-md-12"> 
                    <h4>Graph-Visualisierung</h4>
                    <style>.node text {
                        pointer-events: none;
                        font-size: 12px;
                        }
                        
                      #graph1 {
                        border: 1px solid #ccc; /* Optional: Add a visible frame */
                        box-shadow: 1px 1px 2px 2px #a48d96;
                        }</style>
                   
                        
                        
                    <div class="col-md-12"><svg id="graph1" width="1150" height="800" style="overflow: hidden;"></svg></div>
                       
                        
                    
                    <script type="text/javascript" src="https://d3js.org/d3.v7.min.js"><xsl:text> </xsl:text></script>
                    <script src="{concat($gamsdev, '/kofleraural/js/graphfall5.js')}"><xsl:text> </xsl:text></script>
                </div>
            </article>
            </xsl:when> 
           </xsl:choose>   
        </section>
       
           
    
    </xsl:template>


    
<!-- Alle Phrasen templates A-H + finale Phrase  und Wort Templates  -->
    <!-- Phrasen Templates rufen Wort templates auf // Phrasen templates werden nur bei vertikal und horizontal verwendet // wort templates auch beim Morphing  -->
    <!-- Phrase A -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_A']">
     
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_A_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.2, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>,</xsl:text><br/>
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
            </svg></a></xsl:for-each>
            <xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_A_')]">
           
           <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
               <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                   <xsl:attribute name="class">falladel</xsl:attribute>
               </xsl:if>
               <xsl:choose>
                   <xsl:when test="$mode = '' or $mode = 'horizontal'">
               <xsl:choose>
                   <xsl:when test="current()/child::kofler:sameAs">
                       <xsl:attribute name="onmouseover">this.style.background='#c0c41a';</xsl:attribute>
                       <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                   </xsl:when>
                   <xsl:when test="current()/child::kofler:remains">
                       <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                       <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                   </xsl:when>
                   <xsl:when test="current()/child::kofler:becomes">
                       <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                       <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                   </xsl:when>
                   <xsl:otherwise>
                       <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                       <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                   </xsl:otherwise>
               </xsl:choose>
               
               <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                   <xsl:choose>
                       <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                           <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                       </xsl:when>
                       <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                           <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                       </xsl:when>
                       <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                           <xsl:attribute name="style">color: black !important;</xsl:attribute>
                       </xsl:when>
                       
                   </xsl:choose>
                   
                   <xsl:attribute name="title">
                       
                       <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                       <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                           <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                       </xsl:if></xsl:attribute>
                   <!-- für abstand ein if wegen satzzeichen -->
                   <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                   </xsl:when>
                   
                   <xsl:when test="$mode = 'morphing'">
                       <xsl:attribute name="class">morphspan</xsl:attribute>
                           <xsl:choose>
                               <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                   <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                               </xsl:when>
                               <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                   <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                               </xsl:when>
                               <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                   <xsl:attribute name="style">color: black !important;</xsl:attribute>
                               </xsl:when>
                               
                           </xsl:choose>
                        
                           <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                   </xsl:when>
               </xsl:choose>
           </span>
       
        <!-- code für wort highlighting on hover -->
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal' or not($mode = 'morphing') ">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
   </xsl:template> 
    
  
    
    
    
    
    <!-- Phrase B -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_B']">
        <!-- Phrase B -->
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_B_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.2, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>,</xsl:text><br/>
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                </svg></a></xsl:for-each><xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_B_')]">
        
        <!--<xsl:sort select="number(current()/kofler:hasConsecutiveNumber)"/>
           -->
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = '' or $mode = 'horizontal'">
            <xsl:choose>
                <xsl:when test="current()/child::kofler:sameAs">
                    <xsl:attribute name="onmouseover">this.style.background='#c0c41a';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:remains">
                    <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:becomes">
                    <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            
                    <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                        <xsl:choose>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                <xsl:attribute name="style">color: black !important;</xsl:attribute>
                            </xsl:when>
                            
                        </xsl:choose>
                        
                        <xsl:attribute name="title">
                            
                            <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                            <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                                <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                            </xsl:if></xsl:attribute>
                        <!-- für abstand ein if wegen satzzeichen -->
                        <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                </xsl:when>
                
                <xsl:when test="$mode = 'morphing'">
                     <xsl:attribute name="class">morphspan</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                            <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                            <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                            <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                            <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color: black !important;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                   
                    <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                </xsl:when>
           </xsl:choose>
        </span>
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal'">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
    </xsl:template> 
    
    <!-- Phrase C -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_C']">
        <!-- Phrase C -->
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_C_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.2, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>,</xsl:text><br/>
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                </svg></a></xsl:for-each><xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_C_')]">
        
        <!--<xsl:sort select="number(current()/kofler:hasConsecutiveNumber)"/>
           -->
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = '' or $mode = 'horizontal'">
            <xsl:choose>
                <xsl:when test="current()/child::kofler:sameAs">
                    <xsl:attribute name="onmouseover">this.style.background='#c0c41a';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:remains">
                    <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:becomes">
                    <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
          
                    <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                        <xsl:choose>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                <xsl:attribute name="style">color: black !important;</xsl:attribute>
                            </xsl:when>
                            
                        </xsl:choose>
                        
                        <xsl:attribute name="title">
                            
                            <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                            <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                                <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                            </xsl:if></xsl:attribute>
                        <!-- für abstand ein if wegen satzzeichen -->
                        <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                </xsl:when>
                
                <xsl:when test="$mode = 'morphing'">
                    <xsl:attribute name="class">morphspan</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                            <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                            <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                            <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                            <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color: black !important;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                                      
                    <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                </xsl:when>
            </xsl:choose>
        </span>
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal'">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose> 
    </xsl:template> 
    
    <!-- Phrase D -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_D']">
        <!-- Phrase D -->
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_D_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.3, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>,</xsl:text><br/>
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                </svg></a></xsl:for-each><xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_D_')]">
        
        <!--<xsl:sort select="number(current()/kofler:hasConsecutiveNumber)"/>
           -->
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = '' or $mode = 'horizontal'">
            <xsl:choose>
                <xsl:when test="current()/child::kofler:sameAs">
                    <xsl:attribute name="onmouseover">this.style.background='#c0c41a';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:remains">
                    <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:becomes">
                    <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
           
                    <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                        <xsl:choose>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                <xsl:attribute name="style">color: black !important;</xsl:attribute>
                            </xsl:when>
                            
                        </xsl:choose>
                        
                        <xsl:attribute name="title">
                            
                            <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                            <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                                <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                            </xsl:if></xsl:attribute>
                        <!-- für abstand ein if wegen satzzeichen -->
                        <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                </xsl:when>
                
                <xsl:when test="$mode = 'morphing'">
                     <xsl:attribute name="class">morphspan</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                            <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                            <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                            <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                            <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color: black !important;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                </xsl:when>
            </xsl:choose>
        </span>
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal'">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
    </xsl:template> 
    
    <!-- Phrase E -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_E']">
        <!-- Phrase E -->
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_E_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.3, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>, </xsl:text> 
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                </svg></a></xsl:for-each><xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_E_')]">
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = '' or $mode = 'horizontal'">
            <xsl:choose>
                <xsl:when test="current()/child::kofler:sameAs">
                    <xsl:attribute name="onmouseover">this.style.background='#c0c41a';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:remains">
                    <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:becomes">
                    <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            
                    <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                        <xsl:choose>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                <xsl:attribute name="style">color: black !important;</xsl:attribute>
                            </xsl:when>
                            
                        </xsl:choose>
                        
                        <xsl:attribute name="title">
                            
                            <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                            <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                                <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                            </xsl:if></xsl:attribute>
                        <!-- für abstand ein if wegen satzzeichen -->
                        <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                </xsl:when>
                
                <xsl:when test="$mode = 'morphing'">
                    <xsl:attribute name="class">morphspan</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                            <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                            <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                            <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                            <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color: black !important;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                </xsl:when>
            </xsl:choose>
        </span>
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal'">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose> 
    </xsl:template> 
    
    <!-- Phrase F -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_F']">
        <!-- Phrase F -->
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_F_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.3, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>, </xsl:text> 
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                </svg></a></xsl:for-each><xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_F_')]">
        
        <!--<xsl:sort select="number(current()/kofler:hasConsecutiveNumber)"/>
           -->
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = '' or $mode = 'horizontal'">
            <xsl:choose>
                <xsl:when test="current()/child::kofler:sameAs">
                    <xsl:attribute name="onmouseover">this.style.background='#c0c41a';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:remains">
                    <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:becomes">
                    <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
          
                    <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                        <xsl:choose>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                <xsl:attribute name="style">color: black !important;</xsl:attribute>
                            </xsl:when>
                            
                        </xsl:choose>
                        
                        <xsl:attribute name="title">
                            
                            <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                            <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                                <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                            </xsl:if></xsl:attribute>
                        <!-- für abstand ein if wegen satzzeichen -->
                        <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                </xsl:when>
                
                <xsl:when test="$mode = 'morphing'">
                     <xsl:attribute name="class">morphspan</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                            <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                            <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                            <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                            <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color: black !important;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                </xsl:when>
            </xsl:choose>
        </span>
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal'">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose> 
    </xsl:template> 
    
    <!-- Phrase G -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_G']">
        <!-- Phrase G -->
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_G_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.3, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>, </xsl:text> 
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                </svg></a></xsl:for-each><xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_G_')]">
        
        <!--<xsl:sort select="number(current()/kofler:hasConsecutiveNumber)"/>
           -->
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = '' or $mode = 'horizontal'">
            <xsl:choose>
                <xsl:when test="current()/child::kofler:sameAs">
                    <xsl:attribute name="onmouseover">this.style.background='#c0c41a';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:remains">
                    <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:becomes">
                    <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
           
                    <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                        <xsl:choose>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                <xsl:attribute name="style">color: black !important;</xsl:attribute>
                            </xsl:when>
                            
                        </xsl:choose>
                        
                        <xsl:attribute name="title">
                            
                            <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                            <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                                <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                            </xsl:if></xsl:attribute>
                        <!-- für abstand ein if wegen satzzeichen -->
                        <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                </xsl:when>
                
                <xsl:when test="$mode = 'morphing'">
                     <xsl:attribute name="class">morphspan</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                            <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                            <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                            <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                            <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color: black !important;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                </xsl:when>
            </xsl:choose>
        </span>
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal'">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
    </xsl:template> 
    
    <!-- Phrase H -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_H']">
        <!-- Phrase H -->
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_H_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.3, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>, </xsl:text> 
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                </svg></a></xsl:for-each><xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_H_')]">
        
        <!--<xsl:sort select="number(current()/kofler:hasConsecutiveNumber)"/>
           -->
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = '' or $mode = 'horizontal'">
            <xsl:choose>
                <xsl:when test="current()/child::kofler:remains"><!-- kofler:sameAs kofler:becomes kofler:sameAs kofler:differentFrom -->
                    <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:becomes">
                    <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current()/child::kofler:sameAs">
                    <xsl:attribute name="onmouseover">this.style.fontWeight='bold';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.fontWeight='normal';</xsl:attribute>
                </xsl:when>
                <xsl:when test="current-group()/child::kofler:differentFrom">
                    <xsl:attribute name="onmouseover">this.style.textDecoration='underline';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.textDecoration='none';</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                    <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
          
                    <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                        <xsl:choose>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                <xsl:attribute name="style">color: black !important;</xsl:attribute>
                            </xsl:when>
                            
                        </xsl:choose>
                        
                        <xsl:attribute name="title">
                            
                            <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                            <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                                <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                            </xsl:if></xsl:attribute>
                        <!-- für abstand ein if wegen satzzeichen -->
                        <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                </xsl:when>
                
                   <xsl:when test="$mode = 'morphing'">
                      <xsl:attribute name="class">morphspan</xsl:attribute>
                       <xsl:choose>
                           <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                               <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                           </xsl:when>
                           <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                               <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                           </xsl:when>
                           <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                               <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                           </xsl:when>
                           <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                               <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                           </xsl:when>
                           <xsl:otherwise>
                               <xsl:attribute name="style">color: black !important;</xsl:attribute>
                           </xsl:otherwise>
                       </xsl:choose>
                        
                           <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                   </xsl:when>
               </xsl:choose>
 </span>
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal'">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
   
    </xsl:template> 
    
    <!-- Phrase I -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_I']">
        <!-- Phrase I -->
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_I_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.3, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>, </xsl:text> 
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                </svg></a></xsl:for-each><xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_I_')]">
        
        <!--<xsl:sort select="number(current()/kofler:hasConsecutiveNumber)"/>
           -->
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = '' or $mode = 'horizontal'">
                    <xsl:choose>
                        <xsl:when test="current()/child::kofler:remains"><!-- kofler:sameAs kofler:becomes kofler:sameAs kofler:differentFrom -->
                            <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/child::kofler:becomes">
                            <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/child::kofler:sameAs">
                            <xsl:attribute name="onmouseover">this.style.fontWeight='bold';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.fontWeight='normal';</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current-group()/child::kofler:differentFrom">
                            <xsl:attribute name="onmouseover">this.style.textDecoration='underline';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.textDecoration='none';</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                        <xsl:choose>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                <xsl:attribute name="style">color: black !important;</xsl:attribute>
                            </xsl:when>
                            
                        </xsl:choose>
                        
                        <xsl:attribute name="title">
                            
                            <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                            <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                                <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                            </xsl:if></xsl:attribute>
                        <!-- für abstand ein if wegen satzzeichen -->
                        <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                </xsl:when>
                
                <xsl:when test="$mode = 'morphing'">
                    <xsl:attribute name="class">morphspan</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                            <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                            <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                            <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                            <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color: black !important;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                </xsl:when>
            </xsl:choose>
        </span>
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal'">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
        
    </xsl:template> 
    <!-- Phrase J -->
    <xsl:template match="kofler:Phrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_J']">
        <!-- Phrase J -->
        <xsl:apply-templates select="//kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_J_')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
            
        </xsl:apply-templates>
        
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>In: 11.W7.1, Blatt: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
            <xsl:text>, </xsl:text> 
            <xsl:text>Transkription: </xsl:text>
            <xsl:for-each select="current()/kofler:Transcription">
                <a href="{substring-after(current()/@rdf:resource, 'uni-graz.at')}" target="_blank"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor" class="bi bi-book" viewBox="0 0 16 16">
                    <path d="M1 2.828c.885-.37 2.154-.769 3.388-.893 1.33-.134 2.458.063 3.112.752v9.746c-.935-.53-2.12-.603-3.213-.493-1.18.12-2.37.461-3.287.811zm7.5-.141c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
                </svg></a></xsl:for-each><xsl:text> ,  </xsl:text>
            <span title="{current()/kofler:revisionComment}"  data-toggle="tooltip" data-placement="right">
                Anmerkung<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
                    <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                    <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0"/>
                </svg></span>
        </p>
    </xsl:template>
    
    <xsl:template match="kofler:Word[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_J_')]">
        
        <!--<xsl:sort select="number(current()/kofler:hasConsecutiveNumber)"/>
           -->
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = '' or $mode = 'horizontal'">
                    <xsl:choose>
                        <xsl:when test="current()/child::kofler:remains"><!-- kofler:sameAs kofler:becomes kofler:sameAs kofler:differentFrom -->
                            <xsl:attribute name="onmouseover">this.style.background='#0e9833';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/child::kofler:becomes">
                            <xsl:attribute name="onmouseover">this.style.background='#0c8c98';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/child::kofler:sameAs">
                            <xsl:attribute name="onmouseover">this.style.fontWeight='bold';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.fontWeight='normal';</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current-group()/child::kofler:differentFrom">
                            <xsl:attribute name="onmouseover">this.style.textDecoration='underline';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.textDecoration='none';</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="onmouseover">this.style.background='#fe3d2d';</xsl:attribute>
                            <xsl:attribute name="onmouseleave">this.style.background='transparent';</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                        <xsl:choose>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                                <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                                <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                                <xsl:attribute name="style">color: black !important;</xsl:attribute>
                            </xsl:when>
                            
                        </xsl:choose>
                        
                        <xsl:attribute name="title">
                            
                            <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                            <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text>
                                <xsl:for-each select="kofler:hasRevision/@rdf:resource"> <xsl:value-of select="substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:for-each>
                            </xsl:if></xsl:attribute>
                        <!-- für abstand ein if wegen satzzeichen -->
                        <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
                </xsl:when>
                
                <xsl:when test="$mode = 'morphing'">
                    <xsl:attribute name="class">morphspan</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                            <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                            <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                            <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                            <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color: black !important;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                </xsl:when>
            </xsl:choose>
        </span>
        <xsl:choose>
            <xsl:when test="$mode = '' or $mode = 'horizontal'">
                <xsl:if test="current()/child::kofler:sameAs">
                    <script>
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#c0c41a";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:sameAs">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:remains">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:remains">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
                <xsl:if test="current()/child::kofler:becomes">
                    <script>
                        
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseover", highlightWord);
                        document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").addEventListener("mouseleave", removeHighlight);
                        
                        
                        function highlightWord() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "#0e9833";
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").scrollIntoView({ behavior: "instant",  block: "nearest" });
                        </xsl:for-each>
                        }
                        
                        function removeHighlight() {
                        <xsl:for-each select="current()/child::kofler:becomes">
                            document.getElementById("<xsl:value-of select="substring-after(current()/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/>").style.backgroundColor = "transparent";
                        </xsl:for-each>
                        }
                        
                    </script>
                </xsl:if>
            </xsl:when>
        </xsl:choose>
        
    </xsl:template> 
   
    
    
    
    
    <xsl:template match="kofler:finalPhrase[@rdf:about ='https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase']">
        <xsl:apply-templates select="//kofler:finalWord[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_fw')]">
            <xsl:sort select="kofler:hasConsecutiveNumber" data-type="number" order="ascending" />
        </xsl:apply-templates>
        <p style="margin-top: 1rem; color: #a48d96;"><xsl:text>Am Schreibtisch, Seite: </xsl:text><xsl:value-of select="current()/kofler:onPage"/>
        </p>
    </xsl:template>
    <xsl:template match="kofler:finalWord[starts-with(@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#AmSchreibtisch_f5_Phrase_fw')]">
        
        <!--<xsl:sort select="number(current()/kofler:hasConsecutiveNumber)"/>
           -->
        
        <span id="{substring-after(current()/@rdf:about, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')}"><!-- class="fallp"-->
            <xsl:if test="current()/kofler:hasRevision[@rdf:resource = 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#DL_WR_ST_Revision']">
                <xsl:attribute name="class">falladel</xsl:attribute>
            </xsl:if>
            <xsl:choose>
                <xsl:when test="$mode = 'morphing'">
                    <xsl:attribute name="class">morphspan</xsl:attribute>
                    <xsl:choose>
                        <xsl:when test="current()/@rdf:about = ..//kofler:becomes/@rdf:resource">
                            <xsl:attribute name="style">color: #208a12 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:remains/@rdf:resource">
                            <xsl:attribute name="style">color: #286b28 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:sameAs/@rdf:resource">
                            <xsl:attribute name="style">color: #097f96 !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="current()/@rdf:about = ..//kofler:differentFrom/@rdf:resource">
                            <xsl:attribute name="style">color: #f5830a !important;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color: black !important;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/>
                </xsl:when>
                
               <xsl:otherwise>
            <a href="{substring-after(current(), 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele')}" data-toggle="tooltip" data-placement="top">
                <xsl:choose>
                    <xsl:when test="current()/kofler:writtenWith[. = 'pencil']">
                        <xsl:attribute name="style">color: grey !important;</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="current()/kofler:writtenWith[. = 'pen']">
                        <xsl:attribute name="style">color: blue !important;</xsl:attribute>
                    </xsl:when>
                    <xsl:when test="current()/kofler:writtenWith[. = 'Schreibmaschine']">
                        <xsl:attribute name="style">color: black !important;</xsl:attribute>
                    </xsl:when>
                    
                </xsl:choose>
                
                <xsl:attribute name="title">
                    
                    <xsl:text>Schreibmaterial: </xsl:text><xsl:value-of select="current()/kofler:writtenWith"/>
                    <xsl:if test="current()/kofler:hasRevision"><xsl:text> / </xsl:text><xsl:text>Revision: </xsl:text><xsl:value-of select="substring-after(current()/kofler:hasRevision/@rdf:resource, 'https://gams.uni-graz.at/o:kofleraural.fallbeispiele#')"/></xsl:if>
                </xsl:attribute>
                <!-- für abstand ein if wegen satzzeichen -->
                <xsl:text> </xsl:text><xsl:value-of select="current()/child::rdfs:label"/></a>
               </xsl:otherwise>
            </xsl:choose>
        </span>
        
    </xsl:template> 

</xsl:stylesheet>
