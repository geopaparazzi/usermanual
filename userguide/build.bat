rem NOTE:  USE: Ruby -> "Command prompt with Ruby"
rem cd C:\Android\usermanual\userguide

asciidoctor -r asciidoctor-diagram -r C:\programs\Ruby25-x64\asciidoctor-extensions-lab\lib\tree-block-macro.rb %1
rem git checkout -- development/database_diagram.png
rem git checkout -- development/modules_diagram.png
rem git checkout -- development/plugins_diagram.png

rem asciidoctor-pdf index.adoc