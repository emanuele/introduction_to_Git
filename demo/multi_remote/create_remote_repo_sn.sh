BASEDIR=/tmp/local/
PATH_LOCAL_REPO=$BASEDIR"git-exercise"
PATH_INITIAL_FILES=initial_files/*
REMOTE_REPO=https://github.com/emanuele/git-exercise.git

pushd .
rm -rf $PATH_LOCAL_REPO
mkdir -p $PATH_LOCAL_REPO
cp -r $PATH_INITIAL_FILES $PATH_LOCAL_REPO
cd $PATH_LOCAL_REPO
git init
git add graph.py social_network.py people
git commit -m "Initial import."
git remote add origin $REMOTE_REPO
git push origin master
cd ..
rm -rf $PATH_LOCAL_REPO
popd
