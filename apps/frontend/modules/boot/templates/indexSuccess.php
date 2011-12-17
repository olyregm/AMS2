<h1>Boots List</h1>

<table>
  <thead>
    <tr>
      <th>Id</th>
      <th>Obmann</th>
      <th>Bootn</th>
      <th>Idbootrennen</th>
      <th>Lauf</th>
      <th>Bahn</th>
      <th>Gemeldet</th>
      <th>Alternativmeldung</th>
      <th>Bezahlt</th>
      <th>Storniert</th>
      <th>Abgemeldet</th>
      <th>Nachgemeldet</th>
      <th>Zusatzgewicht</th>
      <th>Verwarnt</th>
      <th>Verwarntkommentar</th>
      <th>Ausgeschl</th>
      <th>Ausgeschlkommentar</th>
      <th>Didnotstart</th>
      <th>Didnotfinish</th>
      <th>Kommentar</th>
      <th>Sessoinid</th>
      <th>Regatta</th>
      <th>Created at</th>
      <th>Updated at</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($boots as $boot): ?>
    <tr>
      <td><a href="<?php echo url_for('boot/show?id='.$boot->getId()) ?>"><?php echo $boot->getId() ?></a></td>
      <td><?php echo $boot->getObmannId() ?></td>
      <td><?php echo $boot->getBootn() ?></td>
      <td><?php echo $boot->getIdbootrennen() ?></td>
      <td><?php echo $boot->getLaufId() ?></td>
      <td><?php echo $boot->getBahn() ?></td>
      <td><?php echo $boot->getGemeldet() ?></td>
      <td><?php echo $boot->getAlternativmeldung() ?></td>
      <td><?php echo $boot->getBezahlt() ?></td>
      <td><?php echo $boot->getStorniert() ?></td>
      <td><?php echo $boot->getAbgemeldet() ?></td>
      <td><?php echo $boot->getNachgemeldet() ?></td>
      <td><?php echo $boot->getZusatzgewicht() ?></td>
      <td><?php echo $boot->getVerwarnt() ?></td>
      <td><?php echo $boot->getVerwarntkommentar() ?></td>
      <td><?php echo $boot->getAusgeschl() ?></td>
      <td><?php echo $boot->getAusgeschlkommentar() ?></td>
      <td><?php echo $boot->getDidnotstart() ?></td>
      <td><?php echo $boot->getDidnotfinish() ?></td>
      <td><?php echo $boot->getKommentar() ?></td>
      <td><?php echo $boot->getSessoinid() ?></td>
      <td><?php echo $boot->getRegattaId() ?></td>
      <td><?php echo $boot->getCreatedAt() ?></td>
      <td><?php echo $boot->getUpdatedAt() ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>

  <a href="<?php echo url_for('boot/new') ?>">New</a>
