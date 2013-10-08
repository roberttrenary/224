rm -rf dups
rm -rf test_dir
mkdir dups
mkdir test_dir

# -----
cd test_dir

touch empty
echo "some file" > notempty
echo "some other file" > alsonotempty

mkdir fus
mkdir ro 
mkdir dah

# -----
cd fus

touch empty
echo "dovahkiin" > dovahkiin
echo "dovahkiin" > dovahkiin2
echo "dovahkiin" > dovahkiin3

mkdir meow

cd ..

# -----
cd ro

touch empty
echo "some file" > notempty
echo "this assignment is super fun" > assignment

mkdir meow

# -----
cd meow

echo "woof" > dog
echo "meow" > cat

cd ../..

# -----
cd dah

mkdir herk
mkdir derk

# ----
cd herk

echo "i can't even" > somewhere
echo "but seriously" > elsewhere

mkdir herk

# -----
cd herk

echo "i really can't even" > somewhere
echo "but seriously" > elsewhere

cd ../..

# -----
cd derk

touch empty
echo "so many filez" > somany

mkdir aminalz

# -----
cd aminalz

echo "woof" > dog
echo "meow" > cat
echo "mooo" > owl 
