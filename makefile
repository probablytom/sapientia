publish:
	make commit
	jekyll build
	sudo rm -rf /var/www/sapientia
	sudo cp -R _site /var/www/sapientia
	sudo chown -R www-data:www-data /var/www/sapientia
	git push

publish-no-commit:
	jekyll build
	sudo rm -rf /var/www/sapientia
	sudo cp -R _site /var/www/sapientia
	sudo chown -R www-data:www-data /var/www/sapientia

build_test:
	jekyll build

record:
	make commit
	git push

commit:
	git add .
	git commit
