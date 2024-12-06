rm(list=ls())

library(tidyverse)
library(ggthemes)

cars_df <- read_csv("ToyotaCorolla.csv")

View(cars_df)

test <- na.omit(cars_df)  # hat gleiche Dimension wie cars_df, also kein Handlungsbedarf.
rm(test)

dim(cars_df) # 1436 Beobachtungen und 39 Variablen

## Analyse

Price_mw <- mean(cars_df$Price)
KM_mw <- mean(cars_df$KM)

ggplot(data=cars_df, aes(x=KM, y=Price))

ggplot(data=cars_df, aes(x=KM, y=Price)) +
  geom_point()

ggplot(data=cars_df, aes(x=KM, y=Price, color=Fuel_Type)) +
  geom_point()

ggplot(data=cars_df, aes(x=KM, y=Price)) +
  geom_point(aes(color=Fuel_Type)) +
  geom_smooth(method = 'lm')

ggplot(data=cars_df, aes(x=KM, y=Price)) +
  geom_point(aes(color=Fuel_Type, shape=Fuel_Type)) +
  geom_smooth(method = 'lm')

ggplot(data=cars_df, aes(x=KM, y=Price)) +
  geom_point(aes(color=Fuel_Type, shape=Fuel_Type)) +
  geom_smooth(method = 'lm') +
  labs(
    title="Der Zusammenhang zwischen Preis und Kilometerstand",
    subtitle="Daten aus dem Toyota Corolla Datensatz",
    x= "Gefahrene KM",
    y= "Verkaufspreis",
    color= "Kraftstoff",
    shape= "Kraftstoff")

ggplot(data=cars_df, aes(x=KM, y=Price)) +
  geom_point(aes(color=Fuel_Type, shape=Fuel_Type)) +
  geom_smooth(method = 'lm') +
  geom_hline(yintercept=Price_mw, color='blue', linetype=3) + 
  geom_vline(xintercept=KM_mw, color='blue', linetype=3) + 
    labs(
    title="Der Zusammenhang zwischen Preis und Kilometerstand",
    subtitle="Daten aus dem Toyota Corolla Datensatz",
    x= "Gefahrene KM",
    y= "Verkaufspreis",
    color= "Kraftstoff",
    shape= "Kraftstoff")

ggplot(data=cars_df, aes(x=KM, y=Price)) +
  geom_point(aes(color=Fuel_Type, shape=Fuel_Type)) +
  geom_smooth(method = 'lm') +
  geom_hline(yintercept=Price_mw, color='blue', linetype=3) + 
  geom_vline(xintercept=KM_mw, color='blue', linetype=3) + 
  labs(
    title="Der Zusammenhang zwischen Preis und Kilometerstand",
    subtitle="Daten aus dem Toyota Corolla Datensatz",
    x= "Gefahrene KM",
    y= "Verkaufspreis",
    color= "Kraftstoff",
    shape= "Kraftstoff") +
  scale_color_colorblind() +
  theme_bw()

ggplot(data=cars_df, aes(x=KM, y=Price)) +
  geom_point(aes(color=Fuel_Type, shape=Fuel_Type)) +
  geom_smooth(method = 'lm') +
  facet_wrap(~Fuel_Type) +
  labs(
    title="Der Zusammenhang zwischen Preis und Kilometerstand",
    subtitle="Daten aus dem Toyota Corolla Datensatz",
    x= "Gefahrene KM",
    y= "Verkaufspreis",
    color= "Kraftstoff",
    shape= "Kraftstoff") +
  scale_color_colorblind() +
  theme_bw()