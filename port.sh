#!/usr/bin/env bash

IDL_NAME=$(basename ./idl/*.idl .idl)
STRING="PubSubTypes.cxx"
TARGET_FILE=$IDL_NAME$STRING


mkdir tmp
cd tmp
fastrtpsgen -example x64Linux2.6gcc ../idl/*.idl

cp $TARGET_FILE ../src

cd ..
rm -rf tmp
