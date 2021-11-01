cp -r public/* dist
cp -r public dist/$1
rm -rf workspace || { echo 'command failed' ; exit 1; }
mkdir workspace || { echo 'command failed' ; exit 1; }
cd workspace || { echo 'command failed' ; exit 1; }
npm install --no-save @leanup/cli@$2 @leanup/cli-$1@$2 || { echo 'command failed' ; exit 1; }
npx $1 create -n template -o || { echo 'command failed' ; exit 1; }
npx ncu -t minor -u -x typescript
npm i
npx lean serve &
npx lean lint || { echo 'command failed' ; exit 1; }
npx $1 lint || { echo 'command failed' ; exit 1; }
npm run lint || { echo 'command failed' ; exit 1; }
# npx tsc -p tsconfig.json || { echo 'command failed' ; exit 1; }
npx lean format || { echo 'command failed' ; exit 1; }
npx $1 format || { echo 'command failed' ; exit 1; }
npm run format || { echo 'command failed' ; exit 1; }
#npx lean test || { echo 'command failed' ; exit 1; }
#npx $1 test || { echo 'command failed' ; exit 1; }
#npm run test || { echo 'command failed' ; exit 1; }
#npx lean coverage || { echo 'command failed' ; exit 1; }
#npx $1 coverage || { echo 'command failed' ; exit 1; }
#npm run coverage || { echo 'command failed' ; exit 1; }
npx lean build || { echo 'command failed' ; exit 1; }
grep -rnw 'dist/' -e 'eval'
rm -rf dist
npx $1 build || { echo 'command failed' ; exit 1; }
rm -rf dist
npm run build || { echo 'command failed' ; exit 1; }
mv dist/app.js dist/main.js || true
# npm run build:snowpack || true
mkdir ../dist/$1
cp -r dist/* ../dist/$1 || { echo 'command failed' ; exit 1; }
mkdir ../dist/$1/$1
cp -r dist/* ../dist/$1/$1 || { echo 'command failed' ; exit 1; }
cp -r dist/assets ../dist/ || { echo 'command failed' ; exit 1; }
cp -r dist/assets ../dist/$1 || { echo 'command failed' ; exit 1; }
cp -r src/assets ../dist/ || { echo 'command failed' ; exit 1; }
cp -r src/assets ../dist/$1 || { echo 'command failed' ; exit 1; }
npm run build:snowpack || true
# npx lean serve --port 8080 &
# npx $1 serve --port 8081 &
# npx lean serve -- --port 8082 &
# npx lean e2e -e chrome || { echo 'command failed' ; exit 1; }
# npx $1 e2e -e chrome || { echo 'command failed' ; exit 1; }
npm outdated || true
npm list --depth=0 || true
# npx tsc -p tsconfig.json || { echo 'command failed' ; exit 1; }
cd .. || { echo 'command failed' ; exit 1; }
# rm -rf workspace || { echo 'command failed' ; exit 1; }
