# Welcome to DevMorning Medias !

All media files related to DevMorning, associated groups, projects, and endeavours.

## How to generate ?

Make sure you have `make` and `inkscape` installed in your unix environment.

You can generate all assets with :

```
$> make CITY=bangkok
```

If you need a transparent or colored background, you can generate with :

*(You need to escape the #, else it will be interpreted as a comment.)*

```
$> make CITY=bangkok BACKGROUND=\#000000
```

You can clean the destination folder with :

```
$> make clean
```

## Supported cities

| city              |   id          |
|-------------------|---------------|
| Paris             |   paris       |
| Bangkok           |   bangkok     |
| Tokyo             |   tokyo       |
| Ho Chi Minh City  |   hochiminh   |
| Singapore         |   singapore   |
| Fukuoka           |   fukuoka     |

## What is DevMorning ?

DevMorning is a self-study meetup for software developers.
Self-study includes developing personal products, reading OSS, writing technical articles, or anything related to software development.
This meetup takes place on sundays in multiple cities across the globe.

## Can I contribute ?

Contributing is encouraged !
You can contact us through [Discord](https://discord.gg/ySBAGfMmYN) or [Line](https://line.me/R/ti/g/HV28i6cjUW).
