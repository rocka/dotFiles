module.exports = {
    extends: 'eslint:recommended',
    env: {
        es6: true,
        node: true,
        browser: true
    },
    parserOptions: {
        ecmaVersion: 8,
        ecmaFeatures: {
            jsx: true,
            experimentalObjectRestSpread: true
        }
    },
    rules: {
        semi: 'off',
        'no-console': 'off'
    }
};

