rem pandoc -s backbone-fundamentals.md -o backbone-fundamentals.docx

pandoc -s backbone-fundamentals.md -o backbone-fundamentals.pdf ^
        --title-prefix "Developing Backbone.js Applications" ^
        --normalize ^
        --smart ^
        --toc ^
        --latex-engine=xelatex ^
		--template=tex\temp.tex ^
		--variable mainfont="Adobe Song Std L" ^
		--variable lang="zh" ^
		--variable documentclass="book" ^
		--variable papersize="a4paper" 
