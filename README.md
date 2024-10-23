# Správa pomerančů
## Scripty
Scripty kopírují na pomeranče ssh klíče citronu, aby bylo možné se k nim připojovat pomocí ansible. 
Bez parametru pracují s pomeranc00 až pomeranc30. Provedení pouze s vybranými pomeranči se spouští 
pomocí parametru -l pomerancXX pomerancXY atd.
Čísla v začátku názvů souborů určují pořadí spouštění).
- 00_sshroot.sh - zkopíruje klíče z root citronu na root pomerančů (spouští se jako první)
- 02_sshansible.sh - zkopíruje klíče z ansible na citronu na ansible pomerančů (spouští se až po spuštění playbooku 01)

## Ansible playbooky
- 01_init_ansible.yaml
- 03_update_upgrade.yaml
- 04_skript_apt-mail.yaml
- 05_install_apache2.yaml
- 06_apache_config.yaml
- 07_git_config.yaml

## Mezisklad (adresáře s obsahem pro práci s ansible playbooky)
- /etc/apache2/sites-available
- /root/skripty
- /var/www/mujweb
