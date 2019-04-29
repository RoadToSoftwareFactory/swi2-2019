### SWI 2 academic year 2018/2019

These are materials for the [Software Engineering 2](http://is.mendelu.cz/katalog/syllabus.pl?kod=PEF:SWI2) course, taught on Mendel University in Brno, spring 2019.


**Plan:** 

This semester is structured as a set of topical workshops:

|Monday|Wednesday|Topic|Lecturer|
|---|---|---|---|
|18.2|20.2|Development cycle|Bohdan Iakymets|
|25.2|27.2|[ORM](http://foks.cz/swi/slides2019/orm/)|Libor Pichler, Alexander Demicev|
|4.3|6.3|(null)|
|11.3|13.3|UI|Martin Hradil|
|18.3|20.3|Manager position|Jan Krocil|
|25.3|27.3|UX|Tereza Novotna|
|1.4|3.4|Tests with Selenium|Dmitrii Misharov|
|8.4|10.4|DevOPS|Stano Ochotnicky|
|15.4|17.4|API|Alexandre Vicenzi|
|22.4|24.4|(Easter Holidays)|
|29.4|1.5|Refactoring|Zita Nemeckova|
|6.5|15.5|Documentation|Jaromir Hradilek|


**Communication channel:**

https://gitter.im/ManageIQ/welcome

#### Spuštení virtualky na Mac v Q04 a Q12

1. Stažení VirtualBox image ze stránek: http://akela.mendelu.cz/~xkoloma1/swi.ova 
2. V nastaveni `VirtualBox -> Preferencies -> General -> Default Machine Folder` nastavit misto uživate `default` v ceste vas login (do vašeho pracovního adresare, například: `/Users/xkoloma1/VirtualBox VMs`)
3. Postupujte podle webu: https://medium.com/@Aenon/mac-virtualbox-kernel-driver-error-df39e7e10cd8
    - `settings -> security and privacy > general`: pod hr allow permision to app (oracle vm corporate) 
		- check box -> check
		- intel corporate .... -> check
		
4. start VMs

**POZOR: Pokud nechcete postup opakovat před každým cvičením, sedejte si vždy ke stejnému stroji!**

---

### UI

Workshop items:

* open http://www.pef.mendelu.cz/
  * open the inspector, Elements tab
  * change the background color of the menus

* switch to the Console tab
  * do the same thing using `$0`
  * use `document.querySelectorAll` & CSS selectors

* go to https://www.flickr.com/photos/christophebrutel/16534288912/sizes/l
  * use the Elements pane to open the image file in a new tab

* go to https://www.instagram.com/petitenanaland/, open a video
  * find a `<video>` element (use `querySelector`), open the video with controls

* go to https://www.fanfiction.net/
  * find a story, try to copy text, fail
  * read about the `user-select` CSS property, succeed

* go to http://lamer.cz/
  * see facebook buttons, and use the Network tab to block them

* look into the Application tab - local storage & cookies, frames, styles, images

### Refactoring

Where can I get more info?

* [Bad inspiration](https://github.com/Droogans/unmaintainable-code)

* [What happened to other programmers](https://thedailywtf.com)

* [What is the most evil code you have ever seen](https://stackoverflow.com/questions/434414/what-is-the-most-evil-code-you-have-ever-seen-in-a-production-enterprise-environ)

* Clean Code: A Handbook of Agile Software Craftsmanship by Robert C. Martin 

* Working Effectively with Legacy Code by Michael Feathers 

Functions - Lets work with the worst controller

* [The worst controller](https://github.com/ManageIQ/manageiq-ui-classic/blob/master/app/assets/javascripts/controllers/ems_common/ems_common_form_controller.js)

* [Its template](https://github.com/ManageIQ/manageiq-ui-classic/blob/master/app/views/shared/views/ems_common/angular/_form.html.haml)

Playing with Debride

* clone [this repo](https://github.com/ManageIQ/manageiq-ui-classic)

* install [debride](https://github.com/seattlerb/debride)
