COLLABORATOR=emanuele
rm -rf /tmp/collaborators
mkdir /tmp/collaborators
cp -a collaborator2.sh collaborator3.sh /tmp/collaborators/
cd /tmp/collaborators
git clone https://github.com/emanuele/git-exercise.git
cd git-exercise
mv ../collaborator2.sh ../collaborator3.sh .

# First change. Adding more people:
cat > people/rike.benjamin.schuppner.txt <<EOF
valentin haenel
bastian venthur
tiziano zito
EOF
git add people/rike.benjamin.schuppner.txt
git commit -m "Added Rike."
git push
