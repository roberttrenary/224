# Assignment II

For this assignment, you will be performing a recursive directory traversal. While walking the file tree, you will be looking for duplicate files and creating symbolic links to them.

To accomplish the directory traversal, you should write a recursive function using the **dir** family of functions: **opendir(), readdir(), chdir() and closedir()**. A prototype may look something like this:

```c
void find_unique_files(const char*, char**);
```

The function should take a character array representing a filename and an array of strings. If it is called on a directory, it should move into that directory and continue it's traversal. If it is called on a text file, it should generate a hash for the text file, check the list of strings to make sure that it does not already contain that hash, then insert it if it doesn't. If it does, you know that you have found a duplicate.  

The file’s hash will be calculated using the SHA1 hashing algorithm. A library for calculating this hash can be found in `<openssl/sha.h>`. **_IN ORDER TO USE THIS LIBRARY YOU MUST HAVE OPENSSL INSTALLED AND LINK WITH THE `-lcrypto` FLAG_**. It can be installed via your favorite package manager (`apt-get`, `brew`, etc) and you can figure out how to use it via it's man-page (`man sha`). 

When a duplicate file is discovered, you will create a symbolic link to the duplicate (the one which cannot be added to the list) in the /dups directory using the `symlink()` function. This directory is in the main project directory of the assignment skeleton.

The skeleton also includes a bash script for rebuilding the test directory structure called _setup.sh_.

You will be graded first and foremost on the functionality of the code: the /dups directory will be checked to ensure that all duplicate files were properly symlinked. You should also make sure to separate the project’s functionality - do **NOT** do everything in one function. At worst, you will probably want the `find_unique_files` function and a function for calculating the sha sum of a single file.
