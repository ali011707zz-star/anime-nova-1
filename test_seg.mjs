
import { decryptParam } from "./artifacts/api-server/src/lib/security.js";
const segUrl = "g2:6f8e4901c96a000b272cf478.3758a723d3d43c33d1e09b7e1cb76a94.cae488073b301ac1ad3d055bb4a104a222ffbb28aee630a3a9c4ae6b2fed53f7168c33372d54c252adfb89f11c4b9fa93cd9940969f86c49305cb08c7a176781b3fa04e5e392dc0fb7b76f4a2027207414b44346b7e5d1cf086f18";
const refEnc = "g2:11490c33d111ec3c19bd5bc2.19c17ae9c83725fd984d388871ea7367.4043a28454600d8fc247b19688940a55c5d60395bb";
const rawUrl = decryptParam(segUrl);
const rawRef = decryptParam(refEnc);
console.log("Decrypted rawUrl:", rawUrl);
console.log("Decrypted rawRef:", rawRef);

// Test direct fetch
const res1 = await fetch(rawUrl, { headers: { Referer: rawRef, Accept: "*/*" } });
console.log("Direct status:", res1.status, "content-type:", res1.headers.get("content-type"));
const buf1 = Buffer.from(await res1.arrayBuffer());
console.log("Direct bytes:", buf1.length, "hex:", buf1.subarray(0, 32).toString("hex"), "ascii:", buf1.subarray(0, 32).toString("ascii"));

// Test cf-proxy fetch
const cfUrl = "http://localhost:8000/stream?url=" + encodeURIComponent(rawUrl) + "&ref=" + encodeURIComponent(rawRef);
const res2 = await fetch(cfUrl);
console.log("cf-proxy status:", res2.status, "content-type:", res2.headers.get("content-type"));
const buf2 = Buffer.from(await res2.arrayBuffer());
console.log("cf-proxy bytes:", buf2.length, "hex:", buf2.subarray(0, 32).toString("hex"));

