<?php

/**
 * boot actions.
 *
 * @package    AMS2
 * @subpackage boot
 * @author     AMS Team
 */
class bootActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->boots = BootPeer::doSelect(new Criteria());
  }

  public function executeShow(sfWebRequest $request)
  {
    $this->boot = BootPeer::retrieveByPk($request->getParameter('id'));
    $this->forward404Unless($this->boot);
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new bootForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod(sfRequest::POST));

    $this->form = new bootForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($boot = BootPeer::retrieveByPk($request->getParameter('id')), sprintf('Object boot does not exist (%s).', $request->getParameter('id')));
    $this->form = new bootForm($boot);
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
    $this->forward404Unless($boot = BootPeer::retrieveByPk($request->getParameter('id')), sprintf('Object boot does not exist (%s).', $request->getParameter('id')));
    $this->form = new bootForm($boot);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($boot = BootPeer::retrieveByPk($request->getParameter('id')), sprintf('Object boot does not exist (%s).', $request->getParameter('id')));
    $boot->delete();

    $this->redirect('boot/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $boot = $form->save();

      $this->redirect('boot/edit?id='.$boot->getId());
    }
  }
}
