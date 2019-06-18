
all:
	cd src
	$(MAKE)
	@cd ..
	cd C:\Users\kato\source\repos\glwidget\modules
	$(MAKE)
	@cd ..

install:
	cd src
	$(MAKE) install
	@cd ..
	cd C:\Users\kato\source\repos\glwidget\modules
	$(MAKE) install
	@cd ..

clean:
	cd src
	$(MAKE) clean
	@cd ..
	cd C:\Users\kato\source\repos\glwidget\modules
	$(MAKE) clean
	@cd ..
