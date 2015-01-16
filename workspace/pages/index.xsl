<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
    doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
    doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
    omit-xml-declaration="yes"
    encoding="UTF-8"
    indent="yes" />

<xsl:template match="/">
    <style>
        html {
            box-sizing: border-box;
            height: 100%;
            max-height: 100%;
        }

        *, *:before, *:after {
            box-sizing: inherit;
        }

        body {
            color: #333;
        }

        a {
            cursor: pointer;
        }

        hr {
            height: 1px;
            background: silver;
            border: none;
            width: 80%;
            margin: 1em auto;
        }
        
        page {
            display: block;
            position: relative;
            max-width: 38em;
            margin: 0 auto;
            padding: 3em 0;
        }
        
        form {
            display: block;
            position: relative;
            text-align: right;
            margin: 0;
        }

        textarea {
            width: 100%;
            height: 5em;
            padding: 1em;
            margin: 0;
            max-width: 100%;
        }

        input[type="submit"] {
            padding: 0.5em 1em;
            width: 100%;
        }

        entries {
            display: block;
            position: relative;
            padding: 2em 0;
            max-width: 38em;
            margin: 0 auto;
        }

        entry {
            display: block;
            position: relative;
            margin: 1em 0;
            padding: 0 0 0 1em;
            opacity: 0.7;
            border-left: 1px solid white; 
        }

        entry:hover {
            opacity: 1;
            border-left: 1px solid silver;
        }

        reply entry {
            margin: 1em 0 1em 1em;
            padding: 0 0 0 1em;
        }

        reply {
            display: block;
            position: relative;
        }

        entry:target {
            -webkit-animation: highlight 2s ease;
            animation: highlight 2s ease;
        }

        @-webkit-keyframes highlight {
            from {
                background: orange;
            }
            to {
                background: transparent;
            }
        }

        @keyframes highlight {
            from {
                background: orange;
            }
            to {
                background: transparent;
            }
        }

        control {
            display: block;
            position: relative;
            margin: 1em 0 0;
            color: #444;
            transition: all 1s ease;
        }

        control a {
            margin: 0 0 0 0.5em;
            display: inline-block;
            position: relative;
            font-size: 0.8em;
            padding: 0.2em 0.4em;
            text-align: center;
            border-radius: 0.1em;
            color: inherit;
            border: 1px solid white;
        }

        control a:hover {
            border: 1px solid silver;
        }
        
        entry control,
        entry control system {
            visibility: hidden;
            opacity: 0;
            transition: visibility 1s ease, opacity 1s ease;
            margin: 0;
            transition-delay: 1s;
        }

        entry:hover control,
        entry control hash:hover + system,
        entry control system:hover {
            visibility: visible;
            opacity: 1;
            transition-delay: 0s;
        }

        hash {
            display: inline-block;
            position: relative;
            width: 5em;
            cursor: alias;
            background: #efefef;
            font-size: 0.8em;
            padding: 0.2em 0.4em;
            text-align: center;
        }
    </style>

    <page>
        <h1>
            <xsl:text>Remember</xsl:text>
        </h1>
        <form method="post" action="{$current-url}/" enctype="multipart/form-data">
            <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
            <input name="redirect" type="hidden" value="{$root}" />
            <label>
                <textarea name="fields[entry]" placeholder="What's up?"></textarea>
            </label><br/>
            <input name="action[create-entry]" type="submit" />
            <control>
                <a href="{$root}/admin/publish/entries/">Admin entries</a>
                <xsl:text> </xsl:text>
                <a href="#">Toggle controls</a>
                <xsl:text> </xsl:text>
                <a href="{$root}/?debug">Devkit tools (debug this page)</a>
            </control>
        </form>
        <entries>
            <xsl:apply-templates select="data/entries/reply[@link-handle = 'none']/entry"/>
        </entries>
    </page>
</xsl:template>


<xsl:template match="data/entries/reply/entry">
    <xsl:variable name="uid" select="uid" />

    <entry id="{uid}">
        <xsl:value-of select="entry"/>
        <control>
            <hash><xsl:value-of select="uid"/></hash>
            <xsl:text> </xsl:text>
            <system>
                <a href="{$root}/admin/publish/entries/new/?prepopulate[8]={@id}">reply</a>
                <xsl:text> </xsl:text>
                <a href="{$root}/admin/publish/entries/edit/{@id}/">edit</a>
                <xsl:text> </xsl:text>
                <!-- Use JavaScript in the url to perform the Delete trigger (see https://www.youtube.com/watch?v=1pM2jbSDnyI) -->
                <a href="{$root}/admin/publish/entries/edit/{@id}/">delete</a>
                <xsl:text> </xsl:text>
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
