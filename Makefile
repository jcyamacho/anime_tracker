build_json:
	flutter pub run build_runner build

update-schema:
	npm i -g get-graphql-schema && get-graphql-schema  https://graphql.anilist.co/ --json > lib/src/graphql/schema.json