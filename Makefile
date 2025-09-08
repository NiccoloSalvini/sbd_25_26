bs4:
	Rscript -e 'library(bookdown); serve_book()'

pdfbook:
	Rscript -e 'library(bookdown); render_book("pdf_book")'

clean:
	Rscript -e 'bookdown::clean_book()';\
	rm -rf _bookdown_files

publish:
	git add .;\
	git commit -m 'update';\
	git push -u origin gh-pages
	