##Sites to Scrape

  I think for now its easiest if we stick to music-only events that are accessible to mcgill studnets,
  I haven't yet curated this list to fit that criteria. These are just a few ideas.

#### Concerts
* http://www.songkick.com/metro_areas/27377-canada-montreal
* http://justshows.com/montreal/
* http://livemontrealevents.wantickets.com/

#### Bars
* http://eventful.com/montreal/events/categories/singles_social

##### specific bars

* http://divanorange.org/
* http://www.liftticketsystem.com/events/casadelpopolo
* http://www.upstairsjazz.com/en/calendar.php
* http://www.brutopia.net/en_entertainment.php
* http://www.bistroajojo.com/en/programmation.php
* http://www.olympiamontreal.com/les-evenements/

###### general list of bars that have live music
* http://www.urbanspoon.com/t/67/13/Montreal/Live-Music-restaurants


#### Festivals
* http://eventful.com/montreal/events/categories/festivals_parades






##Possible Relationships
###Single event table
might be better if we're going for a more general solution 
####event model
 type |  title |  date  | venue.id | price | notes | source  
----- | ------ | ------ | ----- | ----- | ---- | ----
festival | International Jazz Festival | June 28 - July 7 | multiple id's | $0 | the worlds largest jazz festival ... | tourisme-montreal.org 

------

### venue table and event table
more specific and versatile, sort of limits us to musical events but allows us to do more with them. personally I prefer this. 
####venue model
id  |name | address | postal code |contact_info | source
----|-----|---------|-------------|-------------|-------
1|Upstairs Jazz | 1254 Mackay | h3g 2h4 | (514)931-6808 | upstairsjazz.com

####event model
we also need to take into consideration that a lot of bars charge different prices for different times of arrival.

title | venue.id | date | time | price | notes
------|----------|------|------|-------|------
Hellen Allan Trio | 1 | May 22 | 8:30 pm | $8 | an evening of jazz highlighted by ...



