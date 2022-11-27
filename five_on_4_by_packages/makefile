PACKAGES := $(wildcard package/*)

clean:
	flutter clean
	for feature in $(PACKAGES); do \
		cd $${feature} ; \
		echo "Running clean on $${feature}"; \
		flutter clean; \
		cd ../../ ; \
	done

get:
	flutter pub get
	for feature in $(PACKAGES); do \
		cd $${feature} ; \
		echo "Updating dependencies on $${feature}"; \
		flutter pub get; \
		cd ../../ ; \
	done

build-runner: 
	for feature in $(PACKAGES); do \
		cd $${feature} ; \
		echo "Running build-runner on $${feature}}" ; \
		flutter pub run build_runner build --delete-conflicting-outputs ; \
		cd ../../ ; \
	done