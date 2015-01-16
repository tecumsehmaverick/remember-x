<?php

require_once TOOLKIT . '/class.datasource.php';

class datasourceentries extends SectionDatasource
{
    public $dsParamROOTELEMENT = 'entries';
    public $dsParamORDER = 'desc';
    public $dsParamGROUP = '8';
    public $dsParamPAGINATERESULTS = 'no';
    public $dsParamLIMIT = '100';
    public $dsParamSTARTPAGE = '1';
    public $dsParamREDIRECTONEMPTY = 'no';
    public $dsParamREDIRECTONFORBIDDEN = 'no';
    public $dsParamREDIRECTONREQUIRED = 'no';
    public $dsParamPARAMOUTPUT = array(
        'uid'
        );
    public $dsParamSORT = 'system:creation-date';
    public $dsParamHTMLENCODE = 'no';
    public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

    public $dsParamINCLUDEDELEMENTS = array(
        'system:date',
        'uid',
        'reply',
        'creation-date',
        'modified-date',
        'entry',
        'meta-description',
        'meta-images',
        'meta-keywords'
    );
    
    public $dsParamINCLUDEDASSOCIATIONS = array(
        'reply' => array(
            'section_id' => '1',
            'field_id' => '2',
            'elements' => array(
                'uid',
                'reply',
                'creation-date',
                'modified-date',
                'entry',
                'meta-description',
                'meta-images',
                'meta-keywords'
            )
        )
    );

    public function __construct($env = null, $process_params = true)
    {
        parent::__construct($env, $process_params);
        $this->_dependencies = array();
    }

    public function about()
    {
        return array(
            'name' => 'Entries',
            'author' => array(
                'name' => 'Bernardo Dias da Cruz',
                'website' => 'http://localhost/remember',
                'email' => 'bernardodiasdacruz@gmail.com'),
            'version' => 'Symphony 2.5.2',
            'release-date' => '2015-01-16T00:43:31+00:00'
        );
    }

    public function getSource()
    {
        return '1';
    }

    public function allowEditorToParse()
    {
        return true;
    }

    public function execute(array &$param_pool = null)
    {
        $result = new XMLElement($this->dsParamROOTELEMENT);

        try{
            $result = parent::execute($param_pool);
        } catch (FrontendPageNotFoundException $e) {
            // Work around. This ensures the 404 page is displayed and
            // is not picked up by the default catch() statement below
            FrontendPageNotFoundExceptionHandler::render($e);
        } catch (Exception $e) {
            $result->appendChild(new XMLElement('error', $e->getMessage() . ' on ' . $e->getLine() . ' of file ' . $e->getFile()));
            return $result;
        }

        if ($this->_force_empty_result) {
            $result = $this->emptyXMLSet();
        }

        if ($this->_negate_result) {
            $result = $this->negateXMLSet();
        }

        return $result;
    }
}