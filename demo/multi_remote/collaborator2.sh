# Second change. Adding more people:
cat > people/travis.oliphant.txt <<EOF
david cournapeau
robert kern
stefan van der walt
anne archibald
pauli virtanen
EOF
git add people/travis.oliphant.txt
git commit -m "Added Travis."
git push
