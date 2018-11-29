all: install

install:

	mkdir -p $(DESTDIR)/usr/share/pardus-ldap-client-settings/pam_scripts_original
	@cp -rf $(DESTDIR)/usr/share/pam-configs/ldap $(DESTDIR)/usr/share/pardus-ldap-client-settings/pam_scripts_original/
	@cp -rf ldap $(DESTDIR)/usr/share/pardus-ldap-client-settings/ldap
	mkdir -p $(DESTDIR)/usr/share/lightdm/lightdm.conf.d
	@cp -rf 99-pardus-xfce.conf $(DESTDIR)/usr/share/lightdm/lightdm.conf.d/


uninstall:
	@rm -rf /usr/share/lightdm/lightdm.conf.d/99-pardus-xfce.conf
	@rm -rf /usr/share/pam-configs/ldap
	@cp -rf /usr/share/pam_scripts_original/ldap /usr/share/pam-configs/
.PHONY: install uninstall
