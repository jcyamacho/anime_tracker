build-runner:
	flutter pub run build_runner build --delete-conflicting-outputs

update-schema:
	npm i -g get-graphql-schema && get-graphql-schema  https://graphql.anilist.co/ > lib/src/graphql/schema.graphql