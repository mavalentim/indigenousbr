# Data about the Indigenous peoples in Brazil
 The {indigenousbr} package allows users to have access to important statistics concerning the Brazilian indigenous peoples directly via R. We currently provide 3 different datasets directly through the package along with a webscraping function aimed at collecting updated Covid-19 data about the Brazilian indigenous communities.
 
 
# Who are and where are the Brazilian indigenous people?

In a very simplified explanation Brazilian indigenous people are a huge variety of indigenous groups, that live in almost all Brazilian states, from the Southern region to the Northeast and specially in the Northern parts of the country. They live in a range of places, from small towns, enourmos cities, rural areas and traditional settlements. Each group has its own cultural aspects, political structures and suffer from specific health conditions. The {indigenousbr} aims at making data about Brazilian indigenous people easier to access. Most of our data concern indigenous peoples' Sanitary Districts, which is how most of the statistical information about them is aggregated. A Sanitary District is a region that trespasses political demarcations, ranging through different states and municipalities. Inside a Sanitary District, health apparatus is provided for the indigenous group living there. This includes clinics, health unities and hospitals.
 
# What do we provide

Right now we provide 3 datasets and 1 function. 1 dataset on population, 1 on Sanitary District location and 1 on Indigenous deaths. The function is a web scraper aimed at acquiring updated information about the Covid-19 situation throughout the different Sanitary Districts. The data was acquired via Brazil's access to information legislation (Lei de Acesso à Informação) and via web scraping of the Brazilian Ministery of Health's website.

# The datasets made available

## Indigenous Deaths

This datasets contains information about indigenous deaths for the last decade. Each observation contains quite some information about the deceased. From the age, biological sex to the District where the person was, the reported cause of death (in portuguese) and the ICD10 code of the cause of death.
 
## Indigenous Sanitary district population
 
 This tibble contains information about the total indigenous population in each Special Sanitary District, throughout the years. The tibble goes all the way back to 2010 and way up to 2019. 
 
## Indigenous Sanitary district location
 
 This tibble contains information about where each of the Districts is located. It vinculates each Sanitary District with the name of the Brazilian municipality where it is located, also providing the name of the municipality. Some Districts are located within the same municipality, overlaps **can** occur. 

# Our web scraping function `get_indigenous_covid_stats`

The function has no parameters, it is a very basic webscraping function that aims at collecting the newest data about Covid-19 in the Sanitary Districts. It returns a 35x8 tibble with information about each of the Districts.

# Where does the data come from

All of the data come from the Brazilian Special Secretary for Indigenous Health (SESAI). We had access to it via Brazil's access to information legislation (Lei de Acesso à Informação) and via web scraping of the Brazilian Ministery of Health's website.

# That's all folks

Use the package, report mistakes and cite us if you use it in academic reasearch :)

**New stuff soon :
-Sociodemographic aspects (ethinicities, settlements)
-Morbidity (doctor visits, medical consults)

