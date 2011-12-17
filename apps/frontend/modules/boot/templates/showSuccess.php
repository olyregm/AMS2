<table>
  <tbody>
    <tr>
      <th>Id:</th>
      <td><?php echo $boot->getId() ?></td>
    </tr>
    <tr>
      <th>Obmann:</th>
      <td><?php echo $boot->getObmannId() ?></td>
    </tr>
    <tr>
      <th>Bootn:</th>
      <td><?php echo $boot->getBootn() ?></td>
    </tr>
    <tr>
      <th>Idbootrennen:</th>
      <td><?php echo $boot->getIdbootrennen() ?></td>
    </tr>
    <tr>
      <th>Lauf:</th>
      <td><?php echo $boot->getLaufId() ?></td>
    </tr>
    <tr>
      <th>Bahn:</th>
      <td><?php echo $boot->getBahn() ?></td>
    </tr>
    <tr>
      <th>Gemeldet:</th>
      <td><?php echo $boot->getGemeldet() ?></td>
    </tr>
    <tr>
      <th>Alternativmeldung:</th>
      <td><?php echo $boot->getAlternativmeldung() ?></td>
    </tr>
    <tr>
      <th>Bezahlt:</th>
      <td><?php echo $boot->getBezahlt() ?></td>
    </tr>
    <tr>
      <th>Storniert:</th>
      <td><?php echo $boot->getStorniert() ?></td>
    </tr>
    <tr>
      <th>Abgemeldet:</th>
      <td><?php echo $boot->getAbgemeldet() ?></td>
    </tr>
    <tr>
      <th>Nachgemeldet:</th>
      <td><?php echo $boot->getNachgemeldet() ?></td>
    </tr>
    <tr>
      <th>Zusatzgewicht:</th>
      <td><?php echo $boot->getZusatzgewicht() ?></td>
    </tr>
    <tr>
      <th>Verwarnt:</th>
      <td><?php echo $boot->getVerwarnt() ?></td>
    </tr>
    <tr>
      <th>Verwarntkommentar:</th>
      <td><?php echo $boot->getVerwarntkommentar() ?></td>
    </tr>
    <tr>
      <th>Ausgeschl:</th>
      <td><?php echo $boot->getAusgeschl() ?></td>
    </tr>
    <tr>
      <th>Ausgeschlkommentar:</th>
      <td><?php echo $boot->getAusgeschlkommentar() ?></td>
    </tr>
    <tr>
      <th>Didnotstart:</th>
      <td><?php echo $boot->getDidnotstart() ?></td>
    </tr>
    <tr>
      <th>Didnotfinish:</th>
      <td><?php echo $boot->getDidnotfinish() ?></td>
    </tr>
    <tr>
      <th>Kommentar:</th>
      <td><?php echo $boot->getKommentar() ?></td>
    </tr>
    <tr>
      <th>Sessoinid:</th>
      <td><?php echo $boot->getSessoinid() ?></td>
    </tr>
    <tr>
      <th>Regatta:</th>
      <td><?php echo $boot->getRegattaId() ?></td>
    </tr>
    <tr>
      <th>Created at:</th>
      <td><?php echo $boot->getCreatedAt() ?></td>
    </tr>
    <tr>
      <th>Updated at:</th>
      <td><?php echo $boot->getUpdatedAt() ?></td>
    </tr>
  </tbody>
</table>

<hr />

<a href="<?php echo url_for('boot/edit?id='.$boot->getId()) ?>">Edit</a>
&nbsp;
<a href="<?php echo url_for('boot/index') ?>">List</a>
