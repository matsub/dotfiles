// https://eslint.org/docs/user-guide/configuring

module.exports = {
  // add your custom rules here
  'parserOptions': {
    'ecmaVersion': 8 // or 2017
  },
  'rules': {
    // allow paren-less arrow functions
    'arrow-parens': 0,
    // allow async-await
    'generator-star-spacing': 0,
    // allow dangling comma
    'comma-dangle': ['error', 'only-multiline'],
  }
}
