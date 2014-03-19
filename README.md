ics-cards-spider
================

Enables creation of CSV file with ICS Credit Cards transactions.

At least in The Netherlands, ICS Cards managers a large portion of credit cards. If you get your card from ABN AMRO bank, de Bijenkorf or possibly others - these cards will be from ICS Cards.

While access on actual cards' transactions via ICS website and phone apps is OK, it actually lacks possibility to download transactions in a form, which can be imported into a spread sheet.

*How it works*

Set of files in this repository helps to download your transactions. The process of downloading transactions is:

* Login to your ICS credit card issuer website
* Open Actual (Actueel) tab
* Select a page, which contains transactions you have not downloaded yet
* Save the page as "Webpage, HTML Only" and replace ics.html file
* Execute "ant" in the directory with these files
  * If you still use Windows, instead of running ant from command line, you can double click on ant.cmd
* Insure it finishes with BUILD SUCCESSFUL
* If there are more Actual pages with transactions to download, repeat the process from step #3

All downloaded transactions will be in tab-delimited ics.txt file

*Preparation*

The only requirement for your machine is having ANT installed. If you are software developer, most probably you already have it. If not, 
* download the latest *.zip file from https://ant.apache.org/bindownload.cgi
* unpack it somewhere on you machine
* insure the bin folder of the unpacked directory is added to PATH
* test installation by running ant in an empty directory. You should see something like this:

```
viksmac:empty viktor$ ant
Buildfile: build.xml does not exist!
Build failed
```

Created by Viktor Sadovnikov @ [![JV-ration Logo](http://jv-ration.com/images/jv-ration-logo_125_20.png)](http://jv-ration.com)
