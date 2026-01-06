# make a table with measures for BLN
# read data =====
d1 <- fread('data-raw/indicators_and_ess.csv', sep = ';', dec = ',')
d2 <- fread('data-raw/measures.csv', sep = ';', dec = ',')

# subset measures =====
m1 <- d2[grepl('Gebruikt dierlijke mest|Gewasresten ac|Onderzaai|Vaste rijpa|Maximaliseer de inzet', Omschrijving)]

# format measures table
setnames(m1, names(m1), tolower(gsub(' ', '_', names(m1))))

# assign numeric effect per topic when missing =====
m1[!`daling_no3_(mg/l)` == '', water_zuivering := fifelse(effect == '++', 2, 1)]
m1[grepl('vanggewas', omschrijving) & habitat_biodiversiteit == '', habitat_biodiversiteit := '1']
m1[grepl('vanggewas', omschrijving) & koolstof_vastlegging == '', koolstof_vastlegging := '1']
m1[grepl('vanggewas', omschrijving) & recycling_nutriënten == '', recycling_nutriënten := '0-1']
m1[grepl('vanggewas', omschrijving) & opbrengst == '', opbrengst := '0']
m1[grepl('vanggewas', omschrijving) & water_regulatie == '', water_regulatie := '0']

# reshape
# mm <- melt(m1, id.vars = c('omschrijving', 'landgebruik', 'bodemtype'),
           # measure.vars = c('opbrengst', 'water_regulatie', 'water_zuivering', 'recycling_nutriënten', 'koolstof_vastlegging', 'habitat_biodiversiteit'))
mm <- copy(m1)

# add esd themes =====
# hdt <- data.table(
#   variable = c('opbrengst', 'water_regulatie', 'water_zuivering', 'recycling_nutriënten', 'koolstof_vastlegging', 'habitat_biodiversiteit'),
#   esd_thema = c('esd_prod', 'esd_water', 'esd_water', 'esd_nutcycle', 'esd_climate', 'esd_biodiv')
# )
mm <- merge(mm, hdt, by = 'variable')
setnames(mm, c('opbrengst', 'water_regulatie', 'water_zuivering', 'recycling_nutriënten', 'koolstof_vastlegging', 'habitat_biodiversiteit'),
         c('esd_prod', 'esd_water_quant', 'esd_water_qual', 'esd_nutcycle', 'esd_climate', 'esd_biodiv'))


## add subgroup =====
mm[, chemistry := '0']
mm[grepl('rijpaden', omschrijving), physics := '1']
mm[is.na(physics), physics := '0']
mm[, biology := '0']
mm[, gw_quantity := fifelse(grepl('vanggewassen|nderzaai', omschrijving), '-1', '0')]

mm[grepl('N-gift|nderzaai|niet/nauwelijks in najaar', omschrijving), gw_quality := '2']
mm[grepl('zonder correctie gebruik', omschrijving), gw_quality := '1']
mm[grepl('resten achterlaten', omschrijving), gw_quality := '-1-0']
mm[is.na(gw_quality), gw_quality := '0']

mm[, sw_quantity := fifelse(grepl('vanggewassen|nderzaai', omschrijving), '-1', '0')]
mm[grepl('N-gift|nderzaai|niet/nauwelijks in najaar', omschrijving), sw_quality := '2']
mm[grepl('zonder correctie gebruik', omschrijving), sw_quality := '1']
mm[grepl('resten achterlaten', omschrijving), sw_quality := '-1-0']
mm[is.na(sw_quality), sw_quality := '0']

mm[, climate := fifelse(grepl('inzet vanggewassen|resten achterlaten', omschrijving), '1', '0')]
mm[, macronutrient := fifelse(grepl('nderzaai', omschrijving), '0-2', '0-1')]

bln_meas <- copy(mm)
usethis::use_data(bln_meas)
fwrite(bln_meas, 'data-raw/bln_meas.csv')
