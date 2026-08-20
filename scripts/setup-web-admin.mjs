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
if (!password || password.length < 12 || password !== confirm) {
  console.error("\nPassword must match and be at least 12 characters.");
  process.exit(1);
}
const salt = crypto.randomBytes(16).toString("hex");
const hash = crypto.scryptSync(password, salt, 64).toString("hex") + "." + salt;
const alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567";
const bytes = crypto.randomBytes(20);
let bits = "";
for (const b of bytes) bits += b.toString(2).padStart(8, "0");
let secret = "";
for (let i = 0; i < bits.length; i += 5) secret += alphabet[parseInt(bits.slice(i, i + 5).padEnd(5, "0"), 2)];
const path = "/nova-control-" + crypto.randomBytes(12).toString("hex");
let env = fs.existsSync(envPath) ? fs.readFileSync(envPath, "utf8") : "";
for (const [key, value] of [["NOVA_ADMIN_PATH", path], ["NOVA_ADMIN_PASSWORD_HASH", hash], ["NOVA_ADMIN_TOTP_SECRET", secret]]) {
  const line = `${key}=${value}`;
  const re = new RegExp(`^${key}=.*$`, "m");
  env = re.test(env) ? env.replace(re, line) : `${env.trimEnd()}\n${line}\n`;
}
fs.writeFileSync(envPath, env);
console.log(`\nNova Control URL path: ${path}`);
console.log(`Google Authenticator secret: ${secret}`);
console.log(`OTP URI: otpauth://totp/Anime%20NOVA%20Control?secret=${secret}&issuer=Anime%20NOVA`);
console.log("\nRestart the API after scanning the secret.");