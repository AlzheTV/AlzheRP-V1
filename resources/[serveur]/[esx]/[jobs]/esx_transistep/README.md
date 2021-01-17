# esx_transistep  WORKING ON V2 !

# EN / FR
If you want to improve this script, feel free to send an issue with your idea and the enhancement tag.

Si vous voulez améliorer le script, envoyez une issue avec votre idée, pensez au tag enhancement.

# EN
*Scroll for the FR section*

Need:
- esx_datastore
- esx_addonaccount
- esx_addoninventory
- esx_vehicleshop
- esx_service
- esx_skin
- esx_society

### [FiveM][Job][Private] Transport company and management of raw materials to supply a city.

The goal of this script is to implement a business that can generate materials and provide the city with resources, limit the resources farming of other companies and increase sales / purchase interactions between companies and players.

The convoy system is designed so that players play together, you cannot deliver someone else's trailer, so be careful to not lose it!

### So, how it works:

First of all, you'll find the company headquarter in the south of Los Santos, refer to the 'T' blip on the map.

You can go in the little building ahead of the gas station and find the "cloakroom", you must be on duty to work.
In the same room you can find an interface where you can register to convoys.

Once you registered to the convoy, take your truck in the company garage and there you go, go on the top of the map (Paleto Bay).
You'll find a waypoint to take your trailer, get it back to the company headquarter behind the warehouse.
After that all the workers registered in the convoy and who have stored their trailer can receive their pay on the associated point.

### Now the more complex notion:

What the script does:

- Register the convoy workers (can unregister) on the database
- Tag on the database when the worker take out the trailer
- Tag on the database when the worker put in the trailer

When you go on the point to receive your money -> the script will look for how many workers had stored their trailer and give your money according to that.
You need to wait until everyone has returned their trailer before going to get your pay to have the maximum amount of money for the convoy.

Money amount depends on the number of workers whom has returned the trailer (prevent cheating).
It's progressive, you can customize it on the Config.lua ->

```
Config.Pay = {
    {
        EarnPlayer = 600,   -- One worker
        EarnSociety = 0
    },
    {
        EarnPlayer = 800,   -- Two workers
        EarnSociety = 0
    },
    {
        EarnPlayer = 1000,  -- Etc..
        EarnSociety = 0
    },
}
```

Add as many as you need (on my server the maximum of workers was 8) !

Once the number of stored trailers equal the number of payed workers, the convoy is end, CARE you can be trapped here if someone go take his pay before everybody has stored their trailer.

Each trailer generate raw materials that are stored in the warehouse, you can easily adapt it to your needs in the Config.lua by adding or removing items (database name) on the section ->

```
Config.listItems = {
    'weedhead',
    'lighter',
    'hamburger'
}
```

The script will take this list and just randomize between all items 'n' times, so if you want for example 75% chance to get water and 25% bread you need to set it like this:

```
Config.listItems = {
    'water',
    'water',
    'water',
    'bread'
}
```

A bit scary yeah, but I made it fast sorry.

If you have any question feel free to dm me on github or discord: Skulrag#4676.

# FR

Besoin de:
- esx_datastore
- esx_addonaccount
- esx_addoninventory
- esx_vehicleshop
- esx_service
- esx_skin
- esx_society

### [FiveM][Job][Private] Entreprise de transport de frêt, stockage et livraison.

Ce script a pour but d'avoir une entreprise qui permet de générer des matériaux et de fournir la ville en ressources, limiter le farm de ressources des entreprises et augmenter les interactions vente / achat entre les différentes sociétés et joueurs.

Le système de convois est conçu de manière à ce que les joueurs jouent ensemble, vous ne pouvez pas rendre la remorque de quelqu'un d'autre, attention donc!

### Comment ça marche:

Premièrement vous trouverez le QG de l'entreprise au sud de la ville, voir le blip 'T' sur la carte.

Le vestiaire pour la prise de service se trouve dans le petit batiment en face de la station service, vous devez prendre votre service pour pouvoir travailler.
Dans la même pièce vous trouverez l'interface pour s'inscrire aux convois.

Une fois que vous êtes inscrit, prenez un camion dans le garage de l'entreprise et direction le Paleto Bay pour récupérer votre remorque.
Ensuite, ramenez la remorque au dépôt, vous trouverez un point derrière le batiment de stockage.
Vous pouvez désormais prendre votre paye.

### Notion plus complexe:

Le script agit comme ceci:

- Enregistre les convoyeurs inscrits dans la base de donnée
- Tag dans la bdd quand le convoyeur récupère la remorque
- Tag dans la bdd quand le convoyeur livre la remorque

Quand vous allez sur le point pour recevoir l'argent, le script va compter le nombre de personne qui ont rendu la remorque dans le convoi pour vous donner la somme d'argent adaptée. Pensez à bien attendre que tout le monde ait rendu sa remorque pour ensuite aller tous ensemble récupérer l'argent, sinon vous n'aurez pas la somme maximale.

La somme dépend du nombre de personne qui ont rendu la remorque,
vous pouvez customiser la somme dans le Config.lua -> 

```
Config.Pay = {
    {
        EarnPlayer = 600,   -- One worker
        EarnSociety = 0
    },
    {
        EarnPlayer = 800,   -- Two workers
        EarnSociety = 0
    },
    {
        EarnPlayer = 1000,  -- Etc..
        EarnSociety = 0
    },
}
```

Vous pouvez en ajouter autant que vous le souhaitez.
Sur mon serveur c'était 8, ce qui est déjà pas mal, plus on est de fou plus on rit!

Une fois que le nombre de personne payé est égal au nombre de remorques rendues, le convoi est arrêté automatiquement et vous pouvez enchaîner.

Chaque remorque rendue génère des matériaux qui sont stocké dans le dépôt de l'entreprise (seul le boss et les Transporteurs y ont accès). Après vous pouvez revendre la marchandise aux entreprises / particuliers en ville et ainsi fournir la ville en matière première (plus de nécessité de farmer pour l'Unicorn par exemple).

Vous pouvez configurer la liste des matériaux dans le Config.lua -> 

```
Config.listItems = {
    'weedhead',
    'lighter',
    'hamburger'
}
```

Le script prend cette liste et va générer de manière aléatoire 'n' items pour chaque remorque rendue.
Par exemple si je veux uniquement 75% d'eau et 25% de pain -> 


```
Config.listItems = {
    'water',
    'water',
    'water',
    'bread'
}
```

Système un peu brute de force mais marche et est facile à comprendre!

Si vous avez des question, je suis dispo sur Github et discord Skulrag#4676.
