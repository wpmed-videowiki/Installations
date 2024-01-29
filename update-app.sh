# npm rebuild node-sass
# node scripts/build.js

# to upgrade all packages
cd /opt/wpmed-videowiki/videowiki
rm yarn.lock
rm package-lock.json
yarn install # to get yarn.lock, but gets all the old versions and installs them in node_modules
yarn upgrade --latest
# error No lockfile in this directory. Run `yarn install` to generate one. BUT I just ran it
npm install # didn't do anything either
sed 's/\^//g' package.json >package.json.update

mv package.json package.json.SAVE
mv package.json.update package.json
rm -rf node_modules
npm install # nope
yarn install # ran, but installs old versions same as above
