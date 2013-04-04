<?php if (!defined('APPLICATION')) exit();

/**
 * Bootstrap theme for Vanilla Forums
 *
 * @package    Bootstrap
 * @version    1.0.0
 * @author     Kasper K. Isager
 * @copyright  Copyright 2013 © Kasper K. Isager
 * @license    http://opensource.org/licenses/MIT MIT
 */
class BootstrapThemehooks implements Gdn_IPlugin
{
   /**
    * Set translation strings
    *
    * @package Bootstrap
    * @since   1.0.0
    * @access  public
    */
   public function Gdn_Dispatcher_BeforeDispatch_Handler($Sender)
   {
      // Breadcrumbs separator
      Gdn::Locale()->SetTranslation('Breadcrumbs Crumb', '/');

      // Pager buttons
      Gdn::Locale()->SetTranslation('«', '&laquo;');
      Gdn::Locale()->SetTranslation('»', '&raquo;');
   }

   /**
    * Register stylesheets
    *
    * @package Bootstrap
    * @since   1.0.0
    * @access  public
    */
   public function AssetModel_StyleCss_Handler($Sender)
   {
      $Sender->AddCssFile('bootstrap.css');
   }

   /**
    * Add Javascript
    *
    * @package Bootstrap
    * @since   1.0.0
    * @access  public
    */
   public function Base_Render_Before($Sender)
   {
      if (InSection('Dashboard')) return;
      $Sender->AddJsFile('bootstrap-transition.js');
      $Sender->AddJsFile('bootstrap-alert.js');
      $Sender->AddJsFile('bootstrap-button.js');
      $Sender->AddJsFile('bootstrap-carousel.js');
      $Sender->AddJsFile('bootstrap-collapse.js');
      $Sender->AddJsFile('bootstrap-dropdown.js');
      $Sender->AddJsFile('bootstrap-modal.js');
      $Sender->AddJsFile('bootstrap-tooltip.js');
      $Sender->AddJsFile('bootstrap-popover.js');
      $Sender->AddJsFile('bootstrap-scrollspy.js');
      $Sender->AddJsFile('bootstrap-tab.js');
      $Sender->AddJsFile('bootstrap-typeahead.js');
   }

   /**
    * No setup required
    *
    * @package Bootstrap
    * @since   1.0.0
    * @access  public
    */
   public function Setup()
   {
      return TRUE;
   }

   /**
    * No cleanup required
    *
    * @package Bootstrap
    * @since   1.0.0
    * @access  public
    */
   public function OnDisable()
   {
      return TRUE;
   }
}