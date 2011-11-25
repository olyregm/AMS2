<?php

// die naechste Zeile kann je nach installation anders sein
// '/../lib/vendor/symfony/lib/autoload/sfCoreAutoload.class.php' - bei installation nach jobeet
require_once '/usr/share/php5/PEAR/symfony/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();

class ProjectConfiguration extends sfProjectConfiguration
{
  public function setup()
  {
    $this->enablePlugins('sfPropelPlugin');
    $this->enablePlugins('sfGuardPlugin');
  }
}
