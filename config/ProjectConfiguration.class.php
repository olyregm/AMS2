<?php

// die naechste Zeile kann je nach installation anders sein
// '/usr/share/php5/PEAR/symfony/autoload/sfCoreAutoload.class.php'; wenn man die Submodule nicht initialisiert hat und PEAR lokal unter /usr/share/php5/PEAR installiert hat. Eigentlich nicht nötig, da alle symfony Quellen direkt in lib/vendor liegen
//require_once '/usr/share/php5/PEAR/symfony/autoload/sfCoreAutoload.class.php';
require_once dirname(__FILE__).'/lib/vendor/symfony/lib/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();

class ProjectConfiguration extends sfProjectConfiguration
{
  public function setup()
  {
    $this->enablePlugins('sfPropelPlugin');
    $this->enablePlugins('sfGuardPlugin');
  }
}
