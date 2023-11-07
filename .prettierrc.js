/** @type {import("prettier").Config} */
const config = {
  root: true,
  semi: true,
  singleQuote: false,
  quoteProps: "as-needed",
  tabWidth: 2,
  useTabs: false,
  trailingComma: "all",
  printWidth: 120,
  bracketSameLine: true,
  endOfLine: "lf",
  arrowParens: "always",
  bracketSpacing: true,
  plugins: ["prettier-plugin-sql"],
};

export default config;
