# pmot-cucumber-ruby

to run specific test add @something to the top and run the below command from command line
I current set test Im working on to @wip
cucumber --tag @wip

#searching for elements in chrome console

navigate to the page you want on chrome
Open Menu > more tools > Developer tools [select] Console

Here you can interrogate a web page using javascripts

$('*') - a command like this will return you the whole html

$('#o-header-nav-desktop > div > ul.o-header__nav-list.o-header__nav-list--right > li:nth-child(2) > a').text - a command like this will return you the text of a css locator


