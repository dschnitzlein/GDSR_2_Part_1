rm(list=ls()) # Entfernt alle Objekte (Datensätze, Variablen usw.) aus dem Speicher

## Vorbereitung

library(tidyverse)
library(palmerpenguins)
library(ggthemes)

View(penguins)

?penguins

Pinguine <- na.omit(penguins)

## Analyse

body_mass_mean <- mean(Pinguine$body_mass_g)
bill_length_mean <- mean(Pinguine$bill_length_mm)

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g))

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g)) +
  geom_point()

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g, colour=species)) +
  geom_point()

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g, colour=species)) +
  geom_point() +
  geom_smooth(method='lm')

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g)) +
  geom_point(aes(colour=species)) +
  geom_smooth(method='lm')

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g)) +
  geom_point(aes(colour=species, shape=species)) +
  geom_smooth(method='lm')

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g)) +
  geom_point(aes(colour=species, shape=species)) +
  geom_smooth(method='lm') +
  labs(
    title= "Gewicht und Schnabellänge bei Pinguinen",
    subtitle = "Beobachtungen aus dem palmerspenguins Datensatz",
    x = "Schnabellänge in mm",
    y = "Gewicht in g",
    colour= "Pinguinart",
    shape = "Pinguinart")

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g)) +
  geom_point(aes(colour=species, shape=species)) +
  geom_smooth(method='lm') +
  labs(
    title= "Gewicht und Schnabellänge bei Pinguinen",
    subtitle = "Beobachtungen aus dem palmerspenguins Datensatz",
    x = "Schnabellänge in mm",
    y = "Gewicht in g",
    colour= "Pinguinart",
    shape = "Pinguinart") 

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g)) +
  geom_point(aes(colour=species, shape=species)) +
  geom_smooth(method='lm') +
  geom_hline(yintercept=body_mass_mean, colour='blue', linetype=2) +
  geom_vline(xintercept=bill_length_mean, colour='blue', linetype=2) +
  labs(
    title= "Gewicht und Schnabellänge bei Pinguinen",
    subtitle = "Beobachtungen aus dem palmerspenguins Datensatz",
    x = "Schnabellänge in mm",
    y = "Gewicht in g",
    colour= "Pinguinart",
    shape = "Pinguinart")

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g)) +
  geom_point(aes(colour=species, shape=species)) +
  geom_smooth(method='lm') +
  geom_hline(yintercept=body_mass_mean, colour='blue', linetype=2) +
  geom_vline(xintercept=bill_length_mean, colour='blue', linetype=2) +
  labs(
    title= "Gewicht und Schnabellänge bei Pinguinen",
    subtitle = "Beobachtungen aus dem palmerspenguins Datensatz",
    x = "Schnabellänge in mm",
    y = "Gewicht in g",
    colour= "Pinguinart",
    shape = "Pinguinart") +
  scale_color_colorblind() +
  theme_bw()

ggplot(data=Pinguine, aes(x=bill_length_mm, y=body_mass_g, colour=species, shape=species)) +
  geom_point() +
  geom_smooth(method='lm') +
  facet_wrap(~species) +
    labs(
    title= "Gewicht und Schnabellänge bei Pinguinen",
    subtitle = "Beobachtungen aus dem palmerspenguins Datensatz",
    x = "Schnabellänge in mm",
    y = "Gewicht in g",
    colour= "Pinguinart",
    shape = "Pinguinart") +
  scale_color_colorblind() +
    theme_bw()

