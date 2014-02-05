var marked = Npm.require('marked');
var fs = Npm.require('fs');
var path = Npm.require('path');
var _ = Npm.require('underscore');

escape = function (str) {
  return str
    .replace(/[\\]/g, '\\\\')
    .replace(/[\"]/g, '\\\"')
    .replace(/[\/]/g, '\\/')
    .replace(/[\b]/g, '\\b')
    .replace(/[\f]/g, '\\f')
    .replace(/[\n]/g, '\\n')
    .replace(/[\r]/g, '\\r')
    .replace(/[\t]/g, '\\t');
};

var handler = function(compileStep) {
  var source = compileStep.read().toString('utf8');
  var outputFile = compileStep.inputPath + ".js";

  var baseName = path.basename(compileStep.inputPath, '.md')

  try {
    var html = marked(source);
  } catch (e) {
    throw new Error(
      compileStep.inputPath + ':' +
      (e.location ? (e.location.first_line + ': ') : ' ') +
      e.message
    );
  }

  var output = 'Markdown["' + baseName + '"] = "' + escape(html) + '";\n';

  compileStep.addJavaScript({
    path: outputFile,
    sourcePath: compileStep.inputPath,
    data: output,
    bare: true
  });
};

Plugin.registerSourceHandler("md", handler);
