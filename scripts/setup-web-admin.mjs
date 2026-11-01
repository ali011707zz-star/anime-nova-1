import fs from "node:fs";
import crypto from "node:crypto";
import readline from "node:readline/promises";
import { stdin as input, stdout as output } from "node:process";

const envPath = "/opt/anime-nova/.env";
const rl = readline.createInterface({ input, output });
const ask = (q) => rl.question(q, { hideEchoBack: true });
const password = await ask("Nova Control password: ");
const confirm = await ask("\nRepeat password: ");
rl.close();
if (!password || password.length < 16 || password !== confirm) {
  console.error("\nPassword must match and be at least 16 characters.");
  process.exit(1);
}
const salt = crypto.randomBytes(16).toString("hex");
const hash = crypto.scryptSync(password, salt, 64).toString("hex") + "." + salt;
let env = fs.existsSync(envPath) ? fs.readFileSync(envPath, "utf8") : "";
if (!/^NOVA_ADMIN_BACKUP_PASSWORD_HASH=.+$/m.test(env)) {
  console.error("\nNo existing backup password was found; refusing to remove your second login path.");
  process.exit(1);
}
const existingPath = env.match(/^NOVA_ADMIN_PATH=(.+)$/m)?.[1]?.trim();
const path = existingPath || "/nova-control-" + crypto.randomBytes(12).toString("hex");
for (const [key, value] of [
  ["NOVA_ADMIN_PATH", path],
  ["NOVA_ADMIN_PASSWORD_HASH", hash],
]) {
  const line = `${key}=${value}`;
  const re = new RegExp(`^${key}=.*$`, "m");
  env = re.test(env) ? env.replace(re, line) : `${env.trimEnd()}\n${line}\n`;
}
fs.writeFileSync(envPath, env);
console.log(`\nNova Control URL path: ${path}`);
console.log("\nRestart the API after saving both passwords securely.");