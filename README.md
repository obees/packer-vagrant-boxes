# packer-vagrant-boxes

Le but de ce projet est d'automatiser la création de machines de développement à l'aide de 
Packer pour créer les machines (boxes)
xenial64-desktop-fr: Machine Ubuntu 16.04 desktop en français
xenial64-smackbox: Machine de déveloopement de plateforme SMACK 

Ces machines pourront ensuite être personnalisée à l'aide de Vagrant et instanciées sur Virtualbox


<h2>Pré-requis à installer sur le poste</h2>

Packer : https://www.packer.io/downloads.html

Virtual box : https://www.virtualbox.org/wiki/Downloads

Vagrant : https://www.vagrantup.com/downloads.html

<h2>Usage</h2>
<h3>Pour les impatients</h3>
Il est possible d'utiliser directement les boxes déjà créées 
et disponibles sur Atlas https://atlas.hashicorp.com/vagrant
vagrant init obees/xenial64-desktop-fr; vagrant up --provider virtualbox
vagrant init obees/xenial64-smackbox; vagrant up --provider virtualbox

<h3>Pour xenial64-desktop-fr: Machine Ubuntu 16.04 desktop en français</h3>
</br>
<h4>Créer la box</h4>
git clone https://github.com/obees/packer-vagrant-boxes.git
cd packer-vagrant-boxes
packer buid xenial64-desktop-fr.json

<h4>Référencer la box pour Vagrant</h4>
vagrant box add <LocalBoxName> builds/virtualbox/<GenratedBoxName>
Exemple:
vagrant box add xenial64-desktop-fr builds/virtualbox/xenial64-desktop-fr-2016-05-05.box

<h4>Lancer la box (Virtualbox) avec Vagrant</h4>

vagrant init xenial64-desktop-fr; vagrant up --provider virtualbox

<h3>Pour xenial64-smackbox: Machine de déveloopement de plateforme SMACK</h3> 
</br>
<h4>Créer la box</h4>
git clone https://github.com/obees/packer-vagrant-boxes.git
cd packer-vagrant-boxes
packer buid xenial64-smackbox.json

<h4>Référencer la box pour Vagrant</h4>
vagrant box add <LocalBoxName> builds/virtualbox/<GenratedBoxName>
Exemple:
vagrant box add xenial64-smackbox builds/virtualbox/xenial64-smackbox-2016-05-05.box

<h4>Lancer la box (Virtualbox) avec Vagrant</h4>

vagrant init xenial64-smackbox; vagrant up --provider virtualbox





