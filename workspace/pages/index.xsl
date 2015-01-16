<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/ninja.xsl"/>
<xsl:import href="../utilities/nl2br.xsl"/>

<xsl:output method="xml"
    doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="yes" />

<xsl:template match="/">
<html>
    <head>
        <title>Remember</title>
        <link rel="icon" href="{$workspace}/assets/img/remember_icon-16.png"/>
        <link rel="stylesheet" href="{$workspace}/assets/css/styles.css"/>
        <link rel="stylesheet" href="{$root}/extensions/editor_for_symphony/assets/editor/editor.css"/>
        <script type="text/javascript" src="{$root}/symphony/assets/js/lib/jquery.js"></script>
        <script type="text/javascript" src="{$root}/extensions/editor_for_symphony/assets/editor/editor.js"></script>
        <script type="text/javascript" src="{$root}/extensions/editor_for_symphony/assets/publish.editor.js"></script>
    </head>
    <body>
        <page>
            <h1>Remember</h1>
            <form method="post" action="{$current-url}/" enctype="multipart/form-data">
                <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
                <input name="redirect" type="hidden" value="{$root}" />
                <label>
                    <xsl:if test="//events/create-entry[@result = 'error']/entry">
                        <xsl:attribute name="class">error</xsl:attribute>
                        <small>What??</small>
                    </xsl:if>
                    <textarea class="markdown" name="fields[entry]" placeholder="What's up?">
                        <xsl:value-of select="//events/create-entry/post-values/entry"/>
                    </textarea>
                </label>
                <input name="action[create-entry]" type="submit" />
                <control>
                    <a href="{$root}/admin/publish/entries/">Admin entries</a>
                    <!-- <xsl:text> </xsl:text> -->
                    <!-- <a href="#">Toggle controls</a> -->
                    <xsl:text> </xsl:text>
                    <a href="{$root}/?debug">Devkit tools (debug this page)</a>
                </control>
            </form>
            <entries>
                <xsl:apply-templates select="data/entries/reply[@link-handle = 'none']/entry"/>
            </entries>
        </page>
    </body>
</html>

</xsl:template>


<xsl:template match="data/entries/reply/entry">
    <xsl:variable name="uid" select="uid" />

    <entry id="{uid}">
        <xsl:apply-templates select="entry[@mode = 'formatted']/*" mode="html"/>
        <control>
            <a class="hash" href="{$root}/#{uid}"><xsl:value-of select="uid"/></a>
            <xsl:text> </xsl:text>
            <system>
                <a href="{$root}/admin/publish/entries/edit/{@id}/">edit</a>
                <xsl:text> </xsl:text>
                <a href="{$root}/admin/publish/entries/new/?prepopulate[8]={@id}">reply</a>
                <xsl:text> </xsl:text>
                <!-- Use JavaScript in the url to perform the Delete trigger (see https://www.youtube.com/watch?v=1pM2jbSDnyI) -->
                <!-- <a href="{$root}/admin/publish/entries/edit/{@id}/">delete</a> -->
                <!-- <xsl:text> </xsl:text> -->
                <small>Created <xsl:value-of select="system-date/created"/>, modified: <xsl:value-of select="system-date/modified"/>.</small>
            </system>
        </control>

        <xsl:if test="count(//data/entries/reply[@value = $uid]/entry) > 0">
            <reply>
                <xsl:apply-templates select="//data/entries/reply[@value = $uid]/entry"/>
            </reply>
        </xsl:if>
    </entry>
</xsl:template>

</xsl:stylesheet>
