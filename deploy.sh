#!/bin/sh
. zbrewsetenv 

zbrewdeploy "$1" zbrew-bgzbin.bom
exit $? 
