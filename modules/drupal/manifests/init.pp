# Install Drupal

class drupal {

  # Create the Drupal database
  exec { 'create-database':
    require => Class['mysql'],
    unless  => 'mysql -u root -pd3v0p5 drupal',
    command => 'mysql -u root -pd3v0p5 --execute=\'create database drupal\'',
  }

  exec { 'create-user':
    require => Class['mysql'],
    unless  => 'mysql -u drupal -pdrupal drupal',
    command => 'mysql -u root -pd3v0p5 --execute="GRANT ALL PRIVILEGES ON drupal.* TO \'drupal\'@\'localhost\' IDENTIFIED BY \'drupal\'"',
  }

  # Download Drupal: http://ftp.drupal.org/files/projects/drupal-7.28.tar.gz

  exec { 'download-drupal':
    command => 'wget http://ftp.drupal.org/files/projects/drupal-7.28.tar.gz',
    cwd     => '/vagrant/webroot/',
    creates => '/vagrant/webroot/drupal-7.26.tar.gz'
  }

  exec { 'tar-drupal':
    cwd     => '/vagrant/webroot/',
    command => 'tar -xzvf drupal-7.28.tar.gz --strip 1',
    require => Exec['download-drupal'],
   
  }


}