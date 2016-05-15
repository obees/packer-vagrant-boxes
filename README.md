# packer-vagrant-boxes
</br>Le but de ce projet est d'automatiser la création de machines de développement à l'aide de 
Packer pour créer les machines (boxes)</br>
xenial64-desktop-fr: Machine Ubuntu 16.04 desktop en français</br>
xenial64-smackbox: Machine de déveloopement de plateforme SMACK</br>
Ces machines pourront ensuite être personnalisée à l'aide de Vagrant et instanciées sur Virtualbox</br>
<h2>Pré-requis à installer sur le poste</h2>
Packer : https://www.packer.io/downloads.html</br>
Virtual box : https://www.virtualbox.org/wiki/Downloads</br>
Vagrant : https://www.vagrantup.com/downloads.html</br>
<h2>Usage</h2>
<h3>Pour les impatients</h3>
Il est possible d'utiliser directement les boxes déjà créées</br> 
et disponibles sur Atlas https://atlas.hashicorp.com/vagrant</br>
vagrant init obees/xenial64-desktop-fr; vagrant up --provider virtualbox</br>
vagrant init obees/xenial64-smackbox; vagrant up --provider virtualbox</br>
<h3>Pour xenial64-desktop-fr: Machine Ubuntu 16.04 desktop en français</h3>
<h4>Créer la box</h4>
git clone https://github.com/obees/packer-vagrant-boxes.git</br>
cd packer-vagrant-boxes</br>
packer buid xenial64-desktop-fr.json</br>
<h4>Référencer la box pour Vagrant</h4>
vagrant box add <LocalBoxName> builds/virtualbox/<GenratedBoxName></br>
Exemple:</br>
vagrant box add xenial64-desktop-fr builds/virtualbox/xenial64-desktop-fr-2016-05-05.box</br>
<h4>Lancer la box (Virtualbox) avec Vagrant</h4>
vagrant init xenial64-desktop-fr; vagrant up --provider virtualbox</br>
<h3>Pour xenial64-smackbox: Machine de déveloopement de plateforme SMACK</h3> 
</br>
<h4>Créer la box</h4>
git clone https://github.com/obees/packer-vagrant-boxes.git</br>
cd packer-vagrant-boxes</br>
packer buid xenial64-smackbox.json</br>
<h4>Référencer la box pour Vagrant</h4>
vagrant box add <LocalBoxName> builds/virtualbox/<GenratedBoxName></br>
Exemple:</br>
vagrant box add xenial64-smackbox builds/virtualbox/xenial64-smackbox-2016-05-05.box</br>
<h4>Lancer la box (Virtualbox) avec Vagrant</h4>
vagrant init xenial64-smackbox; vagrant up --provider virtualbox</br>





