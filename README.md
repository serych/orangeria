# Správa pomerančů
## Scripty
Scripty kopírují na pomeranče ssh klíče citronu, aby bylo možné se k nim připojovat pomocí ansible. 
Bez parametru pracují s pomeranc00 až pomeranc30. Provedení pouze s vybranými pomeranči se spouští 
pomocí parametru -l pomerancXX pomerancXY atd.
- sshroot.sh - zkopíruje klíče z root citronu na root pomerančů
- sshansible02.sh - zkopíruje klíče z ansible na citronu na ansible pomerančů (spouští se až po spuštění playbooku 01)

## Ansible playbooky
- 01_init_ansible.yaml
- 02_update_upgrade.yaml
- 03_skript_apt-mail.yaml
- 04_install_apache2.yaml
- 05_apache_config.yaml
- 06_git_config.yaml

## Mezisklad (adresáře s obsahem pro práci s ansible playbooky)
- /etc/apache2/sites-available
- /root/skripty
- /var/www/mujweb
