<?php 
  require_once('plugins/spider_jessica/lib/git/git.php');
  $repo_path= $this->out["groupe"]["git_repo_path"];

  $repo = Git::open('/var/www/repogit/Thewoodofgodldeaxe');   // or, new GitRepo(...);
  //http://www.opensource.apple.com/source/Git/Git-19/src/git-htmldocs/pretty-formats.txt
  //hash, commiter name, Note, Date, Sujet
  echo $repo->run('log --pretty=format:"%h,%cn,%N,%cD,%s<br>"');



?>
<?php  if($this->out_config("nom_groupe")) require $this->out_file("views/sources/nom_groupe.php"); ?>

<?php if($this->out_config("colonne_logo_groupe")) require $this->out_file("views/sources/logo_groupe.php"); ?>

<?php if($this->out_config("albums_menu")) require $this->out_file("views/sources/menu_albums.php"); ?>

<?php require $this->out_file("views/sources/lien_contact.php"); ?>
