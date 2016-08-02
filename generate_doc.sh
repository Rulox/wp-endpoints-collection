# Get ApiGen.phar
wget http://www.apigen.org/apigen.phar

php apigen.phar generate --source src --destination docs --template-theme bootstrap

# Set identity
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis"

git push origin --delete gh-pages

git subtree push --prefix docs/ origin gh-pages
