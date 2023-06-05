set -eux

# Build backend
cd linear-types
./deploy.sh
cd ..

# Build frontend
PUBLIC_URL=./ elm-app build
rm -rf docs
cp -r build docs
