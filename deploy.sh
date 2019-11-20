echo "Building project..."
harp compile
echo "Setting permissions..."
chmod 777 ~/Git/samserif.co/samserif-rebuild-dev/www/
echo "Deploying via Rsync..."
rsync -a -v www/ sprovenza@samserif.co:/var/www/html/samserif-rebuild-production/ -O --no-perms
