#!/usr/bin/env bash

rm -rf gen
mkdir gen
cd gen

fastrtpsgen -example x64Linux2.6gcc ../idl/HelloWorld.idl
