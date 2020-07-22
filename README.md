# usermanual

Usermanual Space.

## Create pull requests to contribute.

The best way to contribute is to:

- Create your copy of this repository with the Fork button above
- Clone a copy to your computer from your forked repository
- Edit the .adoc files on your computer using a text editor (or https://asciidocfx.com/)
- Use asciidoctor to generate the HTML and review your changes
- Use git to issue a Pull Request to send the .adoc files to Andrea's repository

It can be a bit of work to set up asciidoctor and the plugins to generate the HTML locally but it allows you to make sure your changes look good and any links work properly.



## Installing Asciidoc

Geopaparazzi's usermanual uses Asciidoc's .adoc format for the source files, but *asciidoctor* is used to convert the .adoc files to .html (and .pdf?). While you can simply use a text editor to edit the .adoc files, to see the results in html you need to run them through asciidoctor.

I installed and ran asciidoctor on Windows by:

- Install Ruby with the RubyInstaller (https://rubyinstaller.org/)

- From the Windows Start Menu:
   Ruby -> "Command prompt with Ruby"

- On the command line:
```
    gem install asciidoctor
    gem install asciidoctor-diagram
    gem install coderay
    asciidoctor --version
```
- On the command line, cd to your location of Geopaparazzi's userguide index.adoc and run asciidoctor:
```
    asciidoctor -r asciidoctor-diagram index.adoc
```

This will create index.html in the same directory.

After reviewing your changes by looking at the HTML, please submit a Pull Request.

Thanks!


