<?php

require_once(EXTENSIONS . '/markdown_typography/text-formatters/formatter.markdown_typography_germanguillemets.php');

Class formatterSmartypants_typography_germanguillemets extends formatterMarkdown_typography_germanguillemets {

    public function about()
    {
        return array(
            'name' => __('Smartypants Typography') . ' (' . __('German with guillemets') . ')',
            'version' => '1.0',
            'release-date' => '2011-12-22',
            'author' => array(
                'name' => 'Nils Hörrmann',
                'website' => 'http://nilshoerrmann.de',
                'email' => 'post@nilshoerrmann.de'
            ),
            'description' => 'Smartypants and German style typography.'
        );
    }

    public function run($string)
    {
        // Apply SmartyPants
        $string = SmartyPants($string, 1);

        // Refine typography
        $this->refineTypography($string);

        // Return result
        return $string;
    }

}
