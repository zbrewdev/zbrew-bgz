#!/bin/sh
. zbrewsetenv 

zbrewdeploy "$1" zbrew-bgzbn.bom
exit $? 
