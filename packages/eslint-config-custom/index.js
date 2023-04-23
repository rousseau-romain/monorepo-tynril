module.exports = {
  parser: '@typescript-eslint/parser',
  extends: ['eslint:recommended', 'turbo', 'prettier', 'plugin:@typescript-eslint/recommended'],
  plugins: ['svelte3', '@typescript-eslint', 'align-assignments'],
  ignorePatterns: ['*.cjs'],
  overrides: [{ files: ['*.svelte'], processor: 'svelte3/svelte3' }],
  settings: {
    'svelte3/typescript': () => require('typescript'),
  },
  parserOptions: {
    sourceType: 'module',
    ecmaVersion: 2020,
  },
  env: {
    browser: true,
    es2017: true,
    node: true,
  },
  rules: {
    'align-assignments/align-assignments': [2, { requiresOnly: false }],
  },
}
