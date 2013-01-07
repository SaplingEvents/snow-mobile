# README

## Updating the site

As of yet there is no administrative functionality in the app. In order to change dynamic content, such as speakers, do the following.

1. Make a fresh copy of production
```
heroku pgbackups:capture --app snowmobile-production
```
1. Pull it down to staging
``` 
heroku pgbackups:restore DATABASE `heroku pgbackups:url --app snowmobile-production` --app snowmobile-staging --confirm snowmobile-staging
```
1. Make changes as needed.
```
heroku console --app snowmobile-staging
```
1. Smoke test on staging http://snowmobile-staging.com
1. Make a fresh backup of staging
```
heroku pgbackups:capture --app snowmobile-staging
```
1. Restore to Production
```
heroku pgbackups:restore DATABASE `heroku pgbackups:url --app snowmobile-staging` --app snowmobile-production --confirm snowmobile-production
```

