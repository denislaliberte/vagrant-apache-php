<h1>file index.php </h1>
<p> php is activated : 
<?php 
      print "yes" . PHP_EOL; 
      print "Mysql works :";
      try {
        $dbh = new PDO('mysql:host=10.0.0.1', 'tp1', 'pla514TY438pus');
        if($dbh->query("show databases")->fetchColumn( 0 ) == "information_schema") echo "yes" . PHP_EOL;
      } catch(PDOException $e) {
        print "Error!: " . $e->getMessage() . "<br/>";
        die();
      }
      phpinfo();

      die("");
?>
no
</p>
