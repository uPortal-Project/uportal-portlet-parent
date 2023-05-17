<?xml version="1.0" encoding="UTF-8"?>
<!--

    Licensed to Apereo under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Apereo licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

-->
<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:ll="https://source.jasig.org/schemas/maven-notice-plugin/license-lookup" 
    version="1.0">
    
    <xsl:template match="/">
        <xsl:apply-templates select="ll:license-lookup"/>
    </xsl:template>
    
    <xsl:template match="ll:license-lookup">
        <xsl:copy>
            <xsl:apply-templates select="@*" />
            <xsl:apply-templates select="ll:artifact">
                <xsl:sort select="ll:groupId"/>
                <xsl:sort select="ll:artifactId"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
    
    
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    

</xsl:stylesheet>