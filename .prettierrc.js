module.exports = {
  // Custom	settings
  printWidth: 100,
  
  // Semicolons are not required in JS and rarely really needed
  // Personally I find them distracting
  semi: false,
  singleQuote: true, // Not so heavy on the eyes
  quoteProps: "consistent", // Leaning towards consistence
  
  // This is default value since 2.0.0; 
  // Easier refactoring, less noise in Diffs
  trailingComma: "es5", 

  // Defaults, just in case
  tabWidth: 2,
  useTabs: false,
  jsxSingleQuote: false,
  bracketSpacing: true,
  jsxBracketSameLine: false,
  arrowParens: "always", // This is default value since 2.0.0
  requirePragma: false,
  endOfLine: "lf", // This is default value since 2.0.0
}
