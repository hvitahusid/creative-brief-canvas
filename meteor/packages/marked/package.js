console.log('loading package: marked')

Package.describe({
  summary: "Parse Markdown Files"
});

Package._transitional_registerBuildPlugin({
  name: "marked",
  use: [],
  sources: [
    'compile-markdown.js'
  ],
  npmDependencies: {"marked": "0.3.1"}
});


Package.on_use(function(api) {
  api.add_files('globals.js', ['client']);
});