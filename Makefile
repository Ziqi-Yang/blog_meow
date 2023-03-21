# Makefile for java program
#
# ========================================
# @author: Ziqi Yang<mr.ziqiyang@gmail.com>
# @reference: https://makefiletutorial.com/#makefile-cookbook
# ========================================

.PHONY: update preview build clean 

# update theme
update: 
	hugo mod get -u	

preview:
	xdg-open http://localhost:1313/blog_meow/ && hugo server -D --debug

build:
	hugo --minify --gc

clean:
	rm -rf public

