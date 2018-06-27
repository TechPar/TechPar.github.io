# add node tools into build path
export PATH := node_modules/.bin:$(PATH)
# git tag things
export TIME_RELEASE := $(shell /bin/date "+%Y-%m-%d_%H-%M-%S")

clean:
	rm -rf build.js

dev: clean
	budo src/main.js:build.js -o -l -H 127.0.0.1

release: clean
	cross-env NODE_ENV=production browserify -p common-shakeify src/main.js -o build.js ;
	uglifyjs build.js --compress > build.min.js ;
	mv build.min.js build.js ;
	git add . ;
	git commit -m "release $(TIME_RELEASE)" ;
	git tag v$(TIME_RELEASE) ;
	git push origin master ;
	git push origin v$(TIME_RELEASE) ;
