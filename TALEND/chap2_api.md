# API

## Récupération des données

API GET pour récupérer les données

```txt
https://restcountries.com/v2/callingcode/33
```

## 1. Créez un fichier JSON dans la partie meta

Formatez vos données en récupérant uniquement le nom du Pays la monnaie, son symbole et le code du pays.

## 2. tREST

Ce composant permet de récupérer des données REST. Vous allez le configurer pour récupérer les données à l'aide de la méthode GET.

**https://restcountries.com/v2/callingcode/33**

## 3. Vérifiez que les données sont bien celles que l'on attendait.

Créez un tLogRow pour afficher les données.

## 4. Créez un fichier JSON qui récupère les données que l'on vient d'afficher

Utilisez le composant tFileOutPutJson. On aimerait récupérer les données suivantes

```json
{
    "data": [
        {
            "symbol": "\u20AC",
            "code": "EUR",
            "CountryName": "[\"France\"]",
            "name": "Euro"
        }
    ]
}
```