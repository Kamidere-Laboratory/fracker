/* eslint-disable */
import { defineConfig } from "tsup";

export default defineConfig({
  dts: false,
  splitting: false,
  outDir: "./bundle",
  clean: false,
  env: {
    NODE_ENV: "production",
  },
  treeshake: true,
  bundle: true,
  keepNames: true,
  platform: "node",
  sourcemap: true,
  skipNodeModulesBundle: true,
  format: "esm",
  tsconfig: "./tsconfig.json",
  minify: false,
  config: false,
  shims: true,
  silent: false,
  esbuildOptions(options) {
    options.drop = ["debugger"];
  },
  pure: ["console"],
  esbuildPlugins: [],
});
