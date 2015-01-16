<?php

require_once TOOLKIT . '/class.event.php';

class eventcreate_entry extends SectionEvent
{
    public $ROOTELEMENT = 'create-entry';

    public $eParamFILTERS = array(
        
    );

    public static function about()
    {
        return array(
            'name' => 'Create Entry',
            'author' => array(
                'name' => 'Bernardo Dias da Cruz',
                'website' => 'http://localhost/remember',
                'email' => 'bernardodiasdacruz@gmail.com'),
            'version' => 'Symphony 2.5.2',
            'release-date' => '2015-01-15T23:08:32+00:00',
            'trigger-condition' => 'action[create-entry]'
        );
    }

    public static function getSource()
    {
        return '1';
    }

    public static function allowEditorToParse()
    {
        return true;
    }

    public static function documentation()
    {
        return '
                <h3>Success and Failure XML Examples</h3>
                <p>When saved successfully, the following XML will be returned:</p>
                <pre class="XML"><code>&lt;create-entry result="success" type="create | edit">
    &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/create-entry></code></pre>
                <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned.</p>
                <pre class="XML"><code>&lt;create-entry result="error">
    &lt;message>Entry encountered errors when saving.&lt;/message>
    &lt;field-name type="invalid | missing" />
...&lt;/create-entry></code></pre>
                <h3>Example Front-end Form Markup</h3>
                <p>This is an example of the form markup you can use on your frontend:</p>
                <pre class="XML"><code>&lt;form method="post" action="{$current-url}/" enctype="multipart/form-data">
    &lt;input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
    &lt;label>UID
        &lt;input name="fields[uid]" type="text" />
    &lt;/label>
    &lt;label>Creation Date
        &lt;input name="fields[creation-date]" type="text" />
    &lt;/label>
    &lt;label>Modified Date
        &lt;input name="fields[modified-date]" type="text" />
    &lt;/label>
    &lt;label>Entry
        &lt;textarea name="fields[entry]" rows="15" cols="50">&lt;/textarea>
    &lt;/label>
    &lt;label>Meta Description
        &lt;textarea name="fields[meta-description]" rows="5" cols="50">&lt;/textarea>
    &lt;/label>
    &lt;label>Meta Images
        &lt;input name="fields[meta-images]" type="file" />
    &lt;/label>
    &lt;label>Meta Keywords
        &lt;input name="fields[meta-keywords]" type="text" />
    &lt;/label>
    &lt;input name="action[create-entry]" type="submit" value="Submit" />
&lt;/form></code></pre>
                <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
                <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
                <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
                <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://localhost/remember/success/" /></code></pre>';
    }

    public function load()
    {
        if (isset($_POST['action']['create-entry'])) {
            return $this->__trigger();
        }
    }

}
