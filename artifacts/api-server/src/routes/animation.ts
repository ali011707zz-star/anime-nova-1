import { Router, type Request, type Response } from "express";
import { AsyncLocalStorage } from "node:async_hooks";
import { randomBytes, createHash, createDecipheriv } from "node:crypto";
import { encryptParam, encryptProxyUrl, isEncrypted } from "../lib/security.js";
import {
  makeAnimCacheKey,
  getFromSourceCache,
  setSourceCache,
  shouldRefreshCache,
} from "../lib/sourceCache.js";

const router = Router();

const TMDB_KEY  = process.env.TMDB_API_KEY || "8265bd1679663a7ea12ac168da84d2e8";
const TMDB_BASE = "https://api.themoviedb.org/3";
const SD_BASE   = "https://watch.stardima.com/watch";
const SD_AJAX   = "https://watch.stardima.com/watch/wp-admin/admin-ajax.php";
const MV_BASE   = "https://moviz-time.org"; // was moviz-time.co (301→org as of 2026-07)
const AS_CDN_B  = "https://as-cdn21.top";
const RUBY_B    = "https://rubystm.com";

// ── Icefy (streams.icefy.top) — عبر Orkestr EU relay ─────────────────────────
// API: GET /movie/{tmdbId} → {"stream":"https://streams.icefy.top/{hash}/master.m3u8"}
// CF blocks Replit IPs → route API + HLS through animenovaa.duckdns.org (EU IP)

// ── SeePanal (panel.seepanel.top) ─────────────────────────────────────────────
const SP_BASE = "https://panel.seepanel.top/api";
const SP_KEY  = "4F5A9C3D9A86FA54EACEDDD635185";
const SP_UUID = "d506abfd-9fe2-4b71-b979-feff21bcad13";
const spSearchCache = new Map<string, { data: any; ts: number }>();
const SP_TTL = 3_600_000;

// ── VidFast Pro helpers (shared with anime.ts logic, duplicated here for module isolation) ──
const _VFK1 = Buffer.from("6430779f4751854e855dcf55adedd397341ca1917f499326d39987a9de3f10b1", "hex");
const _VFK2 = Buffer.from("7c81780901000000", "hex");
const _VFK3 = Buffer.from("2339bbcb00000000", "hex");
const _VF_ORIGIN       = "https://vidfast.pro";
const _VF_PROBE_PREFIX = "/c1e375a038fedd84d8efd9f3a6b2aba044d1f28e/x";
const _VF_STREAM_PFX   = "j2iuFyZz_-A";
const _VF_UA           = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36";
const _VF_PROBE_B64    = "yRAVs22iAf78iGHUOkZQsthwfhH1kgU62bZJTiUFjKFlVxqZQpb5nQgHa88lcTxORJbT9ptkm1J8AEOgR0RLloWg4GDpW7Lsny332wNyuXRg+y1q5EoP1Y089BNFi5cXfokMadNBaaBodNW1tHwLVOKf6cTw1R6fXP2HdVMUs45jovc3xZqBZAv72JBpGU7LUQv5EcIn6+r36B3ULPz8d1qf/cpyaqZjgGfQoQjtySeeLaRPqeO97n+DDTHWiW0iaNPHQfyMiDWSMcv1fLK8x+cT1zbiPMDN5Pt/+O/7QYxQ35YN7/dmD9uq7mmKp+vZqfxNV7tDqqGT3HpaxdnLN+afklfMiX2kyWmMuCeaBDmGUnvm6gCZ/uTcCBs51xP16O5EGVAGoa5t8uY2W1vT2YkjJ53C0+/BP6bUEaLjIFnp4lyiKqWiBZ27BiQR3B46BRLsy5YOmVg9w49bg6+joS3JfELpc+4SFlfPKo1RVCxqoPhH7hkYL6BFwFUwvPuecRjQ8NoRch0xozGZZwWbCvUBFTkGPSS734lUJ9MoaXMyetIGcSdn06dulmwRsNgistOAThXnPn3QXE7dx9fUUTLsiphYB42SGV6wmXN3Cwgl5Fs4zt2WgjLJFFnssitKuDkRNg1C2m8MkKaGcvo2hQRPBVtl118bZPYBdxrFX4UXCkLjgHM+VrnmfFWJIpxyusEi5DudgG85wpL77T2r7V7G6Gufrl/7Nh0oRps9qug3/aD1v3aJvZWpYEBDFeWCRH5xqiyUQzkSkJX6jgcAfMRa1DvHjaQhqkVjx10e2KtFQYa3jcF0LNTUYj2bp7wxidSfR6LVqu06cFiBDvT7aoxBKi80ky27Zr5885gcRmRW/M1jpVO/vBaOz/cNqmZL9QKUlKSt9L6CdR7qLF29tYmf0WfFNkvzDNOPXNzpLihQyMqi1yNg11OJFdox5Zu3FgOhzN1fhXkasJV3YF0ZXdU+DEuOgFpnjk2dE1/ozIYAsD4UDqT9rwjNQFcpXEyneb2J0Lk/0zaSjUfsj8YnD2TA6moODOiPy2PvG5wqJeUH/qSOnYbzCDWB/C+048bP7aLOAVMDhvNlW613Qa76/47S1L38cu3NlUdMl7l4TGbcyrcbqLJZsWJWbGJhmC3PTIx/rkw78TiuwyC+r5PVLDjOb2iAOwqXT+Wa08X62Z0pxJx5PCPz7/o3chcY5NLxOXAZszI2MepSXuc8TlsF+j9wvqWPaBN/OVYBtDQKlWZG4TSueyGeRPTBARekYEPVHE3aDe8C5XRFq5NXrmrGlyq5Bts57rXbIvAq4okUhWD20eso3dP2bcCaTxPZyxOsQKuaCAv3t7v1DafeUxNa3cl41Y/GbvaIULBVsTAaAb82s/Tr9NoNqH96DcyHzNsCK7WxNIcG7DJqEDH5LAJx5dP6QZ+otvrHPD7jMD4Z9cx1wKEAjoCjHxO4qt5iyjzYUp85fDJ8/GOuMb6wan96PnFVcX7Mj41rCJDE2a86cGKjP+Wm9qRX/e5f054XE0y2bqtDIB14XTVq0wjABgRGaYp1ePFTs0Ue3Ehby0AdinGaxbalQQXPlhmArWIKFqT1kEmdeX7DyMB7ekQ/1wNKPjgEJuXsBHfX4shr+jvS8EZA2cqaTT9eiZ/Qlas+81x8D9oHECCrPLAoyxPdZJhvx5KP/zcmY1Npg+qN5AqtLAOkcQck1ETFTJ1FI5uY07alm45MSglEaMbZNAQSybMqjCCUk7auA8gL9zaf+ojS97nhzbJ+STTfeZv2m3iDzrKXks/HQK44EJ6JRw4ymCtfjTKwAlZ9gk65o9wZssKj1P28MotJJbrg6G3Ntzndg2OOPDysAyK+6gifGe1IU1bDNjaVRjpuyZI5D1T4GzsGarlyBP/H8vTSVNBZfqZ8Dcf6P1dLeEVAXUiXYb7WyCtVmmk6W12zDdqWFRbalZ+0ElLeilv8v68gFGCWNuBruHmMgqeYv8PD1qzDvQ9I3TJZmX4JFpFm5brF+u9HiF0UJp+dd+VlXBxcxaBcwUyFafj7dNBKEwjNqHVf6GCUHebbaBMa4YuL8XtcBmdY9JhtueCQCKC4ETKSenzZ4oqO8Q4VR+M6JRjj60ZaWHjxjnBi47mund22TZm6TNnPcGmeRlnJXCGirgLa3xYVIYOvbAZyoUL0fUDhCghFMxhHXXSJxtPUrG3NmvgHNDsAI+cF6cGT2mapb/Z9EyHVVmJIB7C4qNr1WjV8pgvf72QHi/dmciPtuIniswSXsILiaQ6mBgurIetIJYlNITFrn90LGgo/4IFKPhP+okfxszl3FxkxMDMg9y7TGM2Ncnfi2TnAeyXY9h5lDmLq0Rsv/M0QCa1qPWdj3NBo/oyLrk64Eu9Cvtm73z3MyNshGXCz+DwfdOpXA1onxQ/IoaJFLVJQpzAG/NS5Cfo3dMn3TbNGpOOEqGIRulnW02KroWdVYkH6q7L8ZnOlHBQi+2/41UTOWiWQtDnIkE54tfbRC86gBjbAN6ezqX9Q3YSyV8JqxCW1wlDWUif5Dxw0cXDTpeGc0/gT0Im9tx1h0qHCnpKTAPYDltYk8M3oDWGuoDUqeNLe6qhOS3sHx8vZM4QFXnkuJzKIyxhV9wTfD2/K7eMp9X5oZpDd9/LPZanp6+mUAMuRGpe6hoFedMkw535r9IcsJo8r0DkxA4BWM6O9mTEY++brqyXTbKfqzRr4rF6OIvLvro5WYBQT4hjI5KvPU2dBBqYSYVweCZx54zqlb+80rcEOYHPDJ+KHB63r63Xp46ekkyWIXb+SMY24peOcHrFlws47tuaBv14IrD1veqwR0cOLksEDBzbX93nGxaIyu9R3ViJZ2XeHJ9EPPZ3ZGNDN4gSmjWpOvaQjiVYXHGzPhPqChK6IEacZrGkE+/v36wcnMZOL9FJ5d9O/NWBSWSTUVs3s/tWdlWny3lBxerQ2PAErHOEc+hOvIMr2Qp20AKF25be2kItv7qnsPLAOH9mGfwyVI9KZHPj9tBoOlEETjKdL3FXXDzcFcThvFw1jm82e/G0nDTtCE539dtF7gyn5Oi15M+Z09akXhap09aKFRfeZsbrAhqHHOI7WkpLXcIDMufIcScL4JkDO6i58Bx4hZ2PzpPFJ0ThxIuPN6B5hJ/v2C0iI16RMFFfa6LQg0nx+sWk8+jHjTOY/pe+3VcRfjem9g3Y/RzCDOvsKR5Q+ZyTAmHzZu6lZvassz8qfGkOGdSO6spTFCczlDl62YoOR28XtwsapqLkAA5NmSKuNH0VUzsIK91ywofMtY2JM3Da6ALxUT0qLNbhK9P2qBKaJ1X65mphnfzR3qjyCznJ5rg0o0x3c5mtwkLBzjZFC2I4/fbYk739KNKk3GlfH6Z1lJ0jP/uEmlnuBnxZ/Zjdue4nvj3vzYdRXTxUvphKh6CKVLmqojLAFUJ1tR7g/FuVM4nV7qAl31w09ljJzzcJOsnFfTFDPzuqf5ylWc7vMu2mCXcXUgj7oIuejJVE7SzRhKFjxNHWBxAdNd99c/Gn1WWDmMKmLQ58hbo2AqrA+xtMTb6xp1DoRpBZZa+Q8Y3QHMUpcyJeVYp+pgTosAd0s/RRj0rBHSpRRtAPNkQnbybtsHMoxpp3XePX5HURUT8j4BLUCaH8cFFgXXvbrlb0WdwjRZ+LtqTXfyUm6o7lm9R/LLYBG9FOItUUFs6HcYAbCtP2Cr9unKZZ8G1LM4QTky0DJdeKUhlGNpoWe4AIzpxwbltg3EYtJuBXfGGj+PXPHpHTx1ju2eD6k0oYGvfqycuHhzIBBcL5fSq1pbD6fDJ2IkzNTGNXloHjpjic8sPQ+rJ7ZLlcnCBkQID/g0odYwZyCkLTnBWi2aytj6EFG7Y35200ODKOxJB6Dqy2yzPhRllRC/UQpHO7hPDkB0RPqqIIADAiLb3kciIA3j3YCxcTfD6WayQqBdaa71PYfOK1kLH/BQw/Qw4TIDhG8GlL25KzVEGxLVPtXbG0mGBoo+zsihbj5PzNxKawj0wMSIN27NuWjOF2QRuj1wT9z5L/XIbLXaail2MjBYal8RJeTLNBTiT5qTUPbQKyUcpFcn+SZwYkAe4pAg3hEcqfj2Kt95c2X244qYFInRtBMxQECEqv6f6uPDCZtC7kFcvjkc41Xd3kYfufANgK+KuMbRWfRXcqBWGcb4ALyJIMns6KSDOT8xrOV38gA7awgBdlFLj4Ob1gB8LpOx2yGVljC+JOXrDGsCsW12SBk6juFGf2CtnSLKbwr20d4dlS0bpLJ/POGBi6iVqkFn1pfneBbjP46jAIKJpn28bC042APoZRB3r7WQtgYKuFHGnwN7lv6DrSLgeAt3IvaQwxkAvF+ERiJv5Wn2L8gllS8GbXZz0XhvkdnqRxDY/pIyCuvZ8moKoN8NhLI72UWX+xDcx97CqBRbzIQdJa+aSvwWVd5PvH/kx7qmtw9b2TnIawM5Il0L7ZLDS05E84cXMdg830b6BcgY8wdXqzZkcuqp970U+gMPvBFnktQ1+CdCs91vtrkIPxO+iMR/EJ9Dol+pAGArXM0V5FRjudoCgZEbEOtyreGA4GvFwRo/b5hREHsl04c4apwPPEQ90Yy5zL6X55FJ2dzvscgD9lhM1LmMHuIFedjtvgnOfKI9MIi5j+40LJzeVRkcQMm8+AKYYkmDVZnyGJGDunlJAOTapEp40vpnl55ZB4llKwCaXazwMH1Ih/T9rKwtLbxXQX5fsi+fvfAAh3P2i2NhHo2iqWqT0PCMuvkgIyNYDC24WZAbvqXw0/KTzVLHhdIJpVxCmEsqL19Nq/qPpzztOFPystavbZN1a9eRvo4vCOvW3ZGziBAKGrzcJ26LgAyAO9wuxmyIi8vGk7HvGZCU7iR0OJs/xwYq0pnmK+qDhH+1RO+DO0xfT47KadsORgAL4FdAlfF0Dx13XGe8+r754LhxOqtGfCY+P7jz4boFNmchrI8O6o0kOjya4ibp4orssz1rJPJ5OVm1SpqFLKaEqSEmEOV5uVY6GsdloSNyBD2hgZ/4LOUZUR5Xjhfrm2oXuketlbO7ChL82VBEBir3OiPsaJPDNcx+GXLV7kDlPSWIZvYlBM/HsRfRDgfTw19R0QE6xTs2ysNxqedFrjq6OoZjiXedn3Qls1Lx2mL+5by07XkgnEmKtoD3dGQFCKglwpBkH/tvNxGY/TRJ2hejvfNnM5jVzabkqh9/ECrchI3JIH4hVi/3aTjf5o/xbRing8bh6ZxiKkowYrzloTVrbcsO6m+nTvuTvU63pLy5AmtpyNnTUmvqaP5hzOf8Xsx5B21A9STopsAzUFnOyeBTBO8j9ZZCV8fP7DzwcuiZ+MwWrahKTByWplkpeaoF1aGHTbtn9Oh9PygUGUSmTTN09MXU5hFm3/Wv8GW5QW2QpiOWMAFlebJyBquzE+2CEs8RBcymX+7Qiv6ybSATxgEKQJmwksQWj/XdPzWFbfsvkcvpYDLBofLDmT0MTx0PiGayltGBQgEP4ooF6cUD/DvNKqX2JAWj96zIJDq9CvSpGmuCFM5gnsqDo0fthSvgkbYDEA5ye8cswiUQLuCqP7YDsZztoENTM2IyEfbx66/wW4sdVkETRPpBHQ2Xrvh/j5DbhuQDJcnB5RDDwAEXt2jijw0J3ZiFQjpB/LX88bWV0uCYc2Bsl0G406VS12oZLZ3thdNjGS8sy3SYZx8pK4Wo2CX8m05f5AtqAkchRQTMIgtKY/Z0FrA5toBkJWKc3S6ukK25cKaZ+qNHgqXCgalk39ZFE1ZrRYQhQyl8tNyVIpKOJnQ/W8QfoIwlBKUW7LbRt++GCRkIpKKQNSOmbVhMMm2DdKSg+RR+qObPdmr/geOTIEaD7bc6PcLthMpjx15oe+pxwpOoBtqIVM6HhahG2aIkQfYqU7ofveiMP93F6zUguV6y2lQhCJaOKj3hp8NsldDGqem3sI1MVFd6BRCN1xW0I2w1zoe0DblZpV7YL7Jr0GfBhdp5GNoyT6HRqNF3kE61nKuEeX6uwBWRPfbl1XoIR31tUlj6KT1NSFZsW7GEPpGlWgg2ACOMtypkhT8DHbcGz3HAeXr7/GMaRh2UIRVWw3PjLpbf5hbCdvEaXPo6kyHP+w/ZaFef8p6a+37ToC3svmih2kih4lyfoQ22hLM3pvYkY12VFMtkHOBpTPFd4YEroyDmnp2WZw8TV0JYIaqC1z1K6Geb+aIJyq2koC7oGiZp+a19LbVTb30LiRcbWm1oam1B2HeAOXNVJhQHb/XqjbDv7WdjkALI5qO2Q8EoFlMFtC9eG4N1r1zqCMoBkkeeKeDXSaMrbpCSBYdKZsagpF1CJYSLI5eg0DQYGwU12Mx6OoSd+fbuGkoA5nVjA19o6J3g92g2XtYNuNN3ujr+4i2z7gIkJTqeYK9Egno0ZI3rBTTgxVfu7CK2fNiYvvWhQiXNrXQUxGkf3S53vqzNFRooF+i0037lMEDKLbt+1XppkkVz2xCky35TX1DMynl5bDIdj7mSdEakrftrvgCk+yE5rw/kpItv5V3Z6yk4Og9FV5wvAKHufji9CK2/W3HZsmTIi8i0NlXmJouZGzGNzvdqCYTj39+vv1/73UZP2jzM64UKhRgjU00cHdsKiSN1VOF3PVDmh9ujCeck21NY3TYkJH/9cNt6G5HV4+iTyc5q/mnsMmgf28YdjeHXivh5UpL4Zfki4yNBBeaBgc69bSwa/VEmOVLHy7ohLconkikBfDPpH9734GIp2h+wbxDkfsVXYrsFKwynemFpzE4hKBS9OcwQN4iMStpCvPhyHctWc0Q5Ugdp3T0ee8snMZrRLXjD2xM2aOy9QjFVD7jT6NUdIu0RYJTmdNgvrnzL4WPNfCT8w7CbHWfwQlVOpdxW00LnFQOjDXWSCje47BYPUOi1057I9sRnt6W14UD2RoHQj2bJhpAqsnDSG0lOO7p2EsZ63utMDMbJQLEPva5Qp8vUa0rYXVNHY60pImKaK+BDiNdS20QLd9Cl9Ux/HhNtrGIQshl1Q1ZfIdJHjKshgm7JpLK2kMj/M1m7ZvcVYStVjJ3x/tXO9/ngRizmtkq+cmpa+6mvMCwTnuMl+d5KAXIILm6jr5nyVBcdk9013izZyw+3aoUJv//4CR+Z7jfflTkJZNX0ol+NuXxX55WKq4z5JDCeQIC7jSW5fHKjjz/5WT8t0ckZONNFk+Q/OnP8pDQzAdtlesqE/dhgRccvR0+ao1Zg3TmJ49EUrob5WXaPsJGgtCoQYV31hWMM+G+pXM44IsuOVAI5rC2dfVi444LLZYoA+SzKvtkw3cJ8EzgyHwbu76Eys3ApI1dRZqNNYQ/6vBn/DyXJYBu+HpxGAvTdqThM2vSDdcuYY0CyzXjk3mMsqOIqV++7/f57Ch3oYqz/bMBsAc4AgmB/SmrUbkcSU7gkj7dfoJRFePb9xFSfUM7I3dGmtT6KHz8FDp67NpWxA==";
let _animVfProbe: { name: string; data: string }[] | null = null;
function _animVfDeriveKey(header: Buffer): Buffer {
  const h1 = createHash("sha256").update(_VFK1).update(_VFK2).update(_VFK3).digest();
  return createHash("sha256").update(h1).update(header).digest();
}
function _animVfDecJson(b64: string): any {
  const raw    = Buffer.from(b64, "base64");
  const header = raw.subarray(0, 16);
  const iv     = raw.subarray(16, 28);
  const tag    = raw.subarray(raw.length - 16);
  const enc    = raw.subarray(28, raw.length - 16);
  const d = createDecipheriv("aes-256-gcm", _animVfDeriveKey(header), iv);
  d.setAuthTag(tag);
  const plain = Buffer.concat([d.update(enc), d.final()]);
  return JSON.parse(plain.subarray(8).toString("utf8"));
}
function _animVfGetProbe(): { name: string; data: string }[] {
  if (_animVfProbe) return _animVfProbe;
  try {
    const json = _animVfDecJson(_VF_PROBE_B64);
    const list: any[] = Array.isArray(json) ? json : (json.servers || []);
    _animVfProbe = list.map((r: any, i: number) => ({
      name: r.name || r.server || `Server ${i + 1}`,
      data: String(r.data ?? r.id ?? ""),
    })).filter(r => r.data);
  } catch { _animVfProbe = []; }
  return _animVfProbe!;
}
async function _animVfPostStream(data: string, page: string): Promise<string | null> {
  const path = `${_VF_PROBE_PREFIX}/${_VF_STREAM_PFX}/${data}`.replace(/\/+/g, "/").replace(/^\//, "");
  try {
    const res = await fetch(`${_VF_ORIGIN}/${path}`, {
      method : "POST",
      headers: { "User-Agent": _VF_UA, "Origin": _VF_ORIGIN, "Referer": `${_VF_ORIGIN}${page}` },
      signal : AbortSignal.timeout(5_000),
    });
    const text = (await res.text()).trim();
    return (!res.ok || !text || text.startsWith("{")) ? null : text;
  } catch { return null; }
}
async function scrapeVidFastAnim(
  tmdbId: string, type: "movie" | "tv", season: number, episode: number,
  sendSource: (url: string, label: string, directUrl?: string, proxyUrl?: string) => void,
): Promise<void> {
  if (!tmdbId) return;
  const page    = type === "tv" ? `/tv/${tmdbId}/${season}/${episode}` : `/movie/${tmdbId}`;
  const servers = _animVfGetProbe();
  if (!servers.length) return;
  const seenVF = new Set<string>();
  await Promise.allSettled(
    servers.map(async (srv) => {
      const b64 = await _animVfPostStream(srv.data, page);
      if (!b64) return;
      let url: string;
      try { const j = _animVfDecJson(b64); url = j.url; if (!url) return; } catch { return; }
      if (seenVF.has(url)) return;
      seenVF.add(url);
      const proxied = `/api/anime/hls-proxy?url=${encryptParam(url)}&ref=${encryptParam(_VF_ORIGIN + "/")}`;
      sendSource(proxied, `VidFast · ${srv.name}`, url, proxied);
    }),
  );
}
// Dead / empty hosts on SeePanal
const SP_DEAD = [
  "wecima.video","dailymotion","faselhds.life","goveed1.space","vdbtm.shop",
  "okprime.site","vk.com","hgcloud.to","vidhideplus.com","mixdrop",
];

async function spFetch<T>(path: string): Promise<T | null> {
  try {
    const r = await fetch(`${SP_BASE}/${path}/${SP_KEY}/${SP_UUID}/`, {
      headers: { "User-Agent": "okhttp/4.12.0", Accept: "application/json" },
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) return null;
    const text = await r.text();
    if (text.startsWith("<!")) return null;
    return JSON.parse(text) as T;
  } catch { return null; }
}

async function spSearch(query: string): Promise<any[]> {
  const cKey = `sp:${query.toLowerCase()}`;
  const cached = spSearchCache.get(cKey);
  if (cached && Date.now() - cached.ts < SP_TTL) return cached.data;
  const data = await spFetch<{ posters: any[] }>(`search/${encodeURIComponent(query)}`);
  const posters = data?.posters ?? [];
  spSearchCache.set(cKey, { data: posters, ts: Date.now() });
  return posters;
}

function spTitleSim(a: string, b: string): number {
  const norm = (s: string) => s.toLowerCase()
    .replace(/\s*-\s*[\u0600-\u06ff].*/u, "")  // strip Arabic subtitle after dash
    .replace(/[^a-z0-9\u0600-\u06ff ]/g, " ").replace(/\s+/g, " ").trim();
  return titleSim(norm(a), norm(b));
}

// Extract live sources from a SeePanal entry (serie or movie)
// Returns array of { url, quality } for each working server
async function spGetSources(
  poster: any, epIdx: number,
): Promise<Array<{ url: string; quality: string }>> {
  if (poster.type === "movie") {
    const movie = await spFetch<{ sources?: any[] }>(`movie/by/${poster.id}`);
    return (movie?.sources ?? [])
      .filter((s: any) => s.url?.startsWith("http") && !SP_DEAD.some(h => s.url.includes(h)))
      .map((s: any) => ({ url: s.url, quality: s.quality || "HD" }));
  }
  const seasons: any[] | null = await spFetch(`season/by/serie/${poster.id}`);
  if (!seasons?.length) return [];
  const active = seasons
    .filter((s: any) => !s.title?.includes("قريبا") && s.episodes?.some((e: any) => e.sources?.length))
    .sort((a: any, b: any) => a.id - b.id);
  let idx = 0;
  for (const season of active) {
    for (const ep of season.episodes) {
      if (!ep.sources?.length) continue;
      idx++;
      if (idx === epIdx) {
        return (ep.sources as any[])
          .filter((s: any) => s.url?.startsWith("http") && !SP_DEAD.some(h => s.url.includes(h)))
          .map((s: any) => ({ url: s.url, quality: s.quality || "HD" }));
      }
    }
  }
  return [];
}

const UA = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36";

// ── DramaWorld (dwapp.arabypros.com) — كتالوج الأنيميشن الغربي مُخزَّن مؤقتاً ──────
// الـ API محمي بكلاوفلير لكن يقبل أي طلب يطابق هيدرز تطبيق أندرويد الرسمي فقط
// (User-Agent: okhttp/x.x + Accept-Encoding: gzip) — لا حاجة لتجاوز TLS/JS.
// endpoint البحث /search/ غير موثوق (يُعيد نتائج عشوائية لا تطابق الاستعلام)،
// لذا نجلب كتالوج فئتي الأنيميشن كاملاً (id=61 أفلام، id=87 مسلسلات) ونطابق محلياً.
const DW_BASE    = "https://dwapp.arabypros.com/api";
const DW_KEY     = "4F5A9C3D9A86FA54EACEDDD635185/d506abfd-9fe2-4b71-b979-feff21bcad13";
const DW_HEADERS = { "User-Agent": "okhttp/4.12.0", "Accept-Encoding": "gzip" };
let dwCatalogCache: { movies: any[]; series: any[]; ts: number } | null = null;

async function dwFetch(path: string): Promise<any> {
  try {
    const r = await fetch(`${DW_BASE}${path}`, { headers: DW_HEADERS, signal: AbortSignal.timeout(15_000) });
    if (!r.ok) return null;
    const raw = Buffer.from(await r.arrayBuffer()).toString("utf-8");
    // بعض endpoints (genre/years) ترجع JSON مباشر بدون base64
    try { return JSON.parse(raw); } catch { /* not plain JSON, fall through */ }
    // الرد المعتاد = base64(JSON) بمقدمة عشوائية الطول
    for (let start = 0; start < Math.min(raw.length, 60); start++) {
      try { return JSON.parse(Buffer.from(raw.slice(start), "base64").toString("utf-8")); } catch { /* try next offset */ }
    }
    return null;
  } catch { return null; }
}

async function dwFetchAllPages(kind: "movie" | "serie", genreId: number): Promise<any[]> {
  const out: any[] = [];
  for (let page = 1; page <= 60; page++) {
    const items = await dwFetch(`/${kind}/by/filtres/${genreId}/created/${page}/${DW_KEY}/`);
    if (!Array.isArray(items) || !items.length) break;
    out.push(...items);
    if (items.length < 30) break; // آخر صفحة
  }
  return out;
}

async function getDwCatalog(): Promise<{ movies: any[]; series: any[] }> {
  const TTL_MS = 6 * 60 * 60 * 1000; // 6 ساعات
  if (dwCatalogCache && Date.now() - dwCatalogCache.ts < TTL_MS) return dwCatalogCache;
  const [movies, series] = await Promise.all([
    dwFetchAllPages("movie", 61),
    dwFetchAllPages("serie", 87),
  ]);
  dwCatalogCache = { movies, series, ts: Date.now() };
  return dwCatalogCache;
}

// ── Dulo.tv shared client (module-level session cache, 7h TTL) ────────────────
// ── MovieBox auth state (h5-api.aoneroom.com) ────────────────────────────────
const _MBX_API_ANIM    = "https://h5-api.aoneroom.com";
const _MBX_REF_ANIM    = "https://videodownloader.site/";
const _MBX_UA_ANIM     = "Mozilla/5.0 (X11; Linux x86_64; rv:137.0) Gecko/20100101 Firefox/137.0";
const _MBX_SUGGEST_ANIM  = `${_MBX_API_ANIM}/wefeed-h5api-bff/subject/search-suggest`;
const _MBX_SEARCH_ANIM   = `${_MBX_API_ANIM}/wefeed-h5api-bff/subject/search`;
const _MBX_DOWNLOAD_ANIM = `${_MBX_API_ANIM}/wefeed-h5api-bff/subject/download`;
const _MBX_TOKEN_TTL_ANIM = 7 * 24 * 3_600_000;
const _MBX_DUBBED_RE_ANIM = /(?:\[\s*|\b)(?:hindi|arabic|tamil|telugu|spanish|french|portuguese|korean|turkish|urdu|norwegian|italian|german|dual[\s-]?audio|dubbed|dub)(?:\s*\]|\b)/i;
interface MbxAuthAnim { token: string; cookies: string; fetchedAt: number; }
let _mbxAuthAnim: MbxAuthAnim | null = null;
let _mbxAuthAnimPending: Promise<{ token: string; cookies: string } | null> | null = null;

async function getMbxAuthAnim(): Promise<{ token: string; cookies: string } | null> {
  const now = Date.now();
  if (_mbxAuthAnim && now - _mbxAuthAnim.fetchedAt < _MBX_TOKEN_TTL_ANIM) {
    return { token: _mbxAuthAnim.token, cookies: _mbxAuthAnim.cookies };
  }
  // حارس: تجنّب إرسال طلبات auth متعددة في آنٍ واحد (race condition)
  if (_mbxAuthAnimPending) return _mbxAuthAnimPending;
  _mbxAuthAnimPending = (async () => {
    try {
      const r = await fetch(_MBX_SUGGEST_ANIM, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
          "User-Agent": _MBX_UA_ANIM,
          "Referer": _MBX_REF_ANIM,
        },
        body: JSON.stringify({ keyword: "avatar", perPage: 0 }),
        signal: AbortSignal.timeout(12_000),
      });
      if (!r.ok) return null;
      const xUser = r.headers.get("x-user");
      if (!xUser) return null;
      const userInfo = JSON.parse(xUser);
      const setCookies = r.headers.getSetCookie?.() ?? [];
      const cookies = setCookies.map((c: string) => c.split(";")[0]).filter(Boolean).join("; ");
      _mbxAuthAnim = { token: userInfo.token, cookies, fetchedAt: Date.now() };
      return { token: userInfo.token, cookies };
    } catch { return null; }
    finally { _mbxAuthAnimPending = null; }
  })();
  return _mbxAuthAnimPending;
}

const DULO_TV_BASE    = "https://dulo.tv";
const DULO_TV_API_KEY = "WDNUNBUB3HR983Y9ISBADK4O82";
let _duloAnimCookie   = "";
let _duloAnimCookieAt = 0;
const DULO_SESS_TTL_ANIM = 7 * 3_600_000;

function duloRequestHeaders(cookie: string): Record<string, string> {
  return {
    "X-API-Key":     DULO_TV_API_KEY,
    "Authorization": `Bearer ${DULO_TV_API_KEY}`,
    "User-Agent":    UA,
    "Origin":        DULO_TV_BASE,
    "Referer":       `${DULO_TV_BASE}/`,
    ...(cookie ? { Cookie: cookie } : {}),
  };
}

async function duloGetSession(): Promise<string> {
  if (_duloAnimCookie && Date.now() - _duloAnimCookieAt < DULO_SESS_TTL_ANIM) return _duloAnimCookie;
  try {
    const r = await fetch(`${DULO_TV_BASE}/api/session`, {
      headers: duloRequestHeaders(""),
      signal:  AbortSignal.timeout(8_000),
    });
    const raw = r.headers.get("set-cookie") || "";
    const cookie = raw.split(";")[0].trim();
    if (cookie) { _duloAnimCookie = cookie; _duloAnimCookieAt = Date.now(); }
  } catch { /* keep existing cookie */ }
  return _duloAnimCookie;
}

// ── helpers ──────────────────────────────────────────────────────────────────

const _tmdbCache = new Map<string, { data: any; ts: number }>();
const TMDB_TTL_BROWSE = 10 * 60_000;
const TMDB_TTL_DETAIL = 30 * 60_000;
const TMDB_TTL_SEARCH = 5  * 60_000;

async function tmdb(path: string, ttl = TMDB_TTL_BROWSE): Promise<any> {
  const sep = path.includes("?") ? "&" : "?";
  const url = `${TMDB_BASE}${path}${sep}api_key=${TMDB_KEY}&language=ar`;
  const hit = _tmdbCache.get(url);
  if (hit && Date.now() - hit.ts < ttl) return hit.data;
  const r = await fetch(url, { signal: AbortSignal.timeout(12_000) });
  if (!r.ok) throw new Error(`TMDB ${r.status} — ${path}`);
  const data = await r.json();
  _tmdbCache.set(url, { data, ts: Date.now() });
  return data;
}

// ═══════════════════════════════════════════════════════════════════
//  ARABSEED (a.asd.ink) — Arabic dubbed/subbed content
//  a.asd.ink WP REST + episode pages work directly from Replit (confirmed 2026-06)
//  arabseed.ink → 302 → a.asd.ink; m.asd.ink → 302 (dead from Replit)
// ═══════════════════════════════════════════════════════════════════
const AS_BASE = "https://a.asd.ink";

function asDecode(raw: string): string {
  return raw.replace(/&#(\d+);/g, (_, n) => String.fromCharCode(+n))
            .replace(/&amp;/g, "&").replace(/&lt;/g, "<").replace(/&gt;/g, ">");
}

// ════════════════════════════════════════════════════════════════════
//  CF_PROXY_BASE — مشابه لـ anime.ts
//  VPS: localhost:8000 | Replit: NOVA_PROXY_BASE/api/cfproxy
// ════════════════════════════════════════════════════════════════════
const CF_PROXY_PORT = process.env.CF_PROXY_PORT || "8000";
const _NOVA_PROXY_BASE = process.env.NOVA_PROXY_BASE;
const CF_PROXY_BASE = _NOVA_PROXY_BASE
  ? `${_NOVA_PROXY_BASE}/api/cfproxy`
  : `http://localhost:${CF_PROXY_PORT}`;


// ════════════════════════════════════════════════════════════════════
//  hopxProxyGet — جلب عبر Hopx sandbox (IP مختلف يتجاوز CF-block)
// ════════════════════════════════════════════════════════════════════
const HOPX_PROXY_BASE_ANIM = process.env.HOPX_PROXY_URL || "http://localhost:8001";
let _hopxAliveAnim: boolean | null = null;
let _hopxCheckedAtAnim = 0;

async function hopxProxyGet(
  url: string,
  referer?: string,
  timeoutMs = 25000,
): Promise<string | null> {
  const now = Date.now();
  if (_hopxAliveAnim === null || now - _hopxCheckedAtAnim > 60_000) {
    try {
      const h = await fetch(`${HOPX_PROXY_BASE_ANIM}/health`, { signal: AbortSignal.timeout(3000) });
      const body = await h.json() as { ok?: boolean };
      _hopxAliveAnim = h.ok && body.ok === true;
    } catch { _hopxAliveAnim = false; }
    _hopxCheckedAtAnim = now;
  }
  if (!_hopxAliveAnim) return null;
  try {
    const params = new URLSearchParams({ url });
    if (referer) params.set("ref", referer);
    const r = await fetch(`${HOPX_PROXY_BASE_ANIM}/fetch?${params}`, {
      signal: AbortSignal.timeout(timeoutMs + 5000),
    });
    if (!r.ok) return null;
    const data = await r.json() as { status?: number; html?: string; error?: string };
    if (data.error || !data.html || (data.status !== undefined && data.status >= 400)) return null;
    return data.html;
  } catch { return null; }
}

// CF proxy helper — يمرر الطلب عبر curl_cffi
async function cfProxyGet(url: string): Promise<string> {
  const r = await fetch(`${CF_PROXY_BASE}/fetch?url=${encodeURIComponent(url)}`, {
    headers: { "User-Agent": UA },
    signal: AbortSignal.timeout(12_000),
  });
  if (!r.ok) throw new Error(`CF proxy HTTP ${r.status}`);
  return r.text();
}

// cfOrOrkestGet — يستخدم cfProxy فقط
async function cfOrOrkestGet(url: string): Promise<string> {
  const isCfPage = (h: string) =>
    h.includes("Just a moment") || h.includes("cf-browser-verification") || h.length < 300;
  const html = await cfProxyGet(url);
  if (isCfPage(html)) throw new Error("CF blocked via cfProxy");
  return html;
}

// orkestDirectGet — يستخدم CF_PROXY_BASE
async function orkestDirectGet(url: string, timeoutMs = 25_000): Promise<string> {
  const r = await fetch(
    `${CF_PROXY_BASE}/fetch?url=${encodeURIComponent(url)}`,
    { signal: AbortSignal.timeout(timeoutMs) }
  );
  if (!r.ok) throw new Error(`cfProxy HTTP ${r.status}`);
  const html = await r.text();
  if (html.length < 500 || html.includes("Just a moment") || html.includes("Attention Required")) {
    throw new Error("CF blocked via cfProxy");
  }
  return html;
}

// cfProxyChainFetch — يجلب url1 ثم url2 بنفس الجلسة (cookies مشتركة)
async function cfProxyChainFetch(url1: string, url2: string, ref1?: string, timeoutMs = 20_000): Promise<string> {
  const params = new URLSearchParams({ url1, url2, timeout: String(Math.floor(timeoutMs / 1000)) });
  if (ref1) params.set("ref1", ref1);
  const r = await fetch(`${CF_PROXY_BASE}/chain-fetch?${params}`, {
    signal: AbortSignal.timeout(timeoutMs + 5_000),
  });
  if (!r.ok) throw new Error(`chain-fetch HTTP ${r.status}`);
  return r.text();
}

// cfOrOrkestPost — يستخدم CF_PROXY_BASE POST
async function cfOrOrkestPost(url: string): Promise<string> {
  const isCfPage = (h: string) =>
    h.includes("Just a moment") || h.includes("cf-browser-verification") || h.length < 300;
  const r = await fetch(
    `${CF_PROXY_BASE}/fetch?url=${encodeURIComponent(url)}&method=POST`,
    { signal: AbortSignal.timeout(18_000) }
  );
  if (!r.ok) throw new Error(`cfProxy POST HTTP ${r.status}`);
  const html = await r.text();
  if (isCfPage(html)) throw new Error("CF blocked via cfProxy POST");
  return html;
}

async function asFetchPosts(params: string): Promise<Array<{ id: number; link: string; title: { rendered: string } }>> {
  try {
    // arabseed.ink WP REST works directly from Replit IPs (confirmed 2026-06)
    const url = `${AS_BASE}/wp-json/wp/v2/posts?${params}&_fields=id,link,title`;
    const r = await fetch(url, {
      headers: { "User-Agent": UA, Accept: "application/json" },
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) return [];
    const text = await r.text();
    if (!text.trim().startsWith("[")) return [];
    return JSON.parse(text) as Array<{ id: number; link: string; title: { rendered: string } }>;
  } catch { return []; }
}

async function asFindEpisodeUrl(q: string, ep: number): Promise<string | null> {
  const EP_RE = /الحلقة\s+(\d+)/;
  const qWords = q.toLowerCase().split(/\s+/).filter(w => w.length > 2);
  function matchEp(posts: Array<{ id: number; link: string; title: { rendered: string } }>): string | null {
    for (const post of posts) {
      const title = asDecode(post.title?.rendered || "");
      const epM = EP_RE.exec(title);
      if (!epM || parseInt(epM[1], 10) !== ep) continue;
      const titleLow = title.toLowerCase();
      if (qWords.some(w => titleLow.includes(w))) return post.link;
    }
    return null;
  }
  const enc = encodeURIComponent(q);
  const [targeted, asc, desc] = await Promise.all([
    asFetchPosts(`search=${encodeURIComponent(q + " الحلقة " + ep)}&per_page=20`),
    asFetchPosts(`search=${enc}&per_page=100&orderby=date&order=asc`),
    asFetchPosts(`search=${enc}&per_page=100&orderby=date&order=desc`),
  ]);
  return matchEp(targeted) ?? matchEp(asc) ?? matchEp(desc) ?? null;
}

async function asFindMovieUrl(q: string): Promise<string | null> {
  const qWords = q.toLowerCase().split(/\s+/).filter(w => w.length > 2);
  try {
    const posts = await asFetchPosts(`search=${encodeURIComponent(q)}&per_page=20&orderby=relevance`);
    for (const post of posts) {
      const title = asDecode(post.title?.rendered || "").toLowerCase();
      if (qWords.some(w => title.includes(w))) return post.link;
    }
  } catch {}
  return null;
}

async function cfGet(url: string, referer?: string): Promise<string> {
  const r = await fetch(url, {
    headers: {
      "User-Agent"     : UA,
      "Accept"         : "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
      "Accept-Language": "ar,en;q=0.9",
      "Referer"        : referer || url,
    },
    signal: AbortSignal.timeout(14_000),
  });
  if (!r.ok) throw new Error(`HTTP ${r.status}`);
  return r.text();
}

function titleSim(a: string, b: string): number {
  const norm = (s: string) => s.toLowerCase().replace(/[^a-z0-9\u0600-\u06ff ]/g, "").replace(/\s+/g, " ").trim();
  // ASCII-only fallback: strips non-ASCII (e.g. Arabic chars) — helps with mixed-language slugs
  const normAscii = (s: string) => s.toLowerCase().replace(/[^a-z0-9 ]/g, "").replace(/\s+/g, " ").trim();
  const na = norm(a); const nb = norm(b);
  if (na === nb) return 1;
  if (na.includes(nb) || nb.includes(na)) {
    const wa_len = na.split(" ").length;
    const wb_len = nb.split(" ").length;
    const wordRatio = Math.min(wa_len, wb_len) / Math.max(wa_len, wb_len || 1);
    const lenRatio  = Math.min(na.length, nb.length) / Math.max(na.length, nb.length || 1);
    // Penalise by BOTH word count AND char length; prevents "Kung Fu Panda" from
    // strongly matching "Kung Fu Panda 4" or "Kung Fu Panda: Dragon Knight"
    return Math.min(0.95, 0.85 * (0.4 + Math.min(wordRatio, lenRatio) * 0.6));
  }
  const wa = na.split(" "); const wb = nb.split(" ");
  const common = wa.filter(w => wb.some(x => x === w || (w.length > 3 && (x.includes(w) || w.includes(x))))).length;
  const score = common / Math.max(wa.length, wb.length);
  if (score > 0) return score;
  // ASCII fallback: useful when one string has Arabic that the other omits
  const aa = normAscii(a); const ab = normAscii(b);
  if (!aa || !ab) return 0;
  if (aa === ab) return 0.92;
  if (aa.includes(ab) || ab.includes(aa)) {
    const rl = Math.min(aa.length, ab.length) / Math.max(aa.length, ab.length || 1);
    return Math.min(0.88, 0.75 * (0.4 + rl * 0.6));
  }
  const wa2 = aa.split(" "); const wb2 = ab.split(" ");
  const c2 = wa2.filter(w => wb2.some(x => x === w || (w.length > 3 && (x.includes(w) || w.includes(x))))).length;
  return (c2 / Math.max(wa2.length, wb2.length)) * 0.9; // slight penalty for ASCII-only match
}

function parsePostId(html: string): string | null {
  for (const re of [/postid-(\d+)/, /post_id['":\s]+(\d+)/, /"id":(\d+)/]) {
    const m = html.match(re); if (m) return m[1];
  }
  return null;
}

function parseNonce(html: string): string {
  // Try data-nonce attribute first
  const m1 = html.match(/data-nonce="([a-f0-9]{10,12})"/);
  if (m1) return m1[1];
  // Try JSON nonce
  const m2 = html.match(/"nonce"\s*:\s*"([a-f0-9]{10,12})"/);
  if (m2) return m2[1];
  // Try wp_localize_script nonce
  const m3 = html.match(/nonce["'\s:]+([a-f0-9]{10,12})/);
  if (m3) return m3[1];
  return "023077457a";
}

// Extract data-src or src iframes from HTML
function parseIframes(html: string, skipDomains: string[] = []): string[] {
  const seen = new Set<string>();
  const out: string[] = [];
  const re = /<iframe[^>]+(?:data-src|src)\s*=\s*["']([^"']+)["'][^>]*>/gi;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const u = m[1].trim();
    if (!u || u.startsWith("about:") || u.startsWith("javascript:")) continue;
    if (seen.has(u)) continue;
    const skip = skipDomains.some(d => u.includes(d));
    if (skip) continue;
    seen.add(u);
    out.push(u);
  }
  return out;
}

// ── StarDima helpers ──────────────────────────────────────────────────────────

function parseSDShows(html: string): { title: string; slug: string; poster: string; section: "tvshows" | "movies" }[] {
  const seen = new Set<string>();
  const out: { title: string; slug: string; poster: string; section: "tvshows" | "movies" }[] = [];

  for (const section of ["tvshows", "movies"] as const) {
    const re1 = new RegExp(
      `href="https://watch\\.stardima\\.com/watch/${section}/([^"]+)"[^>]*>[\\s\\S]{0,400}?<img[^>]+src="([^"]+)"[^>]*alt="([^"]*)"`, "g"
    );
    let m: RegExpExecArray | null;
    while ((m = re1.exec(html)) !== null) {
      const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
      if (seen.has(slug)) continue; seen.add(slug);
      out.push({ slug, poster: m[2], title: m[3].trim() || slug, section });
    }
    const re2 = new RegExp(
      `<a[^>]+href="https://watch\\.stardima\\.com/watch/${section}/([^"]+)"[^>]*>([^<]+)<`, "g"
    );
    while ((m = re2.exec(html)) !== null) {
      const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
      if (seen.has(slug)) continue; seen.add(slug);
      out.push({ slug, poster: "", title: m[2].trim() || slug, section });
    }
  }
  return out;
}

function parseSDEpisodes(html: string): { title: string; slug: string; num: number }[] {
  const seen = new Set<string>();
  const out: { title: string; slug: string; num: number }[] = [];
  const re = /href="https:\/\/watch\.stardima\.com\/watch\/episodes\/([^"]+)"[^>]*(?:title="([^"]*)")?/g;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const slug = decodeURIComponent(m[1]).replace(/\/$/, "");
    if (seen.has(slug)) continue; seen.add(slug);
    const title = m[2] ? m[2].trim() : slug;
    const numM = title.match(/(\d+)/);
    out.push({ slug, title, num: numM ? parseInt(numM[1]) : out.length + 1 });
  }
  return out;
}

async function sdDoopPlayerAjax(postId: string, nonce: string, referer: string): Promise<string[]> {
  const out: string[] = [];
  await Promise.allSettled(
    [1, 2, 3, 4, 5].map(async (num) => {
      const body = new URLSearchParams({
        action : "doo_player_ajax",
        post_id: postId,
        nonce,
        num    : String(num),
        g      : "0",
      });
      try {
        const r = await fetch(SD_AJAX, {
          method : "POST",
          headers: {
            "Content-Type"    : "application/x-www-form-urlencoded",
            "User-Agent"      : UA,
            "Referer"         : referer,
            "X-Requested-With": "XMLHttpRequest",
          },
          body  : body.toString(),
          signal: AbortSignal.timeout(7_000),
        });
        if (!r.ok) return;
        const text = await r.text();
        if (!text || text === "0" || text === "false") return;
        let parsed: any;
        try { parsed = JSON.parse(text); } catch { return; }
        const url = parsed.embed_url || parsed.url || parsed.link || "";
        if (url) out.push(url);
      } catch { /* skip */ }
    })
  );
  return out;
}

// ── moviz-time.org helpers (was moviz-time.co — 301→org 2026-07) ─────────────

function parseMVLinks(html: string): { url: string; title: string }[] {
  const seen = new Set<string>();
  const out: { url: string; title: string }[] = [];
  // Match any moviz-time.org (or .co redirect) page links
  const re = /href="(https?:\/\/moviz-time\.(?:org|co)\/[^"]+)"[^>]*(?:title="([^"]*)")?/gi;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    let url  = m[1].replace("moviz-time.co", "moviz-time.org");
    const title = m[2] || decodeURIComponent(url).split("/").filter(Boolean).pop() || url;
    if (seen.has(url)) continue;
    // Skip pagination, category, feed, contact, tag pages
    if (/\/(category|page|feed|tag|contact|about|wp-|wp-json)\//i.test(url)) continue;
    if (url === "https://moviz-time.org/" || url === "https://moviz-time.org") continue;
    seen.add(url);
    out.push({ url, title });
  }
  return out;
}

async function mvScrapeMovie(url: string): Promise<string[]> {
  try {
    const html = await cfGet(url, MV_BASE + "/");
    const iframes = parseIframes(html, ["moviz-time", "google", "histats", "w3counter"]);
    return iframes;
  } catch { return []; }
}

// For moviz-time.org series: find episode links
async function mvFindEpisode(seriesUrl: string, epNum: number): Promise<string | null> {
  try {
    const html = await cfGet(seriesUrl, MV_BASE + "/");
    // Look for episode links (match both .org and .co domains)
    const re = /href="(https:\/\/moviz-time\.(?:org|co)\/[^"]+(?:الحلقة|حلقة|episode)[^"]+)"/g;
    const episodes: { url: string; num: number }[] = [];
    let m: RegExpExecArray | null;
    while ((m = re.exec(html)) !== null) {
      const ep = m[1];
      const numM = ep.match(/(?:الحلقة|حلقة|episode)[^\d]*(\d+)/u);
      const num = numM ? parseInt(numM[1]) : episodes.length + 1;
      episodes.push({ url: ep, num });
    }
    if (!episodes.length) return null;
    episodes.sort((a, b) => a.num - b.num);
    const target = episodes.find(e => e.num === epNum) || episodes[epNum - 1] || episodes[0];
    return target?.url || null;
  } catch { return null; }
}

// ── topcinemaa.com helpers ────────────────────────────────────────────────────

// topcinemaa uses /search/?query=...&type=all (NOT /?s=)
async function tcSearch(title: string): Promise<{ url: string; title: string; epNum?: number }[]> {
  const out: { url: string; title: string; epNum?: number }[] = [];
  const seen = new Set<string>();
  try {
    const html = await cfGet(`https://topcinemaa.com/search/?query=${encodeURIComponent(title)}&type=all`, "https://topcinemaa.com/");
    const re = /href="(https:\/\/topcinemaa\.com\/[^"]+)"[^>]*title="([^"]+)"/g;
    let m: RegExpExecArray | null;
    while ((m = re.exec(html)) !== null) {
      const url = m[1]; const t = m[2];
      if (!url || seen.has(url)) continue;
      if (/\/(category|page|feed|tag|wp-|wp-json|search|movies|series|full-packs|netflix)\//i.test(url)) continue;
      if (url === "https://topcinemaa.com/") continue;
      seen.add(url);
      // Extract episode number from title or URL
      const decoded = decodeURIComponent(url);
      const numM = (t + " " + decoded).match(/(?:الحلقة|ep|episode)[^\d]*(\d+)/ui);
      out.push({ url, title: t, epNum: numM ? parseInt(numM[1]) : undefined });
    }
  } catch { /* silent */ }
  return out;
}

async function tcScrapePlayer(url: string): Promise<string[]> {
  try {
    const html = await cfGet(url, "https://topcinemaa.com/");

    // 1. Try JSON-LD embedUrl (Schema.org VideoObject)
    const jsonLdM = html.match(/<script[^>]+type="application\/ld\+json"[^>]*>([\s\S]+?)<\/script>/gi);
    if (jsonLdM) {
      for (const block of jsonLdM) {
        const inner = block.replace(/<script[^>]*>/, "").replace(/<\/script>/, "");
        try {
          const obj = JSON.parse(inner);
          const embedUrl = obj.embedUrl || obj.embed_url || obj.contentUrl || "";
          if (embedUrl && !embedUrl.includes("topcinemaa")) return [embedUrl];
        } catch { /* skip */ }
      }
    }

    // 2. Try data-src iframes (lazy load) - skip image CDN
    const iframes = parseIframes(html, ["topcinemaa", "google", "histats", "w3counter", "wp-content"]);
    if (iframes.length) return iframes;

    // 3. Try scanning for known CDN embed URLs in script tags
    const cdnMatch = html.match(/https?:\/\/(?:embed\.mystream\.to|vidbm\.|streamwish\.|filemoon\.|ok\.ru|dood\.|streamtape\.|vidmoly\.|mega\.nz)[^\s"'<>]{6,}/gi);
    if (cdnMatch) return [...new Set(cdnMatch)].slice(0, 3);

    // 4. Get post ID — try HTML parse first, then WordPress REST API via slug
    let postId = parsePostId(html);
    if (!postId) {
      const slugMatch = url.match(/topcinemaa\.com\/([^/?#]+)\/?$/);
      if (slugMatch) {
        try {
          const slugRaw = slugMatch[1];
          const restText = await cfGet(
            `https://topcinemaa.com/wp-json/wp/v2/posts?slug=${slugRaw}&_fields=id`,
            "https://topcinemaa.com/"
          );
          const restData = JSON.parse(restText);
          if (Array.isArray(restData) && restData[0]?.id) postId = String(restData[0].id);
        } catch { /* silent */ }
      }
    }
    const nonce = parseNonce(html);
    if (!postId) return [];

    const results: string[] = [];
    await Promise.allSettled([1, 2, 3, 4, 5].map(async (num) => {
      const body = new URLSearchParams({ action: "doo_player_ajax", post_id: postId!, nonce, num: String(num), g: "0" });
      try {
        const r = await fetch("https://topcinemaa.com/wp-admin/admin-ajax.php", {
          method: "POST",
          headers: { "Content-Type": "application/x-www-form-urlencoded", "User-Agent": UA, "Referer": url, "X-Requested-With": "XMLHttpRequest" },
          body  : body.toString(),
          signal: AbortSignal.timeout(8_000),
        });
        if (!r.ok) return;
        const text = await r.text();
        if (!text || text === "0" || text === "false") return;
        let parsed: any;
        try { parsed = JSON.parse(text); } catch { return; }
        const u = parsed.embed_url || parsed.url || parsed.link || "";
        if (u) results.push(u);
      } catch { /* skip */ }
    }));
    return results;
  } catch { return []; }
}

// ── TMDB endpoints ────────────────────────────────────────────────────────────

/** Detect Japanese/Chinese/Korean characters — filter out untranslated titles */
function hasCJK(text: string): boolean {
  return /[\u3040-\u30ff\u4e00-\u9fff\u3400-\u4dbf\uff00-\uffef\uac00-\ud7a3\u1100-\u11ff\u3130-\u318f]/.test(text);
}

router.get("/animation/browse", async (req: Request, res: Response) => {
  try {
    const type   = String(req.query.type   || "movie");
    const genre  = String(req.query.genre  || "16");
    const page   = String(req.query.page   || "1");
    const sort   = String(req.query.sort   || "popularity.desc");
    const year   = String(req.query.year   || "");
    const ep     = type === "tv" ? "/discover/tv"    : "/discover/movie";
    const gp     = genre === "all" || genre === "0"
                   ? "16"
                   : genre === "16" ? "16" : `16,${genre}`;
    const tvExtra = type === "tv" ? "&without_keywords=210024&certification_country=US&certification.lte=TV-PG&without_genres=10749" : "&certification_country=US&certification.lte=PG-13&without_genres=10749";
    const yearParam = year
      ? (type === "tv" ? `&first_air_date_year=${year}` : `&primary_release_year=${year}`)
      : "";
    const data: any = await tmdb(`${ep}?with_genres=${gp}&sort_by=${sort}&page=${page}&include_adult=true${tvExtra}${yearParam}&vote_count.gte=10`);
    // Remove results whose TMDB title is still in Japanese/Chinese (no Arabic translation)
    const results = (data.results || []).filter((r: any) => {
      const title = r.title || r.name || "";
      return !hasCJK(title);
    });
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/detail", async (req: Request, res: Response) => {
  try {
    const type = String(req.query.type || "movie");
    const id   = String(req.query.id   || "");
    if (!id) { res.status(400).json({ error: "id required" }); return; }
    const app = type === "tv"
      ? "aggregate_credits,recommendations,content_ratings,videos"
      : "credits,recommendations,videos";
    const data: any = await tmdb(`/${type}/${id}?append_to_response=${app}`, TMDB_TTL_DETAIL);
    // Fallback: if no Arabic overview, fetch English overview so the synopsis section is never empty
    if (!data.overview) {
      try {
        const enUrl = `${TMDB_BASE}/${type}/${id}?api_key=${TMDB_KEY}&language=en-US`;
        const enR = await fetch(enUrl, { signal: AbortSignal.timeout(8_000) });
        if (enR.ok) {
          const enD: any = await enR.json();
          if (enD.overview) data.overview = enD.overview;
        }
      } catch { /* ignore */ }
    }
    // Filter recommendations to animation-only (genre 16 = رسوم متحركة)
    if (data.recommendations?.results) {
      data.recommendations.results = data.recommendations.results.filter(
        (r: any) => (r.genre_ids || []).includes(16)
      );
    }
    res.json(data);
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/season", async (req: Request, res: Response) => {
  try {
    const id     = String(req.query.id     || "");
    const season = String(req.query.season || "1");
    if (!id) { res.status(400).json({ error: "id required" }); return; }
    const data: any = await tmdb(`/tv/${id}/season/${season}`);
    res.json(data);
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/search", async (req: Request, res: Response) => {
  try {
    const q    = String(req.query.q   || "");
    const type = String(req.query.type || "multi");
    if (!q) { res.status(400).json({ error: "q required" }); return; }
    const data: any = await tmdb(`/search/${type}?query=${encodeURIComponent(q)}&include_adult=true`, TMDB_TTL_SEARCH);
    const results = (data.results || []).filter((r: any) => {
      if (type === "multi" && !(r.genre_ids || []).includes(16)) return false;
      const title = r.title || r.name || "";
      return !hasCJK(title);
    });
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

router.get("/animation/trending", async (req: Request, res: Response) => {
  try {
    const type   = String(req.query.type   || "movie");
    const window = String(req.query.window || "week");
    const data: any = await tmdb(`/trending/${type}/${window}`);
    const results = (data.results || []).filter((r: any) => {
      if (!(r.genre_ids || []).includes(16)) return false;
      const title = r.title || r.name || "";
      return !hasCJK(title);
    });
    res.json({ ...data, results });
  } catch (e) { res.status(502).json({ error: String(e) }); }
});

// ── StarDima endpoints (REMOVED — مصدر StarDima محذوف) ───────────────────────

router.get("/animation/stardima-search", (_req: Request, res: Response) => {
  res.status(410).json({ shows: [], error: "StarDima removed" });
});

router.get("/animation/stardima-series", (_req: Request, res: Response) => {
  res.status(410).json({ error: "StarDima removed" });
});

router.get("/animation/stardima-episode", (_req: Request, res: Response) => {
  res.status(410).json({ iframes: [], sources: [], error: "StarDima removed" });
  void 0;
});

// ── Shared HLS / MP4 extractor for embed pages ────────────────────────────────

// Regex patterns to find direct stream URLs inside HTML/JS source
const M3U8_RE  = /["'`](https?:\/\/[^"'`\s]{12,}\.m3u8(?:[^"'`\s]*)?)['"` ]/gi;
const MP4_RE   = /["'`](https?:\/\/[^"'`\s]{12,}\.mp4(?:[^"'`\s]*)?)['"` ]/gi;
const MPD_RE   = /["'`](https?:\/\/[^"'`\s]{12,}\.mpd(?:[^"'`\s]*)?)['"` ]/gi;

function extractStreamsFromHtml(html: string): { url: string; type: "hls" | "mp4" | "dash" }[] {
  const seen = new Set<string>();
  const out:  { url: string; type: "hls" | "mp4" | "dash" }[] = [];
  const push = (url: string, type: "hls" | "mp4" | "dash") => {
    const clean = url.replace(/['"` ]/g, "").trim();
    if (!clean || seen.has(clean)) return;
    // Skip thumbnail/image/logo/font CDNs
    if (/\/(thumb|poster|backdrop|image|img|logo|font|css|js)\//i.test(clean)) return;
    seen.add(clean);
    out.push({ url: clean, type });
  };
  let m: RegExpExecArray | null;
  M3U8_RE.lastIndex = 0; while ((m = M3U8_RE.exec(html)) !== null) push(m[1], "hls");
  MP4_RE.lastIndex  = 0; while ((m = MP4_RE.exec(html))  !== null) push(m[1], "mp4");
  MPD_RE.lastIndex  = 0; while ((m = MPD_RE.exec(html))  !== null) push(m[1], "dash");
  return out;
}

// Try to call the internal anime extract-video API (reuses extractVideoDeep logic)
async function callExtractApi(url: string): Promise<{ directUrl?: string } | null> {
  try {
    const port   = process.env["PORT"] || "5000";
    const apiUrl = `http://localhost:${port}/api/anime/extract-video?url=${encodeURIComponent(url)}`;
    const r = await fetch(apiUrl, { signal: AbortSignal.timeout(14_000) });
    if (!r.ok) return null;
    return (await r.json()) as { directUrl?: string };
  } catch { return null; }
}

// Wrap m3u8 in hls-proxy (relative path → works for client)
function wrapHls(url: string, ref: string): string {
  return `/api/anime/hls-proxy?url=${encryptParam(url)}&ref=${encryptParam(ref)}`;
}

// Wrap MP4/video through video-proxy (needed for IP-tied sources like Streamtape, Sendvid, CDNs)
function wrapMp4(url: string, ref: string): string {
  return `/api/anime/video-proxy?url=${encryptParam(url)}&ref=${encryptParam(ref)}`;
}

// ════════════════════════════════════════════════════════════════════
//  Videasy / Vidking "STREAMCRYPTO" engine — same algorithm as anime.ts's
//  getVideasyAnimeSources, duplicated here so animation.ts (movies/TV
//  cartoons) doesn't depend on the anime route module.
//  [2026-07-15] domain moved again: api.wingsdatabase.com → api.speedracelight.com
//  (re-discovered via vidking.net's live VideoPlayer-*.js chunk).
// ════════════════════════════════════════════════════════════════════
const WINGS_BASE_ANIM = "https://api.speedracelight.com";
const WINGS_SERVERS_ANIM: Record<string, string> = {
  Hydrogen: "cdn/sources-with-title",
  Titanium: "tejo/sources-with-title",
  Oxygen:   "neon2/sources-with-title",
  Lithium:  "downloader2/sources-with-title",
  Helium:   "1movies/sources-with-title",
};
const WINGS_HDRS_ANIM = {
  "User-Agent": UA,
  "Referer": "https://www.vidking.net/",
  "Origin": "https://www.vidking.net",
};
const WC_Hl_A = [1116352408,1899447441,3049323471,3921009573,961987163,1508970993,2453635748,2870763221,3624381080,310598401,607225278,1426881987,1925078388,2162078206,2614888103,3248222580];
const WC_f0_A = 1732584193, WC_Js_A = 61, WC_Sf_A = 8, WC_ms_A = 2654435769, WC_Ys_A = [109,118,109,49]; // "mvm1"
const wcBf_A = (l: number) => (l * (l + 1) & 1) === 0;
const wcIf_A = (l: number) => (l * (l + 1) & 1) === 1;
function wcUi_A(l: number): number { l >>>= 0; l ^= l >>> 16; l = Math.imul(l, 2246822507) >>> 0; l ^= l >>> 13; l = Math.imul(l, 3266489909) >>> 0; l ^= l >>> 16; return l >>> 0; }
function wcPs_A(l: number, o: number): number { l >>>= 0; o &= 31; return o === 0 ? l >>> 0 : (l << o | l >>> 32 - o) >>> 0; }
function wcAf_A(l: string): number { let o = WC_f0_A >>> 0; for (let e = 0; e < l.length; e++) o = wcPs_A((o ^ Math.imul(l.charCodeAt(e), WC_Hl_A[e & 15])) >>> 0, 5); return wcUi_A(o); }
function wcWf_A(l: string): number[] { const o = new Array(256); for (let i = 0; i < 256; i++) o[i] = i; let e = 0; for (let i = 0; i < 256; i++) { e = e + o[i] + l.charCodeAt(i % l.length) & 255; const r = o[i]; o[i] = o[e]; o[e] = r; } return o; }
function wcVf_A(l: string): number { let o = 2166136261; for (let e = 0; e < l.length; e++) o = Math.imul(o ^ l.charCodeAt(e), 16777619) >>> 0; return wcUi_A(o); }
function wcNf_A(l: number, o: number, e: number): number { return ((l ^ o) >>> 0 | (l & o & e) >>> 0) >>> 0; }
function wcRf_A(l: string, o: number): { S: number[]; acc: number } {
  if (wcIf_A(l.length)) return { S: wcWf_A(l), acc: wcAf_A(l) };
  const e = new Array(WC_Js_A);
  let i = wcUi_A(wcVf_A(l) ^ wcUi_A(o >>> 0 ^ WC_ms_A)) >>> 0;
  for (let r = 0; r < WC_Sf_A; r++) {
    if (wcBf_A(r)) {
      const n = i % WC_Js_A;
      i = wcPs_A(i + WC_ms_A >>> 0, 7 + (r & 7));
      e[n] = (i ^ wcUi_A(i)) >>> 0;
      i = wcUi_A(i + n >>> 0);
    } else {
      e[r] = WC_Hl_A[r & 15];
    }
  }
  return { S: e, acc: wcUi_A(i ^ 2779096485) >>> 0 };
}
function wcCf_A(l: { S: number[]; acc: number }, o: number): number {
  const e = l.S; let i = l.acc;
  const r = i % WC_Js_A;
  const n = 0 - +(r in e);
  const u = e[r] >>> 0;
  const d = Math.imul(WC_ms_A, o + 1) >>> 0;
  let g = wcNf_A(i, (u ^ d) >>> 0, n);
  g = (wcPs_A(g + i >>> 0, r & 31) ^ wcPs_A(i, Math.imul(r, 7) & 31)) >>> 0;
  i = wcUi_A(g + WC_ms_A >>> 0);
  e[r] = i >>> 0;
  l.acc = i;
  return i >>> 0;
}
function wcXf_A(l: string, o: number, e: number): Buffer {
  const i = wcRf_A(l, o);
  const r = Buffer.alloc(e);
  let n = 0;
  for (let u = 0; u < e;) {
    const d = wcCf_A(i, n++);
    r[u++] = d & 255;
    if (u < e) r[u++] = (d >>> 8) & 255;
    if (u < e) r[u++] = (d >>> 16) & 255;
    if (u < e) r[u++] = (d >>> 24) & 255;
  }
  return r;
}
function wcDf_A(l: string): Buffer {
  const o = l.replace(/-/g, "+").replace(/_/g, "/").padEnd(Math.ceil(l.length / 4) * 4, "=");
  return Buffer.from(o, "base64");
}
function wcDecrypt_A(cipherB64Url: string, seed: string, mediaIdNum: number): string {
  const ct = wcDf_A(cipherB64Url);
  const ks = wcXf_A(seed, mediaIdNum, ct.length);
  const out = Buffer.alloc(ct.length);
  for (let n = 0; n < ct.length; n++) out[n] = ct[n] ^ ks[n];
  for (let n = 0; n < WC_Ys_A.length; n++) if (out[n] !== WC_Ys_A[n]) throw new Error("bad seed or tampered payload");
  return out.subarray(WC_Ys_A.length).toString("utf8");
}
const _wingsSeedCacheAnim = new Map<string, { seed: string; expiresAt: number }>();
async function wingsFetchSeedAnim(mediaId: string | number): Promise<string> {
  const key = `${WINGS_BASE_ANIM}|${mediaId}`;
  const hit = _wingsSeedCacheAnim.get(key);
  if (hit && hit.expiresAt - 5000 > Date.now()) return hit.seed;
  const r = await fetch(`${WINGS_BASE_ANIM}/seed?mediaId=${encodeURIComponent(String(mediaId))}`, { headers: WINGS_HDRS_ANIM, signal: AbortSignal.timeout(8000) });
  if (!r.ok) throw new Error(`seed request failed: ${r.status}`);
  const d = await r.json() as { seed: string; ttlMs?: number };
  _wingsSeedCacheAnim.set(key, { seed: d.seed, expiresAt: Date.now() + (d.ttlMs ?? 30000) });
  return d.seed;
}

async function getVideasyAnimationSources(
  tmdbId: string,
  mediaType: "movie" | "tv",
  season: number,
  epNum: number,
  title: string,
): Promise<Array<{ url: string; label: string }>> {
  const out: Array<{ url: string; label: string }> = [];
  const tmdbIdNum = parseInt(tmdbId, 10);
  if (!tmdbIdNum) return out;
  await Promise.allSettled(Object.entries(WINGS_SERVERS_ANIM).map(async ([serverName, endpoint]) => {
    try {
      const seed = await wingsFetchSeedAnim(tmdbId);
      const url = new URL(`${WINGS_BASE_ANIM}/${endpoint}`);
      url.searchParams.set("title", title || "");
      url.searchParams.set("mediaType", mediaType);
      url.searchParams.set("year", "");
      url.searchParams.set("episodeId", mediaType === "movie" ? "1" : String(epNum));
      url.searchParams.set("seasonId", mediaType === "movie" ? "1" : String(season));
      url.searchParams.set("tmdbId", tmdbId);
      url.searchParams.set("imdbId", "");
      url.searchParams.set("enc", "2");
      url.searchParams.set("seed", seed);
      const r = await fetch(url, { headers: { ...WINGS_HDRS_ANIM, "Cache-Control": "no-cache" }, signal: AbortSignal.timeout(12_000) });
      if (!r.ok) return;
      const ciphertext = await r.text();
      if (!ciphertext || ciphertext.length < 10) return;
      const decrypted = wcDecrypt_A(ciphertext, seed, tmdbIdNum);
      const data = JSON.parse(decrypted) as { sources?: Array<{ url?: string; type?: string; quality?: string }> };
      if (!data.sources?.length) return;
      for (const src of data.sources) {
        if (!src?.url) continue;
        const isDash = src.type === "dash" || src.url.toLowerCase().includes(".mpd");
        if (isDash) continue;
        const q = src.quality || "HD";
        out.push({ url: src.url, label: `Videasy · ${serverName} · ${q}` });
      }
    } catch { /* silent per server */ }
  }));
  return out;
}

// Hexa cooldown — enc-dec.app returns "Next retry: N minutes" on 500; don't hammer it
let _hexaFailUntil = 0;

// Probe a proxied HLS/MP4 URL through our own server before sending to client.
// Returns true = accessible (200/206), false = dead (skip source).
// Timeout 5s — fast enough to not block the 30s deadline significantly.
async function probeHlsProxy(proxied: string): Promise<boolean> {
  if (!proxied.startsWith("/api/anime/")) return true; // external URL — assume OK
  try {
    const port = process.env.PORT || "5000";
    const pr = await fetch(`http://localhost:${port}${proxied}`, {
      signal: AbortSignal.timeout(5_000),
    });
    // 200/206 = accessible; 403 might still play in browser (auth bypass) so allow it
    return pr.ok || pr.status === 206 || pr.status === 403;
  } catch {
    return false; // timeout or network error = dead
  }
}

// Hosts that must go through video-proxy (IP-tied or CORS-blocked)
const MP4_PROXY_HOSTS = [
  "streamtape", "sendvid", "sendcdn", "uptostream", "uqload",
  "upstream", "vidcdn", "cdnfile", "vidmoly",
];

// Known extractable video hosts (same ones that extractVideoDeep handles in anime.ts)
const EXTRACTABLE_HOSTS = [
  "streamwish", "filemoon", "streamtape", "vidmoly", "vidcloud", "upcloud",
  "megacloud", "rabbitstream", "mcloud", "vidsrc.stream", "alions.pro",
  "vizcloud", "dokicloud", "kerapoxy", "bestx.stream", "asianload",
  "govad", "moviesapi.club", "closeload", "smoothpre", "filmecho",
  "ghost.online", "zoro", "rapid-cloud", "moon-cloud",
];

// Find URLs from known extractable hosts in HTML source
function findExtractableUrls(html: string): string[] {
  const seen = new Set<string>();
  const out: string[] = [];
  const re = /["'`](https?:\/\/[^"'`\s,;{}()\[\]]{10,})['"` ,;)]/g;
  let m: RegExpExecArray | null;
  while ((m = re.exec(html)) !== null) {
    const url = m[1].trim();
    if (!url.startsWith("http")) continue;
    if (EXTRACTABLE_HOSTS.some(h => url.includes(h)) && !seen.has(url)) {
      seen.add(url);
      out.push(url);
    }
  }
  return out;
}

// Try to fetch embed page and extract streams; returns list of found streams
async function scrapeEmbedForStreams(
  embedUrl: string
): Promise<{ url: string; proxyUrl: string; type: "hls" | "mp4" | "dash" }[]> {
  const out: { url: string; proxyUrl: string; type: "hls" | "mp4" | "dash" }[] = [];
  try {
    const html = await cfGet(embedUrl, embedUrl);

    // 1. Look for direct m3u8/mp4 URLs in page source
    const streams = extractStreamsFromHtml(html);
    for (const s of streams.slice(0, 4)) {
      const needProxy = MP4_PROXY_HOSTS.some(h => s.url.includes(h));
      const proxyUrl = s.type === "hls" ? wrapHls(s.url, embedUrl) : needProxy ? wrapMp4(s.url, embedUrl) : s.url;
      out.push({ url: s.url, proxyUrl, type: s.type });
    }

    if (out.length) return out;

    // 2. Look for known extractable host URLs in the HTML
    const extractableUrls = findExtractableUrls(html);
    for (const inner of extractableUrls.slice(0, 3)) {
      const extracted = await callExtractApi(inner);
      if (extracted?.directUrl) {
        const d = extracted.directUrl;
        const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
        const needProxy = MP4_PROXY_HOSTS.some(h => d.includes(h));
        const proxyUrl = type === "hls" ? wrapHls(d, inner) : needProxy ? wrapMp4(d, inner) : d;
        out.push({ url: d, proxyUrl, type });
        if (out.length >= 2) return out;
      }
    }

    if (out.length) return out;

    // 3. Check inner iframes → try extractVideoDeep on each
    const inners = parseIframes(html, ["google", "histats", "w3counter", "doubleclick", "cdn.js"]);
    for (const inner of inners.slice(0, 4)) {
      // Try direct streams from inner page first
      try {
        const innerHtml = await cfGet(inner, embedUrl);
        const innerStreams = extractStreamsFromHtml(innerHtml);
        for (const s of innerStreams.slice(0, 2)) {
          const needProxy = MP4_PROXY_HOSTS.some(h => s.url.includes(h));
          const proxyUrl = s.type === "hls" ? wrapHls(s.url, inner) : needProxy ? wrapMp4(s.url, inner) : s.url;
          out.push({ url: s.url, proxyUrl, type: s.type });
        }
        // Also check extractable hosts in inner page
        const innerExtractable = findExtractableUrls(innerHtml);
        for (const iu of innerExtractable.slice(0, 2)) {
          const ex = await callExtractApi(iu);
          if (ex?.directUrl) {
            const d = ex.directUrl;
            const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
            const needProxy = MP4_PROXY_HOSTS.some(h => d.includes(h));
            out.push({ url: d, proxyUrl: type === "hls" ? wrapHls(d, iu) : needProxy ? wrapMp4(d, iu) : d, type });
          }
        }
      } catch { /* try extractApi directly */ }

      if (!out.length) {
        const extracted = await callExtractApi(inner);
        if (extracted?.directUrl) {
          const d = extracted.directUrl;
          const type: "hls" | "mp4" | "dash" = d.includes(".m3u8") ? "hls" : d.includes(".mpd") ? "dash" : "mp4";
          const needProxy = MP4_PROXY_HOSTS.some(h => d.includes(h));
          const proxyUrl = type === "hls" ? wrapHls(d, inner) : needProxy ? wrapMp4(d, inner) : d;
          out.push({ url: d, proxyUrl, type });
        }
      }

      if (out.length >= 2) break;
    }
  } catch { /* silent */ }
  return out;
}

// ── Anime-Day GitHub subtitle library ────────────────────────────────────────
// فريق أنمي داي ترجم هذه العروض للعربية ورفع ملفات VTT على GitHub Pages
// جميعها مع CORS * وحية تماماً (تحقق 2026-06)
function getAnimeDaySubtitleUrl(title: string, season: number, ep: number): string | null {
  const tl = (title || "").toLowerCase().replace(/[^\w\s]/g, " ").trim();
  const gh = "https://adnango1.github.io";

  if (/regular\s+show/.test(tl) && /movie/.test(tl))
    return `${gh}/RegularShowMovie/movie`;
  if (/regular\s+show/.test(tl))
    return `${gh}/Regular-Show/eps${ep}season${season}.vtt`;
  if (/sym.?bionic/.test(tl))
    return `${gh}/symbionic/eps${ep}.vtt`;
  if (/\bprimal\b/.test(tl) && season === 2)
    return `${gh}/primal2/eps${ep}season1.vtt`;
  if (/demon\s+hunter/.test(tl))
    return `${gh}/thedemonhunter/eps${ep}season${season}.vtt`;
  if (/martial\s+god\s+asura/.test(tl))
    return `${gh}/MARTIALGODASURA/eps${ep}season${season}`;
  if (/ben\s*10.*omnitrix|omnitrix.*ben\s*10/.test(tl))
    return `${gh}/ben10SecretoftheOmnitrix/movie`;

  return null;
}

// ── Animation subtitle local cache ──────────────────────────────────────────
const animSubCache = new Map<string, { content: string | null; language?: string; ts: number }>();
const ANIM_SUB_TTL      = 60 * 60 * 1000; // 1 hour  (success)
const ANIM_SUB_FAIL_TTL =  5 * 60 * 1000; // 5 min   (failure → retry sooner)

// ── Arabic subtitle search for TMDB animation content ───────────────────────
// Uses wyzie.ru (free aggregator, no key) + subdl fallback (needs SUBDL_API_KEY)
router.get("/animation/subtitles", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie"); // movie | tv
  const ep     = parseInt(String(req.query.ep     || "1"), 10) || 1;
  const season = parseInt(String(req.query.season || "1"), 10) || 1;
  const title  = String(req.query.title  || "");
  if (!tmdbId) { res.json({ content: null }); return; }

  const ck = `anim-sub:${tmdbId}:${type}:${season}:${ep}`;
  const hit = animSubCache.get(ck);
  const hitTtl = hit?.content ? ANIM_SUB_TTL : ANIM_SUB_FAIL_TTL;
  if (hit && Date.now() - hit.ts < hitTtl) {
    res.json({ content: hit.content, ...(hit.language ? { language: hit.language } : {}) });
    return;
  }

  try {
    // Step 1: Get IMDB ID from TMDB external_ids
    let imdbId = "";
    try {
      const extR = await fetch(
        `${TMDB_BASE}/${type}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`,
        { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(7_000) }
      );
      if (extR.ok) {
        const ext = await extR.json() as any;
        imdbId = (ext.imdb_id as string) || "";
      }
    } catch { /* ignore */ }

    // Step 2: wyzie.ru — free subtitle aggregator (no key needed)
    if (imdbId) {
      try {
        const wyzieBase = "https://sub.wyzie.ru/search";
        const wyzieQ = type === "tv"
          ? `${wyzieBase}?id=${imdbId}&language=ar&season=${season}&episode=${ep}`
          : `${wyzieBase}?id=${imdbId}&language=ar`;
        const wR = await fetch(wyzieQ, {
          headers: { "User-Agent": UA, "Accept": "application/json" },
          signal: AbortSignal.timeout(10_000),
        });
        if (wR.ok) {
          const wData = await wR.json() as any;
          const items: any[] = Array.isArray(wData) ? wData : (wData?.data ?? []);
          const arItem = items.find((s: any) =>
            (s.language || s.lang || "").toLowerCase().includes("ar") && s.url
          );
          if (arItem?.url) {
            const dlR = await fetch(arItem.url, {
              headers: { "User-Agent": UA },
              signal: AbortSignal.timeout(10_000),
            });
            if (dlR.ok) {
              const content = await dlR.text();
              if (content.includes("-->") || (content.includes(",") && content.includes("\n"))) {
                animSubCache.set(ck, { content, ts: Date.now() });
                res.json({ content }); return;
              }
            }
          }
        }
      } catch { /* fall through */ }
    }

    // Step 2b: wyzie.ru English fallback — client will auto-translate
    if (imdbId) {
      try {
        const wyzieBase = "https://sub.wyzie.ru/search";
        const wyzieEnQ = type === "tv"
          ? `${wyzieBase}?id=${imdbId}&language=en&season=${season}&episode=${ep}`
          : `${wyzieBase}?id=${imdbId}&language=en`;
        const wEnR = await fetch(wyzieEnQ, {
          headers: { "User-Agent": UA, "Accept": "application/json" },
          signal: AbortSignal.timeout(10_000),
        });
        if (wEnR.ok) {
          const wEnData = await wEnR.json() as any;
          const enItems: any[] = Array.isArray(wEnData) ? wEnData : (wEnData?.data ?? []);
          const enItem = enItems.find((s: any) => s.url);
          if (enItem?.url) {
            const dlEnR = await fetch(enItem.url, {
              headers: { "User-Agent": UA },
              signal: AbortSignal.timeout(10_000),
            });
            if (dlEnR.ok) {
              const content = await dlEnR.text();
              if (content.includes("-->")) {
                animSubCache.set(ck, { content, language: "en", ts: Date.now() });
                res.json({ content, language: "en" }); return;
              }
            }
          }
        }
      } catch { /* fall through */ }
    }

    // Step 3: subdl.com with IMDB ID or title (requires SUBDL_API_KEY)
    const sdKey = (process.env.SUBDL_API_KEY || "").trim();
    if (sdKey) {
      try {
        const sdParam = imdbId
          ? `imdb_id=${imdbId.replace("tt", "")}`
          : `film_name=${encodeURIComponent(title)}`;
        const sdEpParam = type === "tv" ? `&season_number=${season}&episode_number=${ep}` : "";
        const sdUrl = `https://api.subdl.com/api/v1/subtitles?api_key=${sdKey}&${sdParam}${sdEpParam}&languages=AR&subs_per_page=5`;
        const sdR = await fetch(sdUrl, {
          headers: { "User-Agent": UA },
          signal: AbortSignal.timeout(10_000),
        });
        if (sdR.ok) {
          const sdData = await sdR.json() as any;
          const subs: any[] = (sdData.subtitles || []).filter((s: any) => s.url);
          if (subs.length > 0) {
            const dlPath = subs[0].url as string;
            const dlUrl = dlPath.startsWith("http") ? dlPath : `https://dl.subdl.com${dlPath}`;
            const dlR = await fetch(dlUrl, { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(12_000) });
            if (dlR.ok) {
              const ct = dlR.headers.get("content-type") || "";
              if (!ct.includes("zip") && !dlUrl.endsWith(".zip")) {
                const content = await dlR.text();
                if (content.includes("-->")) {
                  animSubCache.set(ck, { content, ts: Date.now() });
                  res.json({ content }); return;
                }
              }
            }
          }
        }
      } catch { /* fall through */ }
    }

    animSubCache.set(ck, { content: null, ts: Date.now() });
    res.json({ content: null });
  } catch {
    res.json({ content: null });
  }
});

// ── subtitle-tracks: discover ALL available subtitle tracks for a title ──────
// Returns { tracks:[{id,lang,label,url}] } — Arabic first, then English
// CDN HEAD checks + wyzie.ru + vidzee run in parallel (max ~12s), cached 25 min
const animTracksCache = new Map<string, { tracks: any[]; ts: number }>();
const TRACKS_TTL = 25 * 60 * 1000;

router.get("/animation/subtitle-tracks", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie");
  const ep     = parseInt(String(req.query.ep     || "1"), 10) || 1;
  const season = parseInt(String(req.query.season || "1"), 10) || 1;
  const title  = String(req.query.title  || "");
  if (!tmdbId) { res.json({ tracks: [] }); return; }

  const ck = `tracks:${tmdbId}:${type}:${season}:${ep}`;
  const hit = animTracksCache.get(ck);
  if (hit && Date.now() - hit.ts < TRACKS_TTL) { res.json({ tracks: hit.tracks }); return; }

  type Track = { id: string; lang: string; label: string; url: string };

  // ── 1. IMDB ID from TMDB (needed for wyzie.ru) ──
  let imdbId = "";
  try {
    const r = await fetch(`${TMDB_BASE}/${type}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`, {
      headers: { "User-Agent": UA }, signal: AbortSignal.timeout(5_000),
    });
    if (r.ok) { const d = await r.json() as any; imdbId = String(d.imdb_id || ""); }
  } catch { /* ignore */ }

  // ── 2. CDN candidates (vdrk.site — v2 and v3 are live; v1 returns 404) ──
  const cdnPath = type === "tv" ? `tv/${tmdbId}/${season}/${ep}` : `movie/${tmdbId}`;
  const cdnBase = "https://cache.vdrk.site";
  const cdnCandidates: Track[] = [
    { id: "ar-cdn-v2",   lang: "ar", label: "عربي · CDN",      url: `${cdnBase}/v2/${cdnPath}/Arabic.vtt`   },
    { id: "ar-cdn-v3",   lang: "ar", label: "عربي · CDN 2",    url: `${cdnBase}/v3/${cdnPath}/Arabic.vtt`   },
    { id: "ar-cdn-v2-2", lang: "ar", label: "عربي · CDN 3",    url: `${cdnBase}/v2/${cdnPath}/Arabic2.vtt`  },
    { id: "ar-cdn-v2-3", lang: "ar", label: "عربي · CDN 4",    url: `${cdnBase}/v2/${cdnPath}/Arabic3.vtt`  },
    { id: "en-cdn-v2",   lang: "en", label: "إنجليزي · CDN",   url: `${cdnBase}/v2/${cdnPath}/English.vtt`  },
    { id: "en-cdn-v3",   lang: "en", label: "إنجليزي · CDN 2", url: `${cdnBase}/v3/${cdnPath}/English.vtt`  },
  ];
  const cdnFound: Track[] = [];
  await Promise.allSettled(cdnCandidates.map(async c => {
    try {
      const r = await fetch(c.url, { method: "HEAD", signal: AbortSignal.timeout(5_000) });
      if (r.ok) cdnFound.push(c);
    } catch { /* ignore */ }
  }));

  // ── 3. wyzie.ru (Arabic + English) — run in parallel with CDN ──
  const wyzieItems: Track[] = [];
  if (imdbId) {
    await Promise.allSettled(["ar", "en"].map(async lang => {
      try {
        const q = type === "tv"
          ? `https://sub.wyzie.ru/search?id=${imdbId}&language=${lang}&season=${season}&episode=${ep}`
          : `https://sub.wyzie.ru/search?id=${imdbId}&language=${lang}`;
        const r = await fetch(q, {
          headers: { "User-Agent": UA, Accept: "application/json" },
          signal: AbortSignal.timeout(8_000),
        });
        if (!r.ok) return;
        const data = await r.json() as any;
        const items: any[] = Array.isArray(data) ? data : (data?.data ?? []);
        items.slice(0, 2).forEach((item: any, i: number) => {
          if (!item.url) return;
          const sfx = i > 0 ? ` ${i + 1}` : "";
          wyzieItems.push({
            id: `${lang}-wyzie-${i}`,
            lang,
            label: lang === "ar" ? `عربي · Wyzie${sfx}` : `إنجليزي · Wyzie${sfx}`,
            url: item.url,
          });
        });
      } catch { /* ignore */ }
    }));
  }

  // ── 4. vidzee-meta (starcima) ──
  const vidzeeItems: Track[] = [];
  try {
    const tvExtra = type === "tv" ? `&season=${season}&episode=${ep}` : "";
    const r = await fetch(
      `https://starcima.com/api/vidzee?tmdbId=${tmdbId}&type=${type}&title=${encodeURIComponent(title)}${tvExtra}`,
      { headers: { "User-Agent": UA, Referer: "https://starcima.com/", Accept: "application/json" }, signal: AbortSignal.timeout(8_000) },
    );
    if (r.ok) {
      const vData = await r.json() as any;
      const cnt: Record<string, number> = {};
      const EN_LANGS = ["english", "en"];
      for (const s of (vData.subtitles || []) as any[]) {
        if (!s.url) continue;
        // Resolve relative URLs (starcima returns /api/sub-retime?... for some tracks)
        let trackUrl: string = s.url;
        if (!trackUrl.startsWith("http")) {
          if (trackUrl.startsWith("/")) trackUrl = `https://starcima.com${trackUrl}`;
          else continue; // skip unparseable URLs
        }
        // Skip dead vdrk.site v1 CDN path — v2 and v3 are live
        if (trackUrl.includes("cache.vdrk.site/v1/")) continue;
        const lCode = (s.languageCode || s.language || "").toLowerCase();
        // Only include Arabic or English tracks — skip Bengali, Malay, Russian, etc.
        const isAr = lCode.startsWith("ar");
        const isEn = EN_LANGS.some(l => lCode.startsWith(l));
        if (!isAr && !isEn) continue;
        const lang = isAr ? "ar" : "en";
        const i = (cnt[lang] = (cnt[lang] ?? 0) + 1);
        const sfx = i > 1 ? ` ${i}` : "";
        vidzeeItems.push({
          id: `${lang}-vidzee-${i}`,
          lang,
          label: lang === "ar" ? `عربي · الثريا${sfx}` : `إنجليزي · الثريا${sfx}`,
          url: trackUrl,
        });
      }
    }
  } catch { /* ignore */ }

  // Vyla subtitle API removed — Vyla HF Space replaced by Icefy scraper
  const vylaItems: Track[] = [];

  // ── Anime-Day GitHub subtitles (Arabic, hosted on GitHub Pages) ──
  const adGhUrl = getAnimeDaySubtitleUrl(title, season, ep);
  const adItems: Track[] = adGhUrl ? [{
    id: "ar-animeday-gh",
    lang: "ar",
    label: "عربي · أنمي داي",
    url: adGhUrl,
  }] : [];

  // ── 6. OpenSubtitles free REST API (no key, legacy endpoint) ──
  const osItems: Track[] = [];
  if (imdbId) {
    try {
      const osId = imdbId.replace(/^tt/, "");
      const osUrl = `https://rest.opensubtitles.org/search/imdbid-${osId}/sublanguageid-ara`;
      const r = await fetch(osUrl, {
        headers: { "User-Agent": "TemporaryUserAgent", "X-User-Agent": "TemporaryUserAgent" },
        signal: AbortSignal.timeout(8_000),
      });
      if (r.ok) {
        const items = await r.json() as any[];
        if (Array.isArray(items)) {
          items.slice(0, 3).forEach((item: any, i: number) => {
            const dlLink: string = item?.SubDownloadLink || item?.ZipDownloadLink || "";
            if (!dlLink) return;
            const sfx = i > 0 ? ` ${i + 1}` : "";
            osItems.push({
              id: `ar-opensubs-${i}`,
              lang: "ar",
              label: `عربي · OpenSubs${sfx}`,
              url: dlLink.replace(/\.gz$/, ""),
            });
          });
        }
      }
    } catch { /* ignore */ }
  }

  // ── Kitsunekko Mirror (GitHub) — ترجمة يابانية → عربي تلقائي ──
  // يبحث في أرشيف kitsunekko-mirror عن ملف SRT مطابق للعنوان والحلقة
  const kitsunekkoItems: Track[] = [];
  const kQuery = (title || "").replace(/[^\w\s]/g, " ").trim();
  if (kQuery) {
    try {
      const ghUrl = `https://api.github.com/search/code?q=${encodeURIComponent(kQuery)}+repo:Ajatt-Tools/kitsunekko-mirror+in:path&per_page=15`;
      const ghR = await fetch(ghUrl, {
        headers: { "User-Agent": UA, "Accept": "application/vnd.github+json" },
        signal: AbortSignal.timeout(8_000),
      });
      if (ghR.ok) {
        const ghData = await ghR.json() as any;
        const items: any[] = ghData.items || [];
        const epPad = String(ep).padStart(2, "0");
        const epPatterns = [
          new RegExp(`[-_\\s]0*${ep}[\\s._\\[\\(]`),
          new RegExp(`E${epPad}`),
          new RegExp(`episode[_\\s-]?0*${ep}\\b`, "i"),
        ];
        const picked = type === "movie"
          ? items.find((item: any) => /\.(srt|ass|vtt)$/i.test(item.name || "") && !/\[ch[st]\]|[\u4e00-\u9fff]/.test(item.name || ""))
          : items.find((item: any) => {
              const name: string = item.name || "";
              if (!/\.(srt|ass|vtt)$/i.test(name)) return false;
              if (/\[ch[st]\]|[\u4e00-\u9fff]/.test(name)) return false;
              return epPatterns.some(p => p.test(name));
            });
        if (picked) {
          const rawUrl = `https://raw.githubusercontent.com/Ajatt-Tools/kitsunekko-mirror/main/${picked.path}`;
          kitsunekkoItems.push({
            id: "ar-kitsunekko",
            lang: "ar-auto",
            label: "عربي مُترجم · Kitsunekko",
            url: `/api/anime/translate-vtt?url=${encodeURIComponent(rawUrl)}&from=ja&to=ar`,
          });
        }
      }
    } catch { /* silent — GitHub rate limit or network */ }
  }


  // CinePro subtitles (CP): أُزيلت كلياً بطلب المستخدم 2026-07-09

  // ── Merge, sort Arabic-first, deduplicate by URL ──
  const all = [...adItems, ...cdnFound, ...wyzieItems, ...vidzeeItems, ...vylaItems, ...osItems, ...kitsunekkoItems];
  all.sort((a, b) => (a.lang === "ar" && b.lang !== "ar" ? -1 : a.lang !== "ar" && b.lang === "ar" ? 1 : 0));
  const seen = new Set<string>();
  const tracks = all.filter(t => { if (seen.has(t.url)) return false; seen.add(t.url); return true; });

  // ── Auto-translate: add عربي مُترجم whenever English tracks exist ──
  // Added ALWAYS (even when Arabic exists) so user can switch between direct Arabic and translated
  const firstEnTrack = tracks.find(t => t.lang === "en");
  if (firstEnTrack && !tracks.some(t => t.lang === "ar-auto")) {
    const autoTrack: Track = {
      id: "ar-auto-translate",
      lang: "ar-auto",
      label: "عربي مُترجم",
      url: `/api/anime/translate-vtt?url=${encodeURIComponent(firstEnTrack.url)}&from=en&to=ar`,
    };
    // Insert right after last Arabic track (or at start if none)
    const lastArIdx = tracks.reduce((acc, t, i) => t.lang === "ar" ? i : acc, -1);
    if (lastArIdx >= 0) tracks.splice(lastArIdx + 1, 0, autoTrack);
    else tracks.unshift(autoTrack);
  }

  animTracksCache.set(ck, { tracks, ts: Date.now() });
  res.setHeader("Cache-Control", "no-store");
  res.json({ tracks });
});

// ── StarCima vidzee subtitle proxy (CORS bypass) ────────────────────────────
router.get("/animation/vidzee-meta", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie");
  const ep     = String(req.query.ep     || "1");
  const season = String(req.query.season || "1");
  const title  = String(req.query.title  || "");
  if (!tmdbId) { res.status(400).json({ error: "tmdbId required" }); return; }

  const tvExtra = type === "tv" ? `&season=${season}&episode=${ep}` : "";
  const url = `https://starcima.com/api/vidzee?tmdbId=${tmdbId}&type=${type}&title=${encodeURIComponent(title)}${tvExtra}`;
  try {
    const r = await fetch(url, {
      headers: { "User-Agent": UA, "Referer": `https://starcima.com/watch/${tmdbId}?type=${type}`, "Accept": "application/json" },
      signal: AbortSignal.timeout(10_000),
    });
    if (!r.ok) { res.json({ subtitles: [] }); return; }
    const data: any = await r.json();
    res.json({ subtitles: data.subtitles || [] });
  } catch {
    res.json({ subtitles: [] });
  }
});

// ── quick-check: fast availability probe (Vyla only, 6s timeout) ─────────────

const availCache = new Map<string, { ok: boolean; ts: number }>();
const AVAIL_TTL = 2 * 60 * 60 * 1000; // 2 hours

router.get("/animation/quick-check", async (req: Request, res: Response) => {
  const tmdbId = String(req.query.tmdbId || "");
  const type   = String(req.query.type   || "movie");
  const season = String(req.query.season || "1");
  const ep     = String(req.query.ep     || "1");
  if (!tmdbId) { res.json({ available: false }); return; }

  const ck = `avail:${tmdbId}:${type}:${season}:${ep}`;
  const cached = availCache.get(ck);
  if (cached && Date.now() - cached.ts < AVAIL_TTL) {
    res.json({ available: cached.ok });
    return;
  }

  let available = false;
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), 6_500);

  // Quick probe via Icefy (movie only) — fast cfProxy check
  try {
    if (type === "movie") {
      const raw = await fetch(
        `${CF_PROXY_BASE}/fetch?url=${encodeURIComponent(`https://streams.icefy.top/movie/${tmdbId}`)}`,
        { signal: controller.signal }
      ).then(r => r.ok ? r.text() : "{}").catch(() => "{}");
      const data = JSON.parse(raw) as { stream?: string };
      if (data.stream) available = true;
    } else {
      // TV: always assume available (many scrapers support it)
      available = true;
    }
  } catch { /* timeout or network error */ }

  clearTimeout(timer);
  availCache.set(ck, { ok: available, ts: Date.now() });
  res.json({ available });
});

// ── aflaam.com helpers ────────────────────────────────────────────────────────
const AFLAAM_BASE = "https://aflaam.com";

async function aflaamSearch(
  q: string,
  kind: "movie" | "series"
): Promise<{ id: string; slug: string }[]> {
  const html = await cfGet(
    `${AFLAAM_BASE}/search?q=${encodeURIComponent(q)}`,
    AFLAAM_BASE + "/"
  );
  const out: { id: string; slug: string }[] = [];
  const re = new RegExp(
    `href="https:\\/\\/aflaam\\.com\\/${kind}\\/(\\d+)\\/([^"]+)"`, "g"
  );
  let m: RegExpExecArray | null;
  const seen = new Set<string>();
  while ((m = re.exec(html)) !== null) {
    if (seen.has(m[1])) continue;
    seen.add(m[1]);
    out.push({ id: m[1], slug: m[2] });
  }
  return out;
}

function parseAflaamMp4s(html: string): { url: string; size: string }[] {
  const out: { url: string; size: string }[] = [];
  const seen = new Set<string>();
  let idx = 0;
  while (true) {
    const s = html.indexOf("<source", idx);
    if (s === -1) break;
    const e = html.indexOf("/>", s);
    if (e === -1) break;
    const tag = html.slice(s, e + 2);
    idx = e + 2;
    const srcM  = /src="([^"]+)"/.exec(tag);
    const sizeM = /size="(\d+)"/.exec(tag);
    if (!srcM || !srcM[1].startsWith("http")) continue;
    const url = srcM[1].trim();
    if (seen.has(url)) continue;
    seen.add(url);
    out.push({ url, size: sizeM ? sizeM[1] : "720" });
  }
  return out;
}

async function aflaamWatchSources(
  watchUrl: string,
  ref: string
): Promise<{ url: string; size: string }[]> {
  // Try CF proxy first (bypasses CF-protection and JS-rendered pages)
  // Fall back to regular cfGet if CF proxy fails
  let html: string;
  try {
    html = await cfProxyGet(watchUrl);
  } catch {
    html = await cfGet(watchUrl, ref);
  }
  return parseAflaamMp4s(html);
}

async function scrapeAflaamMovie(
  title: string,
  enTitle?: string
): Promise<{ url: string; quality: string }[]> {
  for (const t of [title, enTitle].filter(Boolean) as string[]) {
    try {
      const results = await aflaamSearch(t, "movie");
      if (!results.length) continue;
      const best = results
        .map(r => ({ ...r, sc: titleSim(t, r.slug.replace(/-/g, " ")) }))
        .sort((a, b) => b.sc - a.sc)[0];
      if (best.sc < 0.30) continue;

      const movieRef  = `${AFLAAM_BASE}/movie/${best.id}/${best.slug}`;
      const movieHtml = await cfGet(movieRef, AFLAAM_BASE + "/");
      const wre       = /href="(https:\/\/aflaam\.com\/watch\/\d+\/[^"]+)"/g;
      let m: RegExpExecArray | null;
      const watchUrls: string[] = [];
      const ws = new Set<string>();
      while ((m = wre.exec(movieHtml)) !== null) {
        if (ws.has(m[1])) continue; ws.add(m[1]); watchUrls.push(m[1]);
      }
      if (!watchUrls.length) continue;

      const srcs = await aflaamWatchSources(watchUrls[0], movieRef);
      if (srcs.length) return srcs.map(s => ({ url: s.url, quality: s.size }));
    } catch { continue; }
  }
  return [];
}

async function scrapeAflaamSeries(
  title: string,
  epNum: number,
  season: number,
  enTitle?: string
): Promise<{ url: string; quality: string }[]> {
  for (const t of [title, enTitle].filter(Boolean) as string[]) {
    try {
      const results = await aflaamSearch(t, "series");
      if (!results.length) continue;

      const best = results
        .map(r => {
          let sc = titleSim(t, r.slug.replace(/-/g, " "));
          if (season > 1 && new RegExp(`-${season}(?:-|$)`).test(r.slug)) sc += 0.3;
          return { ...r, sc };
        })
        .sort((a, b) => b.sc - a.sc)[0];
      if (best.sc < 0.28) continue;

      const seriesRef  = `${AFLAAM_BASE}/series/${best.id}/${best.slug}`;
      const seriesHtml = await cfGet(seriesRef, AFLAAM_BASE + "/");
      const epRe       = /href="https:\/\/aflaam\.com\/episode\/(\d+)\/([^"]+)"/g;
      let m: RegExpExecArray | null;
      const episodes: { epId: string; epSlug: string; num: number }[] = [];
      const eseen = new Set<string>();
      while ((m = epRe.exec(seriesHtml)) !== null) {
        if (eseen.has(m[1])) continue; eseen.add(m[1]);
        const decoded = decodeURIComponent(m[2]);
        const numM    = /(\d+)\s*$/.exec(decoded);
        episodes.push({
          epId   : m[1],
          epSlug : m[2],
          num    : numM ? parseInt(numM[1]) : episodes.length + 1,
        });
      }
      if (!episodes.length) continue;

      const target = episodes.find(e => e.num === epNum) ?? episodes[epNum - 1];
      if (!target) continue;

      const epRef  = `${AFLAAM_BASE}/episode/${target.epId}/${target.epSlug}`;
      const epHtml = await cfGet(epRef, seriesRef);
      const watchUrls: string[] = [];
      const wre   = /href="(https:\/\/aflaam\.com\/watch\/\d+\/[^"]+)"/g;
      const wseen = new Set<string>();
      while ((m = wre.exec(epHtml)) !== null) {
        if (wseen.has(m[1])) continue; wseen.add(m[1]); watchUrls.push(m[1]);
      }
      if (!watchUrls.length) continue;

      const srcs = await aflaamWatchSources(watchUrls[0], epRef);
      if (srcs.length) return srcs.map(s => ({ url: s.url, quality: s.size }));
    } catch { continue; }
  }
  return [];
}

// ── VidFast.vc scraper (enc-dec.app API) ─────────────────────────────────────
// Flow: GET vidfast.vc page → extract encrypted "en" text → enc-vidfast → POST servers
//       → dec-vidfast → for each server: POST stream/{data} → dec-vidfast → final URL
// CDN: moon.ironwallnet.net (DASH MPD); sent as rawUrl (browser accesses directly).
async function scrapeVidFastVc(
  tmdbId: string,
  mtype: "movie" | "tv",
  season: number,
  episode: number,
): Promise<Array<{ url: string; label: string }>> {
  const ENCDEC   = "https://enc-dec.app/api";
  const VF_REF   = "https://vidfast.vc/";
  const pageUrl  = mtype === "movie"
    ? `https://vidfast.vc/movie/${tmdbId}/`
    : `https://vidfast.vc/tv/${tmdbId}/${season}/${episode}/`;

  const html = await fetch(pageUrl, {
    headers: { "User-Agent": UA, "Referer": VF_REF },
    signal: AbortSignal.timeout(18_000),
  }).then(r => { if (!r.ok) throw new Error(`page ${r.status}`); return r.text(); });

  const m = html.match(/\\"en\\":\\"(.*?)\\"/);
  if (!m) throw new Error("vidfast_vc: no encrypted text in page");
  const text = m[1];

  const encR = await fetch(`${ENCDEC}/enc-vidfast?text=${encodeURIComponent(text)}`, {
    headers: { "User-Agent": UA }, signal: AbortSignal.timeout(10_000),
  }).then(r => r.json()) as { status?: number; result?: { servers: string; stream: string; token: string } };
  if (encR.status !== 200 || !encR.result) throw new Error(`vidfast_vc: enc-vidfast ${encR.status}`);

  const { servers: serversUrl, stream: streamBase, token } = encR.result;
  const hdrs = { "User-Agent": UA, "Referer": VF_REF, "X-CSRF-Token": token, "X-Requested-With": "XMLHttpRequest" };

  const encServers = await fetch(serversUrl, { method: "POST", headers: hdrs, signal: AbortSignal.timeout(10_000) })
    .then(r => { if (!r.ok) throw new Error(`servers ${r.status}`); return r.text(); });

  const decSrv = await fetch(`${ENCDEC}/dec-vidfast`, {
    method: "POST", headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ text: encServers }), signal: AbortSignal.timeout(10_000),
  }).then(r => r.json()) as { status?: number; result?: Array<{ name: string; description?: string; data: string }> };
  if (decSrv.status !== 200 || !Array.isArray(decSrv.result)) throw new Error("vidfast_vc: dec-vidfast servers failed");

  const out: Array<{ url: string; label: string }> = [];
  await Promise.all(decSrv.result.map(async (srv) => {
    if (!srv.data) return;
    try {
      const encStream = await fetch(`${streamBase}/${srv.data}`, {
        method: "POST", headers: hdrs, signal: AbortSignal.timeout(10_000),
      }).then(r => { if (!r.ok) throw new Error(`stream ${r.status}`); return r.text(); });

      const decStr = await fetch(`${ENCDEC}/dec-vidfast`, {
        method: "POST", headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ text: encStream }), signal: AbortSignal.timeout(10_000),
      }).then(r => r.json()) as { status?: number; result?: { url?: string } };

      if (decStr.status === 200 && decStr.result?.url) {
        out.push({ url: decStr.result.url, label: `VidFast · ${srv.name}` });
      }
    } catch { /* server offline or expired */ }
  }));
  return out;
}

// ── Videasy fresh URL redirect ─────────────────────────────────────────────────
// Returns a 302 redirect to a freshly-fetched Videasy CDN URL.
// Called from the browser so the browser follows the redirect with its own
// residential IP (CDN blocks datacenter IPs but allows browser IPs).
const videasyCache = new Map<string, { url: string; ts: number }>();
const VIDEASY_TTL  = 30 * 60 * 1000; // 30 min

router.get("/animation/videasy-fresh", async (req: Request, res: Response) => {
  const server    = String(req.query.server    || "mb-flix");
  const tmdbId    = String(req.query.tmdbId    || "");
  const mediaType = String(req.query.mediaType || "movie");
  const epNum     = String(req.query.ep        || "1");
  const season    = String(req.query.season    || "1");
  const quality   = String(req.query.quality   || "");
  if (!tmdbId) { res.status(400).json({ error: "tmdbId required" }); return; }

  const cacheKey = `${server}|${tmdbId}|${mediaType}|${epNum}|${season}|${quality}`;
  const cached = videasyCache.get(cacheKey);
  if (cached && Date.now() - cached.ts < VIDEASY_TTL) {
    res.redirect(302, cached.url); return;
  }

  try {
    const UA2 = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36";
    const VEA_HDRS = {
      "User-Agent": UA2,
      "Accept": "application/json, */*; q=0.01",
      "Referer": "https://player.videasy.to/",
      "Origin": "https://player.videasy.to",
    };
    const encTitle = encodeURIComponent(encodeURIComponent(""));
    const baseParams = mediaType === "tv"
      ? `title=${encTitle}&mediaType=tv&year=&tmdbId=${tmdbId}&imdbId=&episodeId=${epNum}&seasonId=${season}`
      : `title=${encTitle}&mediaType=movie&year=&tmdbId=${tmdbId}&imdbId=&episodeId=1&seasonId=1`;

    const apiUrl = `https://api.videasy.to/${server}/sources-with-title?${baseParams}`;
    const r = await fetch(apiUrl, { headers: VEA_HDRS, signal: AbortSignal.timeout(12_000) });
    if (!r.ok) { res.status(502).json({ error: `Videasy API ${r.status}` }); return; }
    const blob = await r.text();
    if (!blob || blob.length < 20) { res.status(502).json({ error: "empty response" }); return; }

    const decR = await fetch("https://enc-dec.app/api/dec-videasy", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ text: blob, id: tmdbId }),
      signal: AbortSignal.timeout(10_000),
    });
    if (!decR.ok) { res.status(502).json({ error: "decrypt failed" }); return; }
    const decData = await decR.json() as {
      status: number;
      result?: { sources?: Array<{ url: string; quality?: string }> };
    };
    if (decData.status !== 200 || !decData.result?.sources?.length) {
      res.status(404).json({ error: "no sources" }); return;
    }

    // Pick best quality match or highest available
    const sources = decData.result.sources;
    let picked = sources.find(s => s.quality === quality) || sources[0];
    if (!picked?.url) { res.status(404).json({ error: "no url" }); return; }

    videasyCache.set(cacheKey, { url: picked.url, ts: Date.now() });

    // Add CORS headers so browser hls.js can read m3u8 via redirect
    res.setHeader("Access-Control-Allow-Origin", "*");
    res.setHeader("Access-Control-Allow-Methods", "GET");
    res.redirect(302, picked.url);
  } catch (e) {
    res.status(500).json({ error: String(e) });
  }
});

// ── SSE animation sources stream ──────────────────────────────────────────────

router.get("/animation/sources-stream", async (req: Request, res: Response) => {
  const title   = String(req.query.title  || "");
  const type    = String(req.query.type   || "movie");
  const epNum   = parseInt(String(req.query.ep     || "1"), 10) || 1;
  const season  = parseInt(String(req.query.season || "1"), 10) || 1;
  const tmdbId  = String(req.query.tmdbId || req.query.id || "");

  res.setHeader("Content-Type",      "text/event-stream; charset=utf-8");
  res.setHeader("Cache-Control",     "no-cache");
  res.setHeader("Connection",        "keep-alive");
  res.setHeader("X-Accel-Buffering", "no");
  res.flushHeaders();

  const send = (event: string, data: any) => {
    try { res.write(`event: ${event}\ndata: ${JSON.stringify(data)}\n\n`); } catch { /* closed */ }
  };

  const keepAlive = setInterval(() => { try { res.write(": keepalive\n\n"); } catch { /* closed */ } }, 5_000);
  req.on("close", () => clearInterval(keepAlive));

  const seenUrls = new Set<string>();
  let sourceCount = 0;

  // Anime-Day GitHub Arabic subtitle for this show (if known)
  const adSub = getAnimeDaySubtitleUrl(title, season, epNum);

  // ── كاش capture: AsyncLocalStorage لتجنب race condition في الاستدعاءات المتزامنة ──
  const captureStorage = new AsyncLocalStorage<any[]>();

  // Send a source; directUrl = already-extracted stream URL, proxyUrl = proxied version
  const sendSource = (url: string, label: string, directUrl?: string, proxyUrl?: string, extra2?: Record<string, any>) => {
    if (!url || seenUrls.has(url)) return;
    seenUrls.add(url);
    sourceCount++;

    /* استخراج Referer/Origin من رابط الـ proxyUrl (ref= param) وتضمينهم في الاستجابة.
       ExoPlayer/AVPlayer يُرسلهم مع segments وredirects مباشرةً للـ CDN.
       ملاحظة: نتجاهل الـ ref المشفَّر (encryptParam) — hls-proxy يفكّ التشفير داخلياً
       ونُرسل الـ headers فقط للروابط الخام (encodeURIComponent أو plain URLs) */
    let headers: Record<string, string> | undefined;
    const proxyLookup = proxyUrl || directUrl;
    if (proxyLookup) {
      try {
        const pu = new URL(proxyLookup.startsWith("/") ? `http://x.com${proxyLookup}` : proxyLookup);
        const ref = pu.searchParams.get("ref");
        /* تجاهل ref المشفَّر بـ encryptParam (hex خالص) — إرسال headers فقط للقيم الواضحة */
        if (ref && !isEncrypted(ref)) {
          let origin = "";
          try { origin = new URL(ref).origin; } catch {}
          headers = origin ? { Referer: ref, Origin: origin } : { Referer: ref };
        }
      } catch { /* ignore */ }
    }

    const extra = { ...(adSub ? { subtitleUrl: adSub } : {}), ...(extra2 || {}), ...(headers ? { headers } : {}) };
    // تشفير params في روابط الـ proxy قبل إرسالها للعميل — يمنع كشف CDN URLs في devtools
    const safeProxyUrl  = proxyUrl  ? encryptProxyUrl(proxyUrl)  : proxyUrl;
    const safeDirectUrl = directUrl ? encryptProxyUrl(directUrl) : directUrl;
    send("source", { url, label, directUrl: safeDirectUrl, proxyUrl: safeProxyUrl, ...extra });
    // capture for caching — isolated per async context (no race condition)
    const captureArr = captureStorage.getStore();
    if (captureArr) captureArr.push({ url, label, directUrl: safeDirectUrl, proxyUrl: safeProxyUrl, ...extra });
  };

  // ── تقييد مؤقت (بطلب المستخدم 2026-07-13): تعطيل كل مصادر الأنميشن ما عدا
  //    Dulo (dulo_anim) و StarCima (starcima) — السكرابر لا يمر بأي مصدر آخر إطلاقاً.
  //    لإعادة التفعيل: احذف/عدّل ANIM_SOURCE_ALLOWLIST بالأسفل. ─────────────────
  // moviz_time_anim أُضيف للسماح به 2026-07-13 (مصدر جديد بطلب المستخدم)
  // xpass_anim: محذوف — CDN يحجب VPS/CF IPs (2026-07-15)
  // videasy3: أُضيف 2026-07-15 (نُقل من قسم الأنمي بطلب المستخدم؛ backend أُصلح أيضاً)
  // vidfast_vc: أُضيف 2026-07-15 (enc-dec.app flow — Beta server يعمل لبعض الأفلام)
  // vidlink_encdec: مُعاد تفعيله — يرجع 200 + MP4 متعددة الجودة من VPS (اختُبر 2026-07-15)
  const ANIM_SOURCE_ALLOWLIST: Set<string> | null = new Set(["dulo_anim", "starcima", "moviz_time_anim", "egydead", "akwam", "vaplayer_anim", "videasy3", "vidfast_vc", "vidlink_encdec"]);

  // ── scrapeAnimCached: يكشط مع كاش L1+L2 (Supabase) ──────────────────────
  async function scrapeAnimCached(
    site: string,
    scrape: () => Promise<void>,
  ) {
    if (ANIM_SOURCE_ALLOWLIST && !ANIM_SOURCE_ALLOWLIST.has(site)) return;
    const cKey = makeAnimCacheKey(site, tmdbId || title.slice(0, 20), type, season, epNum);
    const hit  = await getFromSourceCache(cKey);

    if (hit) {
      // ✅ تقديم من الكاش فوراً (< 5ms)
      for (const s of hit.sources) {
        sendSource(s.url, s.label, s.directUrl, s.proxyUrl, s.subtitleUrl ? { subtitleUrl: s.subtitleUrl } : undefined);
      }
      // تجديد خلفي إذا انتهى الكاش (stale) أو اقترب انتهاؤه
      if (hit.stale || shouldRefreshCache(hit.expiresAt)) {
        setImmediate(async () => {
          try {
            const bgArr: any[] = [];
            await captureStorage.run(bgArr, () => scrape());
            if (bgArr.length) await setSourceCache(cKey, site, bgArr);
          } catch { /* silent */ }
        });
      }
      return;
    }

    // ❌ لا يوجد كاش → اكشط مع التسجيل في context معزول
    const captured: any[] = [];
    await captureStorage.run(captured, () => scrape());
    if (captured.length) await setSourceCache(cKey, site, captured);
  }

  // Try embed URL → extract stream → probe → sendSource
  // Returns true if a direct stream was found and sent, false otherwise
  const sendExtracted = async (embedUrl: string, label: string): Promise<boolean> => {
    if (!embedUrl || seenUrls.has(embedUrl)) return true; // already seen → don't send embed either

    // 1. Try callExtractApi (extractVideoDeep)
    const extracted = await callExtractApi(embedUrl);
    if (extracted?.directUrl) {
      const d = extracted.directUrl;
      // Probe only for definitive failures (404/5xx) — 403/405/timeout → still send
      if (d.startsWith("http")) {
        try {
          const probe = await fetch(d, {
            method : "HEAD",
            headers: { "User-Agent": UA, "Referer": embedUrl },
            signal : AbortSignal.timeout(5_000),
            redirect: "follow",
          });
          // Only skip truly dead URLs (404, 4xx excluding 403/405, 5xx excluding 503)
          const definitivelyDead = !probe.ok
            && probe.status !== 403
            && probe.status !== 405
            && probe.status !== 503
            && probe.status !== 0;
          if (definitivelyDead) return false;
        } catch {
          // HEAD timeout/network error — CDN may still work from client browser
          // Fall through and send the source anyway
        }
      }
      const isHls = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
      const needProxy = !isHls && MP4_PROXY_HOSTS.some(h => d.includes(h));
      const proxy = isHls && !d.startsWith("/") ? wrapHls(d, embedUrl) : needProxy ? wrapMp4(d, embedUrl) : d;
      seenUrls.add(embedUrl);
      sendSource(embedUrl, label, d, proxy);
      return true;
    }

    // 2. Try fetching embed page for direct streams
    const streams = await scrapeEmbedForStreams(embedUrl);
    let sentAny = false;
    for (const s of streams.slice(0, 2)) {
      // Probe each found stream — skip only definitive failures
      if (s.url.startsWith("http")) {
        try {
          const probe = await fetch(s.url, {
            method : "HEAD",
            headers: { "User-Agent": UA, "Referer": embedUrl },
            signal : AbortSignal.timeout(4_000),
            redirect: "follow",
          });
          const definitivelyDead = !probe.ok
            && probe.status !== 403
            && probe.status !== 405
            && probe.status !== 503;
          if (definitivelyDead) continue;
        } catch { /* timeout/network → still try */ }
      }
      seenUrls.add(embedUrl);
      sendSource(s.url, label, s.url, s.proxyUrl);
      sentAny = true;
    }
    return sentAny;
  };

  try {
    send("status", { msg: `جاري البحث عن "${title}"…` });



    // Fetch IMDB ID + English title + release year from TMDB in parallel (needed for multiple scrapers)
    let imdbId = "";
    let enTitlePrefetched = "";
    let releaseYear = "";
    await Promise.allSettled([
      (async () => {
        if (!tmdbId) return;
        try {
          const extUrl = `https://api.themoviedb.org/3/${type === "tv" ? "tv" : "movie"}/${tmdbId}/external_ids?api_key=${TMDB_KEY}`;
          const extHtml = await cfGet(extUrl, "");
          const extJson = JSON.parse(extHtml);
          imdbId = extJson.imdb_id || "";
        } catch { /* silent */ }
      })(),
      (async () => {
        if (!tmdbId) return;
        try {
          const r = await fetch(
            `${TMDB_BASE}/${type === "tv" ? "tv" : "movie"}/${tmdbId}?api_key=${TMDB_KEY}&language=en`,
            { signal: AbortSignal.timeout(6_000) }
          );
          if (r.ok) {
            const d: any = await r.json();
            enTitlePrefetched = d.title || d.name || "";
            const dateStr: string = d.release_date || d.first_air_date || "";
            if (dateStr) releaseYear = dateStr.slice(0, 4);
          }
        } catch { /* silent */ }
      })(),
    ]);

    // ── Hard 30s deadline — يُجبر DONE حتى لو علّق أحد الـ scrapers ──────────
    let streamDone = false;
    const forceClose = setTimeout(() => {
      if (!streamDone && !res.writableEnded) {
        streamDone = true;
        send("done", {}); clearInterval(keepAlive); res.end();
      }
    }, 30_000);

    // ── Run all scrapers in parallel ──────────────────────────────────────────
    await Promise.allSettled([

      // ── 11. vidsrc.to → VPS-only (Replit IP مُعاق، VPS يعمل) ───────────────
      // يُرجع embed iframe لـ vsembed.ru الذي يُشغّل cloudorchestranova.com
      scrapeAnimCached("vidsrc_to", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "VidSrc.to…" });
          const embedUrl = type === "tv"
            ? `https://vidsrc.to/embed/tv/${tmdbId}/${season}-${epNum}`
            : `https://vidsrc.to/embed/movie/${tmdbId}`;
          const r = await fetch(embedUrl, {
            headers: { "User-Agent": UA, "Referer": "https://vidsrc.to/" },
            signal: AbortSignal.timeout(12_000),
          });
          if (!r.ok) return;
          const html = await r.text();
          if (!html || html.length < 200) return;
          // Extract vsembed.ru iframe — the actual video player
          // Accept single/double quotes, protocol-relative URLs, and data-src
          const ifrMatch = html.match(/<iframe[^>]+(?:src|data-src)\s*=\s*["']((?:https?:)?\/\/vsembed\.ru\/[^"']+)["']/i);
          if (!ifrMatch?.[1]) return;
          // Normalise protocol-relative URLs to https
          const vsEmbedUrl = ifrMatch[1].startsWith("//") ? `https:${ifrMatch[1]}` : ifrMatch[1];
          await sendExtracted(vsEmbedUrl, "VidSrc.to");
        } catch { /* silent */ }
      }),

      // ── 12. vidsrc.pro → DISABLED (redirects to embed.su, already handled below) ─
      Promise.resolve(),

      // ── 9. vidsrc.icu → DISABLED (timeout from datacenter IPs) ──────────────
      Promise.resolve(),

      // ── 10. autoembed.cc → DISABLED (DNS failure from Replit datacenter) ────
      Promise.resolve(),

      // ── 13. ToonStream — DISABLED ──
      Promise.resolve(),

      // ── 19. multiembed.mov → DISABLED (403 from Replit datacenter) ──────────
      Promise.resolve(),

      // ── 20. vidsrc.vip → DISABLED (timeout from datacenter IPs) ─────────────
      Promise.resolve(),

      // ── 21. smashy → DISABLED (timeout from datacenter IPs) ─────────────────
      Promise.resolve(),

      // ── 22. VidLink → DISABLED (returns 0 bytes from Replit datacenter IPs) ─
      Promise.resolve(),

      // ── 23. vidbinge → DISABLED (timeout from datacenter IPs) ───────────────
      Promise.resolve(),

      // ── Streamrip — DISABLED 2026-07-11: Railway API returns 404 (server shutdown) ──
      Promise.resolve(),

      // ── 16. 2embed.skin (TMDB-based, tries streamwish/filemoon extraction) ─────
      // معطّل مؤقتاً (بطلب المستخدم 2026-07-13) — يبقى فقط Dulo/StarCima عاملين
      Promise.resolve() || (async () => {
        try {
          const url = type === "tv"
            ? `https://www.2embed.skin/embedtv/${tmdbId}&s=${season}&e=${epNum}`
            : `https://www.2embed.skin/embed/${tmdbId}`;
          await sendExtracted(url, "2Embed");
        } catch { /* silent */ }
      })(),

      // ── 17. vidsrc.xyz → DISABLED (duplicate + DNS failure) ─────────────────
      Promise.resolve(),

      // ── 18. embed.su → DISABLED (DNS failure from Replit datacenter) ─────────
      Promise.resolve(),

      // ── 14. moviesapi.club → DISABLED (domain dead — redirects to alliance4creativity.com) ─
      Promise.resolve(),

      // ── 15. StarCima (vidzee HLS direct + arabic-sources embeds, TMDB ID native) ─
      scrapeAnimCached("starcima", async () => {
        if (!tmdbId) return;
        const SC_BASE    = "https://starcima.com";
        const SC_VIDZEE  = `${SC_BASE}/api/vidzee`;
        const SC_ARABIC  = `${SC_BASE}/api/arabic-sources`;
        const SC_REF_HLS = "https://player.vidzee.wtf/";
        const tvExtra    = type === "tv" ? `&season=${season}&episode=${epNum}` : "";
        const watchRef   = `${SC_BASE}/watch/${tmdbId}?type=${type}`;

        const scHeaders = {
          "User-Agent": UA,
          "Referer": watchRef,
          "Origin": SC_BASE,
          "Accept": "application/json",
          "Accept-Language": "ar,en;q=0.9",
        };

        try {
          send("status", { msg: "StarCima: جاري الاستخراج…" });

          await Promise.allSettled([

            // ── vidzee: 3 direct HLS servers ────────────────────────────────
            (async () => {
              try {
                const r = await fetch(
                  `${SC_VIDZEE}?tmdbId=${tmdbId}&type=${type}&title=${encodeURIComponent(title)}${tvExtra}`,
                  { headers: scHeaders, signal: AbortSignal.timeout(18_000) }
                );
                if (!r.ok) {
                  console.error(`[StarCima/vidzee] HTTP ${r.status} for tmdbId=${tmdbId}`);
                  return;
                }
                const data: any = await r.json();
                const servers: any[] = (data.servers || []);
                if (!servers.length) console.warn(`[StarCima/vidzee] No servers returned for tmdbId=${tmdbId}`);

                // Sort: isMain first (الثريا), then others, then Najm (lower CDN)
                const srvSorted = [...servers].sort((a: any, b: any) => {
                  const rank = (s: any) =>
                    s.isMain ? 0
                    : (s.name || "").startsWith("Najm") ? 2
                    : 1;
                  return rank(a) - rank(b);
                });

                // Build list of (proxied URL, raw URL, label) for all servers
                // Filter out Hindi/Bollywood-dubbed servers (name contains hindi/bolly/hin/urdu)
                const HINDI_NAME_RE = /\b(hindi|bolly|bollywood|hin|urdu)\b/i;
                const prepared = srvSorted
                  .filter((srv: any) => !!srv.url && !HINDI_NAME_RE.test(srv.name || ""))
                  .map((srv: any) => {
                    let rawUrl  = String(srv.url);
                    let referer = SC_REF_HLS;
                    if (rawUrl.includes(`${SC_BASE}/cdn/?`)) {
                      try {
                        const pu = new URL(rawUrl);
                        rawUrl   = pu.searchParams.get("url")     || rawUrl;
                        referer  = pu.searchParams.get("referer") || SC_REF_HLS;
                      } catch { /* keep original */ }
                    }
                    const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawUrl)}&ref=${encodeURIComponent(referer)}`;
                    const label   = `StarCima · ${srv.name || "HD"}`;
                    return { proxied, rawUrl, label, isAtlas: false };
                  });

                // Probe all CDN URLs in parallel to check server-side accessibility.
                // If CDN returns 200/206 from server: send via hls-proxy (CORS + segment rewriting).
                // If CDN returns 403 from server (IP-blocked): send raw URL for browser direct access
                // (browser fetches m3u8 + segments from user's home IP, bypassing our datacenter IP).
                const PROBE_PORT = process.env.PORT || 5000;
                const probeResults = await Promise.allSettled(
                  prepared.map(async ({ proxied, rawUrl: pRaw, label }) => {
                    try {
                      const pr = await fetch(`http://localhost:${PROBE_PORT}${proxied}`, {
                        signal: AbortSignal.timeout(6_000),
                      });
                      // 200/206 = CDN accessible from server → use hls-proxy
                      // 403/502/other = CDN blocks server IPs → send raw for browser
                      const serverAccessible = pr.ok || pr.status === 206;
                      return { proxied, rawUrl: pRaw, label, serverAccessible };
                    } catch {
                      // Network error = assume blocked from server → send raw for browser
                      return { proxied, rawUrl: pRaw, label, serverAccessible: false };
                    }
                  })
                );

                const probed = probeResults
                  .filter(r => r.status === "fulfilled")
                  .map(r => (r as PromiseFulfilledResult<{ proxied: string; rawUrl: string; label: string; serverAccessible: boolean }>).value);

                // Helper: detect time-limited URLs with expired tokens
                const isTokenExpired = (url: string): boolean => {
                  try {
                    const u = new URL(url);
                    const expiry = u.searchParams.get("e") || u.searchParams.get("expires") || u.searchParams.get("exp");
                    if (expiry) {
                      const expiryTs = parseInt(expiry, 10);
                      if (!isNaN(expiryTs) && expiryTs < Math.floor(Date.now() / 1000)) return true;
                    }
                  } catch { /* ignore */ }
                  return false;
                };

                for (const { proxied, rawUrl: sRaw, label, serverAccessible } of probed) {
                  if (serverAccessible) {
                    // CDN accessible from server → use hls-proxy (handles CORS + seg rewriting)
                    sendSource(proxied, label, sRaw, proxied);
                  } else if (!isTokenExpired(sRaw)) {
                    // CDN blocks server IPs → send raw URL for direct mobile access
                    // (skip if URL has already-expired time-limited token)
                    sendSource(sRaw, label, sRaw, sRaw);
                  }
                  // else: expired token URL — skip entirely
                }
              } catch (e) { console.error("[StarCima/vidzee] error:", e); }
            })(),

            // ── arabic-sources: re-enabled — أنيميشن مترجم عربي (embeds تُحلّ عبر HiddenResolverWebView موبايل)
            (async () => {
              try {
                const r = await fetch(
                  `${SC_ARABIC}?tmdbId=${tmdbId}&type=${type}&title=${encodeURIComponent(title)}${tvExtra}`,
                  { headers: scHeaders, signal: AbortSignal.timeout(12_000) }
                );
                if (!r.ok) return;
                const data: any = await r.json();
                const servers: any[] = data.servers || data.sources || data.embeds || data.links || [];
                for (const s of servers.slice(0, 5)) {
                  const embedUrl = s.url || s.link || s.embed || s.src;
                  if (!embedUrl || typeof embedUrl !== "string") continue;
                  const serverName = s.name || s.server || s.label || "عربي";
                  const label = `StarCima عربي · ${serverName}`;
                  send("source", { url: embedUrl, directUrl: embedUrl, label, site: "starcima_ar", isEmbed: true });
                }
              } catch (e) { console.error("[StarCima/arabic-sources]", e); }
            })(),
          ]);

        } catch { /* silent */ }
      }),

      // ── AnimeWitcher Dubbed (Firebase Firestore — مدبلج عربي/إنجليزي) ────────────
      // يُعيد أنمي مدبلج لا علاقة له بالأنيميشن الغربي → مُعطَّل
      Promise.resolve() || (async () => {
        if (!title) return;
        try {
          const AW_FS = "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";

          // جلب كتالوج المدبلج (dubbed=true) — 116 عنوان فقط
          const awDubRes = await fetch(`${AW_FS}:runQuery`, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({
              structuredQuery: {
                from : [{ collectionId: "anime_list" }],
                where: { fieldFilter: { field: { fieldPath: "dubbed" }, op: "EQUAL", value: { booleanValue: true } } },
                limit: 200,
              }
            }),
            signal: AbortSignal.timeout(10_000),
          });
          if (!awDubRes.ok) throw new Error("dubbed catalog fetch failed");
          const awDubData = await awDubRes.json() as any[];

          // AW Dubbed هو كتالوج أنمي مدبلج — للأفلام الغربية (Moana, Frozen...) لا ينطبق
          // عتبة عالية جداً لتجنب التطابقات الخاطئة بين عناوين الأنمي وعناوين الأنيميشن
          const awDubThreshold = 0.82;

          // بحث بالتشابه
          const candidates = (awDubData || [])
            .filter((d: any) => d?.document?.name)
            .map((d: any) => {
              const f    = d.document.fields || {};
              const name = d.document.name.split("/").pop() || "";
              const titleEn  = f.title_en?.stringValue || f.title?.stringValue || f.name?.stringValue || name;
              const titleAr  = f.title_ar?.stringValue || f.title_arabic?.stringValue || "";
              const best = Math.max(titleSim(title, titleEn), titleSim(title, titleAr), titleSim(title, name.replace(/-/g, " ")));
              return { name, score: best };
            })
            .filter(c => c.score >= awDubThreshold)
            .sort((a, b) => b.score - a.score);

          if (!candidates.length) {
            // fallback: إضافة TMDB English title لزيادة الاحتمالية
            let tmdbEnTitle = "";
            if (tmdbId) {
              try {
                const td = await fetch(`https://api.themoviedb.org/3/${type === "tv" ? "tv" : "movie"}/${tmdbId}?api_key=${process.env.TMDB_API_KEY || "2f7e0b0b4f5a5ae0b96c94f1e636a60f"}&language=en`, { signal: AbortSignal.timeout(4_000) });
                if (td.ok) { const j: any = await td.json(); tmdbEnTitle = j.title || j.name || ""; }
              } catch { /* skip */ }
            }
            if (!tmdbEnTitle) return;
            const byTmdb = (awDubData || [])
              .filter((d: any) => d?.document?.name)
              .map((d: any) => {
                const f    = d.document.fields || {};
                const name = d.document.name.split("/").pop() || "";
                const titleEn = f.title_en?.stringValue || f.title?.stringValue || name;
                return { name, score: titleSim(tmdbEnTitle, titleEn) };
              })
              .filter(c => c.score >= awDubThreshold)
              .sort((a, b) => b.score - a.score);
            if (!byTmdb.length) return;
            candidates.push(...byTmdb);
          }

          const animeName = candidates[0].name;

          // جلب servers للحلقة
          const epPad  = String(type === "movie" ? 1 : epNum).padStart(3, "0");
          const srvRes = await fetch(
            `${AW_FS}/anime_list/${encodeURIComponent(animeName)}/episodes/${epPad}/servers?pageSize=20`,
            { signal: AbortSignal.timeout(10_000) }
          );
          if (!srvRes.ok) return;
          const srvData: any = await srvRes.json();
          if (!srvData.documents?.length) return;

          send("status", { msg: `AnimeWitcher Dubbed: "${animeName}" — جاري الاستخراج…` });

          await Promise.allSettled((srvData.documents as any[]).map(async (doc) => {
            const f       = doc.fields || {};
            const srvName = f.name?.stringValue || "";
            const quality = f.quality?.stringValue || "720p";
            const link    = f.link?.stringValue || "";
            const visible = f.visible?.booleanValue !== false;
            if (!link || !visible || !srvName) return;

            const qLabel = quality === "1080p" ? "FHD 1080p" : quality === "720p" ? "HD 720p" : quality;
            const label  = `AW·Dubbed · ${qLabel} · ${srvName}`;

            if (srvName === "PD") {
              const pdId = link.split("/").pop();
              if (!pdId || pdId.length < 4) return;
              const apiUrl  = `https://pixeldrain.com/api/file/${pdId}`;
              const proxied = wrapMp4(apiUrl, "https://pixeldrain.com/");
              sendSource(proxied, label, proxied, proxied);
            } else if (srvName === "VT") {
              try {
                const extracted = await callExtractApi(link);
                if (extracted?.directUrl) {
                  const d       = extracted.directUrl;
                  const isHls   = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                  const proxied = isHls ? wrapHls(d, link) : wrapMp4(d, link);
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }
            } else if (srvName === "MF") {
              try {
                const mfHtml = await fetch(link, {
                  headers: { "User-Agent": UA, "Referer": "https://www.mediafire.com/" },
                  signal: AbortSignal.timeout(10_000),
                }).then(r => r.ok ? r.text() : "").catch(() => "");
                const mfDirect =
                  (/(https:\/\/download\d*\.mediafire\.com\/[^"' \n<>]+)/.exec(mfHtml))?.[1] ||
                  (/id="downloadButton"[^>]*href="([^"]+)"/.exec(mfHtml))?.[1] || null;
                if (mfDirect) {
                  const proxied = wrapMp4(mfDirect.replace(/&amp;/g, "&"), "https://www.mediafire.com/");
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }
            }
          }));
        } catch { /* silent */ }
      })(),

      // ── AnimeWitcher (AniList-based) → DISABLED ───────────────────────────────
      // يبحث في AniList عن عنوان TMDB فيُعيد أنمي ياباني لا علاقة له بالأنيميشن
      // يسبب ظهور حلقات أنمي خاطئة داخل قسم الأنيميشن الغربي → مُعطَّل
      Promise.resolve() || (async () => {
        if (!title) return;
        try {
          const AW_FS = "https://firestore.googleapis.com/v1/projects/animewitcher-1c66d/databases/(default)/documents";

          // 1. جلب العنوان الإنجليزي من TMDB (لأن title قد يكون عربياً)
          let tmdbEnTitle = "";
          let tmdbOrigTitle = "";
          if (tmdbId) {
            try {
              const tmdbEn = await fetch(
                `${TMDB_BASE}/${type === "tv" ? "tv" : "movie"}/${tmdbId}?api_key=${TMDB_KEY}&language=en`,
                { signal: AbortSignal.timeout(6_000) }
              );
              if (tmdbEn.ok) {
                const td: any = await tmdbEn.json();
                tmdbEnTitle   = td.title || td.name || "";
                tmdbOrigTitle = td.original_title || td.original_name || "";
              }
            } catch { /* skip */ }
          }

          // 2. بحث AniList بالعنوان للحصول على aniList_id
          //    نُجرّب: العنوان الإنجليزي من TMDB ← العنوان الأصلي ← title المُمرَّر
          // بحث AniList بالتوازي — بدلاً من تسلسلي (كل بحث 8s × 4 = 32s)
          const awTitles = [tmdbEnTitle, tmdbOrigTitle, title, req.query.english ? String(req.query.english) : ""]
            .filter(Boolean)
            .filter((v, i, a) => a.indexOf(v) === i);
          let anilistId = "";
          try {
            anilistId = await Promise.any(
              awTitles.map(async t => {
                const gql = await fetch("https://graphql.anilist.co", {
                  method : "POST",
                  headers: { "Content-Type": "application/json", "Accept": "application/json" },
                  body   : JSON.stringify({
                    query    : "query($s:String){Media(search:$s,type:ANIME,isAdult:false){id title{romaji english}}}",
                    variables: { s: t },
                  }),
                  signal: AbortSignal.timeout(8_000),
                });
                if (!gql.ok) throw new Error("not ok");
                const gd: any = await gql.json();
                if (!gd?.data?.Media?.id) throw new Error("no id");
                return String(gd.data.Media.id);
              })
            );
          } catch { /* لم يُوجد في AniList */ }
          if (!anilistId) return;

          // 2. ابحث عن الأنمي في Firestore بالـ aniList_id — الوصول العام بدون auth
          const qRes = await fetch(`${AW_FS}:runQuery`, {
            method : "POST",
            headers: { "Content-Type": "application/json" },
            body   : JSON.stringify({
              structuredQuery: {
                from : [{ collectionId: "anime_list" }],
                where: { fieldFilter: { field: { fieldPath: "aniList_id" }, op: "EQUAL", value: { stringValue: anilistId } } },
                limit: 1,
              }
            }),
            signal: AbortSignal.timeout(10_000),
          });
          if (!qRes.ok) return;
          const qData = await qRes.json() as any[];
          const docPath  = qData?.[0]?.document?.name;
          if (!docPath) return;
          const animeName = docPath.split("/").pop();
          if (!animeName) return;

          // 4. جلب الـ servers للحلقة (مُبطّنة 3 أرقام)
          const epPad  = String(type === "movie" ? 1 : epNum).padStart(3, "0");
          const srvRes = await fetch(
            `${AW_FS}/anime_list/${encodeURIComponent(animeName)}/episodes/${epPad}/servers?pageSize=20`,
            { signal: AbortSignal.timeout(10_000) }
          );
          if (!srvRes.ok) return;
          const srvData: any = await srvRes.json();
          if (!srvData.documents?.length) return;

          send("status", { msg: `AnimeWitcher: وُجد "${animeName}" — جاري الاستخراج…` });

          // 5. معالجة كل سيرفر وإرسال المصادر
          await Promise.allSettled((srvData.documents as any[]).map(async (doc) => {
            const f       = doc.fields || {};
            const srvName = f.name?.stringValue || "";
            const quality = f.quality?.stringValue || "720p";
            const link    = f.link?.stringValue || "";
            const visible = f.visible?.booleanValue !== false;
            if (!link || !visible || !srvName) return;

            const qLabel = quality === "1080p" ? "FHD 1080p" : quality === "720p" ? "HD 720p" : quality;
            const label  = `AnimeWitcher · ${qLabel} · ${srvName}`;

            if (srvName === "PD") {
              // Pixeldrain → رابط مباشر MP4 عبر video-proxy
              const pdId = link.split("/").pop();
              if (!pdId || pdId.length < 4) return;
              const apiUrl  = `https://pixeldrain.com/api/file/${pdId}`;
              const proxied = wrapMp4(apiUrl, "https://pixeldrain.com/");
              sendSource(proxied, label, proxied, proxied);

            } else if (srvName === "VT") {
              // VidTube → استخراج عبر callExtractApi (extractVideoDeep)
              try {
                const extracted = await callExtractApi(link);
                if (extracted?.directUrl) {
                  const d       = extracted.directUrl;
                  const isHls   = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                  const proxied = isHls ? wrapHls(d, link) : wrapMp4(d, link);
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }

            } else if (srvName === "MF") {
              // MediaFire → استخراج رابط التحميل المباشر
              try {
                const mfHtml = await fetch(link, {
                  headers: { "User-Agent": UA, "Referer": "https://www.mediafire.com/" },
                  signal: AbortSignal.timeout(10_000),
                }).then(r => r.ok ? r.text() : "").catch(() => "");
                const mfDirect =
                  (/(https:\/\/download\d*\.mediafire\.com\/[^"' \n<>]+)/.exec(mfHtml))?.[1] ||
                  (/id="downloadButton"[^>]*href="([^"]+)"/.exec(mfHtml))?.[1] ||
                  (/aria-label="[Dd]ownload [Ff]ile"[^>]*href="([^"]+)"/.exec(mfHtml))?.[1] ||
                  null;
                if (mfDirect) {
                  const proxied = wrapMp4(mfDirect.replace(/&amp;/g, "&"), "https://www.mediafire.com/");
                  sendSource(proxied, label, proxied, proxied);
                }
              } catch { /* skip */ }

            } else if (srvName === "KF") {
              // KrakenFiles → Cloudflare 502 من Replit → يُتخطى
            }
          }));

        } catch { /* silent */ }
      })(),

      // ── 25. vidlink.pro — مُعطَّل (iframe مُزال من الواجهة) ──────────────────
      Promise.resolve(),

      // ── 26. player.videasy.to — مُعطَّل (iframe مُزال من الواجهة) ────────────
      Promise.resolve(),

      // ── 27. anyembed.xyz — مُعطَّل (iframe مُزال من الواجهة) ─────────────────
      Promise.resolve(),

      // ── 28. VidFast Pro (TMDB-native, AES-256-GCM, multi-server HLS) ─────────
      scrapeAnimCached("vidfast", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "VidFast: جاري الاستخراج…" });
          await scrapeVidFastAnim(tmdbId, type as "movie" | "tv", season, epNum, sendSource);
        } catch { /* silent */ }
      }),

      // ── VidCore (vidcore.net) — نفس نمط VidFast عبر enc-dec.app ─────────────
      scrapeAnimCached("vidcore", async () => {
        if (!tmdbId) return;
        const ENCDEC    = "https://enc-dec.app/api";
        const VC_ORIGIN = "https://vidcore.net";
        send("status", { msg: "VidCore: جاري الاستخراج…" });
        try {
          // Step 1: جلب الصفحة عبر Orkestr (CF يحجب Replit IPs مباشرة)
          const pagePath = type === "tv" ? `/tv/${tmdbId}/${season}/${epNum}/` : `/movie/${tmdbId}/`;
          const pageHtml = await cfOrOrkestGet(`${VC_ORIGIN}${pagePath}`);
          if (!pageHtml || pageHtml.length < 500) return;

          // استخراج النص المشفر من صفحة الـ player (React/Next.js inlined JSON)
          const textMatch =
            pageHtml.match(/[?&](?:key|token|data|hash)=([A-Za-z0-9_-]{16,})/)?.[1] ||
            pageHtml.match(/"(?:key|token|data|encKey)"\s*:\s*"([A-Za-z0-9_-]{16,})"/) ?.[1] ||
            pageHtml.match(/src="[^"]*\/e\/([A-Za-z0-9_-]{16,})"/) ?.[1];
          if (!textMatch) return;

          // Step 2: enc-vidcore → {servers, stream, token}
          const encRes = await fetch(`${ENCDEC}/enc-vidcore?text=${encodeURIComponent(textMatch)}`, {
            signal: AbortSignal.timeout(10_000),
          });
          if (!encRes.ok) return;
          const encData: any = await encRes.json();
          if (encData.status !== 200) return;
          const { servers: srvUrl, stream: streamBase, token: csrf } = encData.result;
          if (!srvUrl || !streamBase) return;

          const VC_HEADERS = {
            "User-Agent": UA, "Referer": VC_ORIGIN + "/",
            "X-Requested-With": "XMLHttpRequest", "X-CSRF-Token": csrf || "",
          };

          // Step 3: POST servers URL → decrypt list
          const srvEncRes = await fetch(srvUrl, { method: "POST", headers: VC_HEADERS, signal: AbortSignal.timeout(10_000) });
          if (!srvEncRes.ok) return;
          const srvEncText = await srvEncRes.text();
          const decSrvRes = await fetch(`${ENCDEC}/dec-vidcore`, {
            method: "POST", headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ text: srvEncText }), signal: AbortSignal.timeout(10_000),
          });
          const decSrvData: any = await decSrvRes.json();
          if (decSrvData.status !== 200 || !Array.isArray(decSrvData.result)) return;
          const serversList: Array<{ name: string; data: string }> = decSrvData.result;

          // Step 4: جلب كل سيرفر → فك التشفير → sendSource
          const seen = new Set<string>();
          await Promise.allSettled(
            serversList.slice(0, 8).map(async (srv) => {
              try {
                const stRes = await fetch(`${streamBase}/${srv.data}`, {
                  method: "POST", headers: VC_HEADERS, signal: AbortSignal.timeout(10_000),
                });
                const stText = await stRes.text();
                const decStRes = await fetch(`${ENCDEC}/dec-vidcore`, {
                  method: "POST", headers: { "Content-Type": "application/json" },
                  body: JSON.stringify({ text: stText }), signal: AbortSignal.timeout(10_000),
                });
                const decSt: any = await decStRes.json();
                if (decSt.status !== 200) return;
                const m3u8: string = decSt.result?.url || decSt.result || "";
                if (typeof m3u8 !== "string" || !m3u8.includes(".m3u8") || seen.has(m3u8)) return;
                seen.add(m3u8);
                sendSource(wrapHls(m3u8, VC_ORIGIN + "/"), `VidCore · ${srv.name}`, m3u8, wrapHls(m3u8, VC_ORIGIN + "/"));
              } catch { /* silent */ }
            })
          );
        } catch { /* silent */ }
      }),

      // ── VidSync — مُعطَّل: enc-vidsync يحتاج Turnstile في المتصفح (InitTabs2)
      Promise.resolve(),

      // rivestream: محذوف (iframe fallback غير مرغوب)

      // ── 16. Icefy (streams.icefy.top) — عبر Orkestr EU relay ────────────────
      // CF تحجب IPs ريبليت → Orkestr (EU) يتجاوزها للـ API والـ CDN معاً
      scrapeAnimCached("icefy", async () => {
        if (!tmdbId) return;
        if (type !== "movie") return; // TV endpoint format غير مكتشف
        try {
          send("status", { msg: "Icefy: جاري الاستخراج…" });
          const raw = await orkestDirectGet(`https://streams.icefy.top/movie/${tmdbId}`, 12_000);
          const data = JSON.parse(raw) as { stream?: string };
          if (!data.stream) return;
          const proxied = wrapHls(data.stream, "https://icefy.top/");
          sendSource(proxied, "Icefy · FHD", data.stream, proxied);
        } catch { /* silent */ }
      }),

      // ── Nebula (nebula.aether.cx) — أفلام + مسلسلات (Icefy fallback CDN) ────────
      // API: GET /movie/{tmdbId}?ser=tik  →  {"stream_url":"https://...m3u8"}
      // API: GET /tv/{tmdbId}/{s}/{e}?ser=tik  →  {"stream_url":"..."}
      scrapeAnimCached("nebula", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "Nebula: جاري الاستخراج…" });
          const apiUrl = type === "movie"
            ? `https://nebula.aether.cx/movie/${tmdbId}?ser=tik`
            : `https://nebula.aether.cx/tv/${tmdbId}/${season}/${epNum}?ser=tik`;
          const raw = await orkestDirectGet(apiUrl, 12_000);
          const data = JSON.parse(raw) as { stream_url?: string };
          if (!data.stream_url) return;
          const proxied = wrapHls(data.stream_url, "https://nebula.aether.cx/");
          sendSource(proxied, "Nebula · HD", data.stream_url, proxied);
        } catch { /* silent */ }
      }),

      // ── anime-day.com — أنمي داي (كرتون غربي/أنمي صيني) ────────────────────
      scrapeAnimCached("animeday_anim", async () => {
        if (!title) return;
        try {
          send("status", { msg: "AniméDay: جاري البحث…" });
          const ADBASE  = "https://www.anime-day.com";
          const AD_UA   = "com.anime.day/4.0 (Android)";

          // ── resolve relative URL → full URL using server name ──────────────
          const adResolve = (srv: any): string | null => {
            const u: string = srv.url || "";
            const p: string = ((srv.name || "").toLowerCase().split(" ").pop() || "");
            if (!u) return null;
            if (u.startsWith("https://")) return u;
            if (u.startsWith("/v/"))          return `https://vidhidefast.com${u}`; // vidhidepro → vidhidefast
            if (/^\/e\//.test(u)) {
              if (p === "dood")     return `https://dood.to${u}`;
              if (p === "mixdrop")  return `https://mixdrop.ag${u}`;
              if (p === "kerapoxy") return `https://kerapoxy.cc${u}`;
              if (p === "filemoon") return `https://filemoon.sx${u}`;
              if (p === "voe_sx" || p === "voe") return `https://voe.sx${u}`;
              return `https://embedwish.com${u}`;
            }
            if (/^\/embed-[^/]+\.html$/.test(u)) {
              if (p === "upstream")  return `https://upstream.to${u}`;
              if (p === "uqload")    return `https://uqload.is${u}`;  // uqload.co → uqload.is
              if (p === "mp4upload") return `https://www.mp4upload.com${u}`;
              // vadbam / viidshar → ميتة (timeout) → تجاهل
              if (p === "vadbam" || p === "viidshar") return null;
              return `https://upstream.to${u}`;
            }
            return null;
          };

          // ── fetch anime list + servers in parallel ──────────────────────────
          const [animeR, servR] = await Promise.all([
            fetch(`${ADBASE}/app/anime.php`, {
              headers: { "User-Agent": AD_UA, "Accept": "application/json" },
              signal : AbortSignal.timeout(8_000),
            }),
            fetch(`${ADBASE}/app/servers.php`, {
              headers: { "User-Agent": AD_UA, "Accept": "application/json" },
              signal : AbortSignal.timeout(10_000),
            }),
          ]);
          if (!animeR.ok || !servR.ok) return;
          const animeList: any[] = ((await animeR.json() as any).data ?? []);
          const serverList: any[] = ((await servR.json() as any).data ?? []);
          if (!animeList.length || !serverList.length) return;

          // ── Arabic ordinal → digit (الأول=1, الثاني=2, …) ──────────────────
          const AR_ORDINAL: Record<string, number> = {
            'الأول':1,'الاول':1,'الأولى':1,'الأولي':1,
            'الثاني':2,'الثانى':2,'الثانية':2,
            'الثالث':3,'الثالثة':3,
            'الرابع':4,'الرابعة':4,
            'الخامس':5,'الخامسة':5,
            'السادس':6,'السابع':7,'الثامن':8,'التاسع':9,'العاشر':10,
          };
          const parseSeasonNum = (nm: string): number => {
            const d = nm.match(/(?:season)\s+(\d+)/i);
            if (d) return parseInt(d[1], 10);
            const ar = nm.match(/الموسم\s+(\S+)/);
            if (ar) return AR_ORDINAL[ar[1]] ?? 1;
            return 1;
          };

          // ── title matching: use titleSim against name (strip season) ─────────
          const searchQ = title.toLowerCase().replace(/[^a-z0-9\s]/g, " ").trim();

          // Collect ALL entries that match title (multiple seasons)
          const candidates: { anime: any; seasonNum: number; score: number }[] = [];
          for (const anime of animeList) {
            const nm = (anime.name || "")
              .toLowerCase()
              .replace(/\s*(season|الموسم)\s+.*/i, "")
              .replace(/[^a-z0-9\s]/g, " ").trim();
            const sn = (anime.second_name || "")
              .toLowerCase().replace(/[^a-z0-9\s]/g, " ");
            const sc = Math.max(titleSim(searchQ, nm), titleSim(searchQ, sn));
            if (sc >= 0.5) {
              const sNum = parseSeasonNum(anime.name || "");
              candidates.push({ anime, seasonNum: sNum, score: sc });
            }
          }
          if (!candidates.length) return;

          // For TV: prefer the entry whose season matches; for movie: highest score
          let bestCandidate = candidates[0];
          if (type === "tv") {
            const exact = candidates.find(c => c.seasonNum === season);
            if (exact) bestCandidate = exact;
            else return; // season not available
          } else {
            bestCandidate = candidates.reduce((a, b) => a.score >= b.score ? a : b);
          }
          const bestAnime = bestCandidate.anime;
          if (!bestAnime) return;

          const animeName: string = bestAnime.name || "";
          const showNamePart = animeName.toLowerCase()
            .replace(/\s*(season|الموسم)\s+.*/i, "").trim();
          const matched = serverList.filter((s: any) => {
            const sn = (s.name || "").toLowerCase();
            if (!sn.includes(showNamePart.split(" ")[0])) return false;
            if (type === "tv") {
              // Use regex with word boundary so ep 5 doesn't match ep 50/55
              const epMatch = new RegExp(`\\beps\\s+${epNum}(?:\\s|$)`).test(sn);
              if (!epMatch) return false;
              // Some shows (e.g. Sym-Bionic Titan) have no "season N" in server names
              const hasSeasonTag = /\bseason\s+\d+\b/.test(sn);
              if (hasSeasonTag) return sn.includes(`season ${season}`);
              // No season tag → assume season 1
              return season === 1;
            }
            return sn.includes(showNamePart.slice(0, 12));
          });
          if (!matched.length) return;

          // ── try each server, send extracted streams ─────────────────────────
          const seen = new Set<string>();
          for (const srv of matched.slice(0, 10)) {
            const full = adResolve(srv);
            if (!full || seen.has(full)) continue;
            seen.add(full);
            const prov = (srv.name || "").toLowerCase().split(" ").pop() || "animeday";
            await sendExtracted(full, `AniméDay · ${prov}`);
          }
        } catch { /* silent */ }
      }),

      // ── aflaam.com — مباشر MP4 عربي متعدد الجودات ───────────────────────────
      scrapeAnimCached("aflaam", async () => {
        if (!title) return;
        try {
          send("status", { msg: "aflaam: جاري البحث…" });

          // Use pre-fetched English title (already resolved before Promise.allSettled)
          const sources = type === "tv"
            ? await scrapeAflaamSeries(title, epNum, season, enTitlePrefetched || undefined)
            : await scrapeAflaamMovie(title, enTitlePrefetched || undefined);

          for (const src of sources) {
            const qLabel  = src.quality === "1080" ? "1080p FHD"
              : src.quality === "720" ? "720p HD"
              : src.quality === "480" ? "480p SD"
              : `${src.quality}p`;
            const proxied = wrapMp4(src.url, `${AFLAAM_BASE}/`);
            sendSource(proxied, `aflaam · ${qLabel}`, proxied, proxied);
          }
        } catch { /* silent */ }
      }),

      // ── SeePanal — DISABLED: API dead (panel.seepanel.top/api returns 404) ─────
      Promise.resolve() || scrapeAnimCached("seepanel", async () => {
        if (!title) return;
        try {
          send("status", { msg: "SeePanal: جاري البحث…" });

          // Build search queries: TMDB title + English alternative title
          const queries = [title, enTitlePrefetched].filter(Boolean) as string[];
          const seenIds = new Set<number>();
          const candidates: Array<{ poster: any; score: number }> = [];

          for (const q of queries) {
            const posters = await spSearch(q);
            for (const p of posters) {
              if (seenIds.has(p.id)) continue;
              seenIds.add(p.id);
              const spNorm = p.title
                .replace(/\s*-\s*[\u0600-\u06ff].*$/u, "")
                .toLowerCase().replace(/[^a-z0-9 ]/g, " ").replace(/\s+/g, " ").trim();
              const qNorm  = q.toLowerCase().replace(/[^a-z0-9 ]/g, " ").replace(/\s+/g, " ").trim();
              const tNorm  = title.toLowerCase().replace(/[^a-z0-9 ]/g, " ").replace(/\s+/g, " ").trim();
              const score = Math.max(
                spTitleSim(p.title, q),
                spTitleSim(p.title, title),
                // Substring bonus: title inside SeePanal title (e.g. "kung fu panda" in title)
                (spNorm.includes(qNorm) || spNorm.includes(tNorm) ||
                 qNorm.includes(spNorm) || tNorm.includes(spNorm)) ? 0.6 : 0,
              );
              if (score >= 0.4) candidates.push({ poster: p, score });
            }
          }

          if (!candidates.length) return;

          // Filter by content type: movie requests only match movie posters; tv only series
          const typeFiltered = candidates.filter(({ poster }) =>
            type === "movie" ? poster.type === "movie" : poster.type !== "movie",
          );
          const finalCandidates = typeFiltered.length ? typeFiltered : candidates;

          finalCandidates.sort((a, b) =>
            b.score !== a.score ? b.score - a.score :
            (a.poster.type === "movie" && type === "movie" ? -1 : 1),
          );

          // Episode index for TV; 1 for movies/OVAs
          const epIdx = type === "movie" ? 1 : epNum;

          for (const { poster } of finalCandidates.slice(0, 4)) {
            const srcs = await spGetSources(poster, epIdx);
            if (!srcs.length) continue;

            // Extract each source via extractVideoDeep (handles vidspeed/hlswish/1vid/uqload)
            await Promise.allSettled(srcs.map(async (src) => {
              try {
                const extracted = await callExtractApi(src.url);
                if (!extracted?.directUrl) return;
                const d = extracted.directUrl;
                const isHls = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                const proxied = isHls
                  ? (d.startsWith("/") ? d : wrapHls(d, src.url))
                  : wrapMp4(d, src.url);
                sendSource(proxied, `SeePanal · Dubbed · ${src.quality}`, proxied, proxied);
              } catch { /* skip */ }
            }));

            // Stop if we got at least one source from this poster
            if (sourceCount > 0) break;
          }
        } catch { /* silent */ }
      }),

      // ── ArabSeed (m.asd.ink) — Arabic dubbed/subbed content ──────────────────
      scrapeAnimCached("arabseed", async () => {
        if (!title) return;
        try {
          send("status", { msg: "عرب سيد: جاري البحث…" });
          const queries = [enTitlePrefetched, title].filter(Boolean) as string[];
          let epUrl: string | null = null;
          for (const q of queries) {
            epUrl = type === "movie"
              ? await asFindMovieUrl(q)
              : await asFindEpisodeUrl(q, epNum);
            if (epUrl) break;
          }
          if (!epUrl) return;

          // a.asd.ink (episode pages) works directly from Replit (confirmed 2026-06)
          const epOrigin = new URL(epUrl).origin; // https://a.asd.ink
          const AS_HDRS: Record<string, string> = {
            "User-Agent": UA,
            "Referer": epUrl,
            "Origin": epOrigin,
          };

          // Direct fetch — a.asd.ink is accessible without CF proxy from Replit
          const epResp = await fetch(epUrl, {
            headers: { "User-Agent": UA, "Referer": `${AS_BASE}/` },
            signal: AbortSignal.timeout(10_000),
            redirect: "follow",
          }).catch(() => null);
          if (!epResp?.ok) return;
          const epHtml = await epResp.text();
          if (!epHtml) return;

          // psot_id: object__info = {'psot_id': '12345'} or psot_id: "12345"
          const postIdM = epHtml.match(/psot_id['"]?\s*[:']\s*['"](\d+)['"]/i)
            || epHtml.match(/var\s+post_id\s*=\s*['"]?(\d+)/i)
            || epHtml.match(/data-post[_-]id=["'](\d+)/i);
          const csrfM = epHtml.match(/csrf[_]{1,2}token['"]?\s*[:']\s*["']([a-zA-Z0-9_/-]{4,80})["']/i);
          if (!postIdM) return;
          const psotId = postIdM[1];
          const csrf   = csrfM?.[1] || "";

          // POST /get__quality__servers/ → server list
          let serverIndices: number[] = [];
          let firstEmbedUrl = "";
          try {
            const qRes = await fetch(`${epOrigin}/get__quality__servers/`, {
              method: "POST",
              headers: { ...AS_HDRS, "Content-Type": "application/x-www-form-urlencoded", "X-Requested-With": "XMLHttpRequest" },
              body: new URLSearchParams({ post_id: psotId, quality: "1080", csrf_token: csrf }).toString(),
              signal: AbortSignal.timeout(9_000),
            });
            if (qRes.ok) {
              const qData = await qRes.json() as { html?: string; server?: string };
              firstEmbedUrl = qData.server || "";
              for (const m of (qData.html || "").matchAll(/data-server=["'](\d+)["']/gi)) {
                const idx = parseInt(m[1], 10);
                if (!serverIndices.includes(idx)) serverIndices.push(idx);
              }
            }
          } catch { /* fallback to default indices */ }
          if (!serverIndices.length) serverIndices = [0, 1, 2, 3];

          await Promise.allSettled(serverIndices.slice(0, 4).map(async (serverIdx) => {
            try {
              const sRes = await fetch(`${epOrigin}/get__watch__server/`, {
                method: "POST",
                headers: { ...AS_HDRS, "Content-Type": "application/x-www-form-urlencoded", "X-Requested-With": "XMLHttpRequest" },
                body: new URLSearchParams({ post_id: psotId, quality: "1080", server: String(serverIdx), csrf_token: csrf }).toString(),
                signal: AbortSignal.timeout(9_000),
              });
              if (!sRes.ok) return;
              const sData = await sRes.json() as { type?: string; server?: string };
              const embedUrl: string = sData.server || (serverIdx === 0 ? firstEmbedUrl : "");
              if (!embedUrl?.startsWith("http")) return;
              if (embedUrl.includes("luluvid")) return;
              const srvLabel = `ArabSeed · سيرفر ${serverIdx + 1}`;
              const extracted = await callExtractApi(embedUrl);
              if (extracted?.directUrl) {
                const d = extracted.directUrl;
                const isHls = d.includes(".m3u8") || d.startsWith("/api/anime/hls-proxy");
                const proxied = d.startsWith("/") ? d : (isHls ? wrapHls(d, embedUrl) : wrapMp4(d, embedUrl));
                sendSource(proxied, srvLabel, d, proxied);
              }
            } catch { /* skip */ }
          }));
        } catch { /* silent */ }
      }),

      // ── EzVidAPI — DISABLED (api.ezvidapi.com returns Bad Gateway 502 as of 2026-07) ─
      Promise.resolve(),

      // ── Videasy/VidKing (api.speedracelight.com) — TMDB-native HLS multi-quality ─────
      // Backend moved 2026-07-15: api.wingsdatabase.com → api.speedracelight.com
      // (re-discovered by inspecting vidking.net's live VideoPlayer-*.js chunk).
      // Same "STREAMCRYPTO" cipher as anime.ts's getVideasyAnimeSources — reimplemented
      // natively below (wc* helpers), no enc-dec.app dependency.
      scrapeAnimCached("videasy3", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "Videasy: جاري الاستخراج…" });
          const sources = await getVideasyAnimationSources(String(tmdbId), type === "movie" ? "movie" : "tv", season, epNum, title);
          for (const src of sources) {
            // ironbubble.site CDN يحجب datacenter IPs (VPS) — hls-proxy يعمل على VPS فمحجوب أيضاً.
            // الحل: rawUrl مباشرة — المتصفح يُحضر HLS من IP سكني غير محجوب.
            // Referer مطلوب: player.videasy.to مسموح به من ironbubble؛ يُمرَّر عبر extra headers.
            sendSource(
              src.url, src.label, src.url, src.url,
              { headers: { Referer: "https://player.videasy.to/", Origin: "https://player.videasy.to" } },
            );
          }
        } catch { /* silent */ }
      }),

      // ── VidLink via enc-dec.app ─────────────────────────────────────────────────────────────────
      // يُرجع MP4 بجودات متعددة (360/480/720/1080) + DASH + ترجمة عربية من stormvv.vodvidl.site
      // URLs موقَّعة IP-bound → video-proxy إلزامي (VPS يُحضرها بنفس IP الطلب الأصلي)
      scrapeAnimCached("vidlink_encdec", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "VidLink: جاري التشفير…" });
          // الخطوة 1: تشفير TMDB ID عبر enc-dec.app
          const encR = await fetch(`https://enc-dec.app/api/enc-vidlink?text=${tmdbId}`, {
            headers: { "User-Agent": UA },
            signal: AbortSignal.timeout(8_000),
          });
          if (!encR.ok) { console.error(`[vidlink_anim] enc-dec ${encR.status}`); return; }
          const encData = await encR.json() as { status?: number; result?: string; data?: string };
          const encrypted = encData.result || encData.data || "";
          if (!encrypted) { console.error("[vidlink_anim] enc-dec no encrypted value", encData); return; }
          // الخطوة 2: استدعاء VidLink API بالـ ID المشفَّر
          const vlUrl = type === "movie"
            ? `https://vidlink.pro/api/b/movie/${encrypted}`
            : `https://vidlink.pro/api/b/tv/${encrypted}/${season}/${epNum}`;
          const vlR = await fetch(vlUrl, {
            headers: { "User-Agent": UA, "Origin": "https://vidlink.pro", "Referer": "https://vidlink.pro/" },
            signal: AbortSignal.timeout(12_000),
          });
          if (!vlR.ok) { console.error(`[vidlink_anim] API ${vlR.status}`); return; }
          const vlData = await vlR.json() as any;
          const VL_REF = "https://vidlink.pro/";
          const captions: any[] = vlData?.stream?.captions || vlData?.captions || [];
          // Arabic subtitle: قد يكون "ara"/"ar" أو نص عربي مثل "اَلْعَرَبِيَّةُ"
          const araCap = captions.find((c: any) =>
            c.language === "ara" || c.language === "ar" ||
            (c.language && /[\u0600-\u06FF]/.test(String(c.language)))
          );
          const subExtra = araCap?.url ? { subtitleUrl: araCap.url } : undefined;
          let foundAny = false;

          // الحالة 1: HLS playlist مباشر
          const hlsPlaylist: string = vlData?.stream?.playlist || "";
          if (hlsPlaylist && (hlsPlaylist.includes(".m3u8") || hlsPlaylist.includes("manifest"))) {
            const vlProxy = `/api/anime/hls-proxy?url=${encodeURIComponent(hlsPlaylist)}&ref=${encodeURIComponent(VL_REF)}`;
            sendSource(vlProxy, "VidLink · HLS", hlsPlaylist, vlProxy, subExtra);
            foundAny = true;
          }

          // الحالة 2: MP4 متعددة الجودة (stream.qualities) — الأكثر شيوعاً
          // stormvv.vodvidl.site: URLs موقَّعة IP-bound → video-proxy إلزامي
          if (vlData?.stream?.qualities) {
            const quals = vlData.stream.qualities as Record<string, { type?: string; url?: string }>;
            for (const q of ["1080", "720", "480", "360"]) {
              const qData = quals[q];
              if (!qData?.url) continue;
              const isHls = qData.url.includes(".m3u8") || qData.type === "hls";
              const vlProxy = isHls
                ? `/api/anime/hls-proxy?url=${encodeURIComponent(qData.url)}&ref=${encodeURIComponent(VL_REF)}`
                : `/api/anime/video-proxy?url=${encodeURIComponent(qData.url)}&ref=${encodeURIComponent(VL_REF)}`;
              sendSource(vlProxy, `VidLink · ${q}p`, qData.url, vlProxy, subExtra);
              foundAny = true;
            }
          }

          // الحالة 3: DASH (stream.alternates.dash) — المتصفح يشغّله مباشرة
          const dashUrl: string = vlData?.stream?.alternates?.dash?.playlist || "";
          if (dashUrl && dashUrl.includes(".mpd")) {
            sendSource(dashUrl, "VidLink · DASH", dashUrl, dashUrl, subExtra);
            foundAny = true;
          }

          if (!foundAny) console.error("[vidlink_anim] no stream in response", JSON.stringify(vlData).slice(0, 300));
        } catch { /* silent */ }
      }),

      // ── VidFast.vc via enc-dec.app ─────────────────────────────────────────────
      // CDN: moon.ironwallnet.net — DASH MPD; sent as rawUrl (browser plays directly)
      scrapeAnimCached("vidfast_vc", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "VidFast: جاري الاستخراج…" });
          const sources = await scrapeVidFastVc(
            String(tmdbId), type === "movie" ? "movie" : "tv", season, epNum,
          );
          for (const src of sources) {
            // ironwallnet.net CDN — send as rawUrl; browser accesses directly (datacenter IPs blocked)
            sendSource(src.url, src.label, src.url, src.url);
          }
        } catch (e) { console.error("[vidfast_vc]", (e as Error).message?.slice(0, 80)); }
      }),

      // ── MX Player (mxplayer.in) — licensed anime/animation — بدون ترجمة مدمجة ──
      // روابط HLS/DASH خام فقط، بدون أي معالجة للترجمة.
      scrapeAnimCached("mxplayer_anim", async () => {
        try {
          const q = (enTitlePrefetched || title || "").trim();
          if (!q) return;
          const mxpPort = process.env.MXP_SERVICE_PORT || "8002";
          const ep = type === "movie" ? 1 : epNum;
          const mxpUrl = `http://localhost:${mxpPort}/search?q=${encodeURIComponent(q)}&ep=${ep}`;
          const r = await fetch(mxpUrl, { signal: AbortSignal.timeout(15_000) });
          if (!r.ok) return;
          const data = await r.json() as { sources?: Array<{ url: string; type?: string; label?: string; quality?: string }> };
          for (const src of (data.sources || [])) {
            if (!src.url) continue;
            const isHls = src.type === "hls" || src.url.includes(".m3u8");
            const proxied = isHls
              ? `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent("https://www.mxplayer.in/")}`
              : src.url;
            sendSource(proxied, src.label || `MXPlayer · ${src.quality || "HD"}`, proxied, proxied);
          }
        } catch { /* silent */ }
      }),

      // LordFlix: محذوف — Cloudflare browser-challenge يمنع استخراج البيانات

      // ── Dulo.tv — multi-provider aggregator (TMDB-native HLS) ────────────────
      // Confirmed working providers: vidrock (TV+Movie), purstream (TV only)
      // Session cookie is cached module-level (shared with anime.ts helper via duloGetSession)
      scrapeAnimCached("dulo_anim", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "Dulo: جاري الاستخراج…" });
          const cookie = await duloGetSession();
          const hdrs   = duloRequestHeaders(cookie);
          // Confirmed working from VPS: purstream (TV+Movie); vidrock returns 0 from VPS IPs
          // purstream only — vidrock consistently returns 0 from VPS IPs
          const providers = ["purstream"];
          const DULO_PROBE_PORT = parseInt(String(process.env.PORT || 5000), 10);
          await Promise.allSettled(providers.map(async (prov) => {
            try {
              const apiUrl = type === "tv"
                ? `${DULO_TV_BASE}/api/sources/call?type=tv&provider=${prov}&tmdb=${tmdbId}&season=${season}&episode=${epNum}`
                : `${DULO_TV_BASE}/api/sources/call?type=movie&provider=${prov}&tmdb=${tmdbId}`;
              const r = await fetch(apiUrl, { headers: hdrs, signal: AbortSignal.timeout(14_000) });
              if (!r.ok) { console.warn(`[dulo_anim] ${prov} → HTTP ${r.status}`); return; }
              const data = await r.json() as { sources?: Array<{ url: string; type?: string; title?: string }> };
              for (const src of (data.sources ?? [])) {
                if (!src.url) continue;
                const isHls = (src.type || "").toLowerCase() === "hls" || src.url.includes(".m3u8");
                if (!isHls) continue;
                const proxied = wrapHls(src.url, `${DULO_TV_BASE}/`);
                const label = `Dulo · ${prov}${src.title ? " · " + src.title : ""}`;
                // Probe CDN — some CDNs block datacenter IPs (403) → send raw URL for direct mobile access
                let finalUrl = proxied;
                let finalRaw = src.url;
                let useRawFallback = false;
                try {
                  const probe = await fetch(`http://127.0.0.1:${DULO_PROBE_PORT}${proxied}`, {
                    signal: AbortSignal.timeout(6_000),
                  });
                  if (!probe.ok && probe.status !== 206) {
                    // CDN blocks server IP → raw URL for direct client access
                    finalUrl = src.url;
                    useRawFallback = true;
                  }
                } catch {
                  finalUrl = src.url;
                  useRawFallback = true;
                }
                /* للروابط الخام (بدون proxy): أرسل Referer/Origin الصحيح حتى يُرسله ExoPlayer
                   مباشرةً للـ CDN (لأنه لا يمر عبر CF Worker في هذه الحالة) */
                const duloExtra = useRawFallback
                  ? { headers: { Referer: `${DULO_TV_BASE}/`, Origin: DULO_TV_BASE } }
                  : undefined;
                sendSource(finalUrl, label, finalRaw, finalUrl, duloExtra);
              }
            } catch (err: any) { console.warn(`[dulo_anim] ${prov} error: ${err?.message}`); }
          }));
        } catch (err: any) { console.warn(`[dulo_anim] outer error: ${err?.message}`); }
      }),

      // ── VixSrc (vixsrc.to) — أفلام فقط (API يعيد فارغاً للمسلسلات) ──────────────
      // API: GET /api/movie/{tmdbId} → {src: "/embed/{id}?token=...&expires=..."}
      // ثم: fetch embed HTML → extract playlist URL + token → build master m3u8
      scrapeAnimCached("vixsrc", async () => {
        if (!tmdbId) return;
        if (type !== "movie") return;
        try {
          const VIXSRC_BASE = "https://vixsrc.to";
          send("status", { msg: "VixSrc: جاري الاستخراج…" });
          // Step 1: Get embed URL with token/expires from API
          const apiRaw = await orkestDirectGet(`${VIXSRC_BASE}/api/movie/${tmdbId}`, 10_000);
          const apiData = JSON.parse(apiRaw) as { src?: string };
          if (!apiData?.src) return;
          const embedUrl = apiData.src.startsWith("http") ? apiData.src : `${VIXSRC_BASE}${apiData.src}`;
          // Step 2: Fetch embed page to extract playlist URL + token
          const embedHtml = await orkestDirectGet(embedUrl, 12_000);
          if (!embedHtml) return;
          const token    = embedHtml.match(/token["']\s*:\s*["']([^"']+)/)?.[1];
          const expires  = embedHtml.match(/expires["']\s*:\s*["']([^"']+)/)?.[1];
          const playlist = embedHtml.match(/url\s*:\s*["']([^"']{10,}\.m3u8[^"']*)/)?.[1]
                        || embedHtml.match(/file\s*:\s*["']([^"']{10,}\.m3u8[^"']*)/)?.[1];
          if (!token || !expires || !playlist) return;
          const sep = playlist.includes("?") ? "&" : "?";
          const masterUrl = `${playlist}${sep}token=${token}&expires=${expires}&h=1&lang=en`;
          const proxied = wrapHls(masterUrl, `${VIXSRC_BASE}/`);
          sendSource(proxied, "VixSrc · FHD", masterUrl, proxied);
        } catch { /* silent */ }
      }),

      // ── AnimePhoenix (anime-phoenix.com) — أنمي مدبلج عربي x265/HEVC ─────────
      // ── MyCima / WeCima — أفلام وكرتون مترجم ──────────────────────────────
      scrapeAnimCached("mycima_anim", async () => {
        const q = enTitlePrefetched || title;
        if (!q) return;
        try {
          send("status", { msg: "ماي سيما: جاري البحث…" });
          const PORT    = process.env["PORT"] || "5000";
          const ep      = type === "movie" ? 1 : epNum;
          const isMovie = type === "movie" ? "true" : "false";
          const fsUrl   = `http://localhost:${PORT}/api/anime/fetch-source?site=mycima`
            + `&title=${encodeURIComponent(q)}&english=${encodeURIComponent(q)}&ep=${ep}&isMovie=${isMovie}`;
          const r = await fetch(fsUrl, {
            headers: { "x-internal": "1" },
            signal: AbortSignal.timeout(25_000),
          });
          if (!r.ok) return;
          const { sources } = await r.json() as {
            sources?: Array<{ directUrl?: string; url?: string; name?: string }>;
          };
          for (const src of sources || []) {
            const u = src.directUrl || src.url;
            if (!u) continue;
            const proxied = u.startsWith("/api/") ? u
              : u.includes(".m3u8") ? wrapHls(u, "https://wecima.gold/")
              : u;
            sendSource(proxied, `MyCima · ${src.name || "Arabic Dubbed"}`, proxied, proxied);
          }
        } catch { /* silent */ }
      }),

      // AnimePhoenix → موقع أنمي ياباني مدبلج بالعربية — ليس أنيميشن غربي → مُعطَّل من قسم الأنيميشن
      // (متاح في قسم الأنمي عبر /api/anime/fetch-source?site=animephoenix)
      Promise.resolve(),

      scrapeAnimCached("topcinemaa_anim", async () => {
        const q = enTitlePrefetched || title;
        if (!q) return;
        try {
          send("status", { msg: "توب سيما: جاري البحث…" });
          const ep      = type === "movie" ? 1 : epNum;
          const isMovie = type === "movie" ? "true" : "false";
          const PORT    = process.env["PORT"] || "5000";
          const fsUrl   = `http://localhost:${PORT}/api/anime/fetch-source?site=topcinemaa`
            + `&title=${encodeURIComponent(q)}&english=${encodeURIComponent(q)}&ep=${ep}&isMovie=${isMovie}`;
          const r = await fetch(fsUrl, {
            headers: { "x-internal": "1" },
            signal: AbortSignal.timeout(25_000),
          });
          if (!r.ok) return;
          const { sources } = await r.json() as {
            sources?: Array<{ directUrl?: string; url?: string; name?: string; qualityRank?: number }>;
          };
          for (const src of sources || []) {
            const u = src.directUrl || src.url;
            if (!u) continue;
            const proxied = u.startsWith("/api/") ? u
              : u.includes(".m3u8") ? wrapHls(u, "https://web.topcinemaa.com/")
              : wrapMp4(u, "https://web.topcinemaa.com/");
            sendSource(proxied, `TopCinema · ${src.name || "Arabic Dubbed"}`, proxied, proxied);
          }
        } catch { /* silent */ }
      }),

      // Animeify (animeify.net) → موقع أنمي ياباني بالعربية — ليس أنيميشن غربي → مُعطَّل من قسم الأنيميشن
      // (متاح في قسم الأنمي عبر /api/anime/fetch-source?site=animeify)
      Promise.resolve(),

      // ── EgyBest (egytbest.live) — مُستبعد بطلب المستخدم 2026-07-13 ─────────────
      // منطق الاستخراج نفسه مؤكَّد يعمل (بحث WP-JSON + data-embed-url) لكن غير
      // مُفعَّل حالياً؛ محفوظ بالذاكرة (egybest-exclusion-2026-07-13.md) لإعادة
      // النظر لاحقاً. أيضاً مستبعد فعلياً عبر ANIM_SOURCE_ALLOWLIST بالأسفل.
      // scrapeAnimCached("egybest_anim", async () => { ... }),

      // ── Moviz-Time (moviz-time.vip) — أنمي + أنيميشن عربي مترجم ─────────────
      // نفس الـ scraper الموجود بقسم الأنمي (getMovizTimeSources) عبر internal API؛
      // صفحات موسم فيها أزرار <button class='ep-item'> لكل الحلقات + سيرفراتها.
      scrapeAnimCached("moviz_time_anim", async () => {
        const q = enTitlePrefetched || title;
        if (!q) return;
        try {
          send("status", { msg: "Moviz-Time: جاري البحث…" });
          const PORT    = process.env["PORT"] || "5000";
          const ep      = type === "movie" ? 1 : epNum;
          const isMovie = type === "movie" ? "true" : "false";
          const fsUrl   = `http://localhost:${PORT}/api/anime/fetch-source?site=moviz_time`
            + `&title=${encodeURIComponent(q)}&english=${encodeURIComponent(q)}&ep=${ep}&isMovie=${isMovie}`;
          const r = await fetch(fsUrl, {
            headers: { "x-internal": "1" },
            signal: AbortSignal.timeout(22_000),
          });
          if (!r.ok) return;
          const { sources } = await r.json() as {
            sources?: Array<{ directUrl?: string; url?: string; name?: string; qualityRank?: number }>;
          };
          for (const src of sources || []) {
            const u = src.directUrl || src.url;
            if (!u) continue;
            sendSource(u, `وقت الأفلام · ${src.name || "Arabic"}`, u, u);
          }
        } catch { /* silent */ }
      }),

      // ── FaselHD (www.fasel-hd.cam) — أنمي ومسلسلات مترجمة عربي ─────────────────
      // الاستراتيجية: GitHub pre-scraped JSON → slug → صفحة الحلقة مباشرة (غير محجوبة بـ CF)
      // صفحات الحلقات على fasel-hd.cam مفتوحة مباشرة من Replit (200 OK بدون proxy)
      // video_player يستخدم data-src لا src (lazy load)
      scrapeAnimCached("faselhd", async () => {
        const FASEL_BASE   = "https://www.fasel-hd.cam";
        const GITHUB_BASE  = "https://raw.githubusercontent.com/Ahmd3301/faselhd-db/main/output";
        // %d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9 = "الحلقة" مُرمَّزة بشكل URL (lowercase لتطابق روابط الموقع)
        const EP_AR_ENC    = "%d8%a7%d9%84%d8%ad%d9%84%d9%82%d8%a9";
        const isCfBlocked  = (h: string) =>
          h.includes("Just a moment") || h.includes("cf-browser-verification") || h.length < 500;

        send("status", { msg: "FaselHD: جاري البحث…" });
        try {
          // ── الخطوة 1: البحث عن slug عبر GitHub JSON (تجنب CF على search) ──────
          // anime.json = 1864 أنمي | anime-movies.json = 391 فيلم أنمي
          let encodedSlug: string | null = null;  // الجزء الأخير من URL (محتفظ بترميز الموقع)
          const jsonFiles = type === "movie"
            ? ["anime-movies.json", "movies.json"]
            : ["anime.json"];

          // bestLink = الرابط الكامل لصفحة المسلسل/الفيلم (محفوظ مع path الصحيح)
          let bestLink: string | null = null;

          for (const jsonFile of jsonFiles) {
            try {
              const jr = await fetch(`${GITHUB_BASE}/${jsonFile}`, {
                signal: AbortSignal.timeout(12_000),
              });
              if (!jr.ok) continue;
              const jdata = await jr.json() as { items: Array<{ slug: string; name: string; link: string }> };
              if (!Array.isArray(jdata.items)) continue;

              // حماية: لا نستخدم enTitlePrefetched إذا كان فارغاً (يعطي مطابقة خاطئة)
              const scores = jdata.items.map(item => {
                let sc = titleSim(title, item.name);
                if (enTitlePrefetched) sc = Math.max(sc, titleSim(enTitlePrefetched, item.name));
                return { link: item.link || "", name: item.name || "", sc };
              });
              const best = scores.filter(x => x.sc > 0.42).sort((a, b) => b.sc - a.sc)[0];
              if (best?.link) { bestLink = best.link; break; }
            } catch { /* جرب الملف التالي */ }
          }

          // ── fallback: بحث مباشر على الموقع عبر cfProxy (إذا فشل GitHub) ───────
          if (!bestLink) {
            try {
              const sHtml = await cfOrOrkestGet(
                `${FASEL_BASE}/?s=${encodeURIComponent(title)}`
              );
              if (!isCfBlocked(sHtml)) {
                const itemRe = /<div[^>]+class="[^"]*postDiv[^"]*"[^>]*>[\s\S]*?href="([^"]+)"[\s\S]*?alt="([^"]+)"/g;
                const res: Array<{ url: string; ttl: string }> = [];
                let m2: RegExpExecArray | null;
                while ((m2 = itemRe.exec(sHtml))) res.push({ url: m2[1], ttl: m2[2] });
                const fb = res
                  .map(r => {
                    let sc = titleSim(title, r.ttl);
                    if (enTitlePrefetched) sc = Math.max(sc, titleSim(enTitlePrefetched, r.ttl));
                    return { ...r, sc };
                  })
                  .filter(r => r.sc > 0.42).sort((a, b) => b.sc - a.sc)[0];
                if (fb?.url) bestLink = fb.url;
              }
            } catch { /* silent */ }
          }
          if (!bestLink) return;

          // استخراج الجزء الأخير من الرابط (URL-encoded، محفوظ مع ترميز الموقع)
          const slugM = bestLink.match(/\/([^/?#]+)\/?$/);
          if (!slugM) return;
          encodedSlug = slugM[1];

          // ── الخطوة 2: بناء رابط الصفحة المستهدفة ─────────────────────────────
          let targetUrl: string;
          if (type === "movie") {
            // للأفلام: استخدام bestLink مباشرة (يحتوي المسار الصحيح /anime-movies/... أو /anime/...)
            targetUrl = bestLink;
          } else {
            // للمسلسلات: أولاً نجرب الرابط المبني مباشرة، وكـ fallback نجلب صفحة السيريال
            targetUrl = `${FASEL_BASE}/anime-episodes/${encodedSlug}-${EP_AR_ENC}-${epNum}`;
          }

          // ── الخطوة 3: جلب الصفحة مباشرة (غير محجوبة بـ CF من Replit) ──────────
          const faselHeaders = {
            "User-Agent"     : UA,
            "Accept-Language": "ar-AR,ar;q=0.9,en;q=0.8",
            "Referer"        : FASEL_BASE + "/",
          };
          let pageHtml = "";
          try {
            const pr = await fetch(targetUrl, {
              headers: faselHeaders,
              signal: AbortSignal.timeout(12_000),
            });
            if (pr.ok) pageHtml = await pr.text();
          } catch { /* silent */ }

          // إذا فشل الجلب المباشر، جرب cfProxy كـ fallback
          if (!pageHtml || isCfBlocked(pageHtml)) {
            try { pageHtml = await cfOrOrkestGet(targetUrl); } catch { /* silent */ }
          }

          // fallback لصفحات الحلقات: إذا فشل الرابط المبني مباشرة، اجلب صفحة السيريال واستخرج الرابط الفعلي
          if (type !== "movie" && (!pageHtml || isCfBlocked(pageHtml))) {
            try {
              const seriesUrl = bestLink!;
              let seriesHtml = "";
              try {
                const sr = await fetch(seriesUrl, { headers: faselHeaders, signal: AbortSignal.timeout(12_000) });
                if (sr.ok) seriesHtml = await sr.text();
              } catch { /* silent */ }
              if (!seriesHtml || isCfBlocked(seriesHtml)) {
                seriesHtml = await cfOrOrkestGet(seriesUrl);
              }
              if (seriesHtml && !isCfBlocked(seriesHtml)) {
                // استخراج روابط الحلقات من div.epAll — الرابط يحتوي الحلقة في نهايته (-{N})
                const epLinkRe = /href="(https?:\/\/www\.fasel-hd\.cam\/anime-episodes\/[^"]+)"/g;
                let em: RegExpExecArray | null;
                while ((em = epLinkRe.exec(seriesHtml))) {
                  const epLink = em[1];
                  // استخراج رقم الحلقة من نهاية الرابط
                  const numM = epLink.match(/-(\d+)\/?$/);
                  if (numM && parseInt(numM[1]) === epNum) {
                    const epr = await fetch(epLink, { headers: faselHeaders, signal: AbortSignal.timeout(12_000) });
                    if (epr.ok) { pageHtml = await epr.text(); targetUrl = epLink; }
                    break;
                  }
                }
              }
            } catch { /* silent */ }
          }

          if (!pageHtml || isCfBlocked(pageHtml)) return;

          // ── الخطوة 4: استخراج player_iframe (data-src) ─────────────────────────
          // الموقع يستخدم lazy loading: data-src لا src
          let faselhdSentAny = false;
          const ifrM = pageHtml.match(/name="player_iframe"[^>]+data-src="([^"]+)"/);
          if (ifrM) {
            const playerUrl = ifrM[1];
            // الإصلاح 2026-07: الـ player_token مرتبط بـ session cookies من صفحة الحلقة.
            // الجلب المباشر أو cfProxy (بجلسات مستقلة) يُعيد "Token Expired!" (14 bytes).
            // الحل: chain-fetch يجلب صفحة الحلقة ثم صفحة الـ player بنفس الجلسة.
            try {
              let vpHtml = "";
              try {
                // محاولة chain-fetch (session persistence)
                vpHtml = await cfProxyChainFetch(targetUrl, playerUrl, FASEL_BASE + "/", 20_000);
              } catch { /* silent */ }
              // fallback: جلب مباشر إذا فشل chain-fetch أو أعاد CF challenge أو "Token Expired"
              const vpInvalid = (h: string) =>
                !h || h.length < 100 || h.includes("Token Expired") ||
                h.includes("Just a moment") || h.includes("cf-browser-verification") ||
                h.includes("Attention Required") || isCfBlocked(h);
              if (vpInvalid(vpHtml)) {
                try {
                  const vpr = await fetch(playerUrl, {
                    headers: { ...faselHeaders, Referer: targetUrl },
                    signal: AbortSignal.timeout(10_000),
                  });
                  if (vpr.ok) vpHtml = await vpr.text();
                } catch { /* silent */ }
              }
              if (vpHtml && !vpInvalid(vpHtml)) {
                const m3u8 = vpHtml.match(/["'](https?:\/\/[^"']+\.m3u8[^"']*?)["']/);
                if (m3u8) {
                  const proxied = wrapHls(m3u8[1], playerUrl);
                  sendSource(proxied, "FaselHD · HLS", m3u8[1], proxied);
                  faselhdSentAny = true;
                }
                const mp4 = vpHtml.match(/["'](https?:\/\/[^"']+\.mp4[^"']*?)["']/);
                if (mp4) {
                  const proxied = wrapMp4(mp4[1], playerUrl);
                  sendSource(proxied, "FaselHD · MP4", mp4[1], proxied);
                  faselhdSentAny = true;
                }
              }
            } catch { /* silent */ }

            // ── fallback: isEmbed — إذا لم يُستخرج رابط مباشر، أرسل embed يُحلّ عبر HiddenResolverWebView موبايل
            if (!faselhdSentAny) {
              send("source", { url: playerUrl, directUrl: playerUrl, label: "FaselHD · Player", site: "faselhd_db", isEmbed: true });
              faselhdSentAny = true;
            }
          }

          // ── الخطوة 5: روابط التحميل (downloadLinks) → جرب عبر cfProxy ─────────
          // إصلاح 2026-07: الـ class يحتوي trailing space → نستخدم [^"]*
          const dlM = pageHtml.match(/class="downloadLinks[^"]*"[\s\S]{0,1000}?<a[^>]+href="(https?:\/\/[^"]+)"/);
          if (dlM) {
            try {
              const dlHtml = await cfProxyGet(dlM[1]);
              if (!isCfBlocked(dlHtml)) {
                const dlM3u8 = dlHtml.match(/["'](https?:\/\/[^"']+\.m3u8[^"']*?)["']/);
                const dlMp4  = dlHtml.match(/["'](https?:\/\/[^"']+\.mp4[^"']*?)["']/);
                if (dlM3u8) {
                  const proxied = wrapHls(dlM3u8[1], dlM[1]);
                  sendSource(proxied, "FaselHD · تحميل HLS", dlM3u8[1], proxied);
                } else if (dlMp4) {
                  const proxied = wrapMp4(dlMp4[1], dlM[1]);
                  sendSource(proxied, "FaselHD · تحميل MP4", dlMp4[1], proxied);
                }
              }
            } catch { /* silent */ }
          }
        } catch { /* silent */ }
      }),

      // ── EgyDead (tv10.egydead.live) — قسم الأنمي العربي ──────────────────────────
      // الإصلاح 2026-07: البحث القديم ?s={q} يُعيد صفحات JS-loaded فارغة.
      // الحل الجديد: ?s={q}&post_type=episode يُعيد روابط /episode/ مباشرة في HTML.
      // روابط السيرفرات (data-link) لا تزال JS-loaded — نستخرج أي iframe حقيقي.
      scrapeAnimCached("egydead", async () => {
        const ED_BASE = "https://tv10.egydead.live";
        send("status", { msg: "EgyDead: جاري البحث…" });
        try {
          // الخطوة 1: بحث مباشر (VPS يمكنه الوصول لـ EgyDead) بنمط post_type=episode
          // الذي يُعيد روابط الحلقات مباشرة في HTML الثابت بدون JS
          const q = encodeURIComponent(title);
          let searchHtml = "";
          try {
            const sr = await fetch(`${ED_BASE}/?s=${q}&post_type=episode`, {
              headers: { "User-Agent": UA, "Referer": `${ED_BASE}/`, "Accept-Language": "ar,en;q=0.9" },
              signal: AbortSignal.timeout(15_000),
            });
            if (sr.ok) searchHtml = await sr.text();
          } catch { /* silent */ }

          // إذا فشل الـ fetch المباشر أو حُجب بـ CF، جرّب Hopx proxy
          if (!searchHtml || searchHtml.length < 500 || searchHtml.includes("Just a moment")) {
            const hopxHtml = await hopxProxyGet(
              `${ED_BASE}/?s=${q}&post_type=episode`, `${ED_BASE}/`
            ).catch(() => null);
            if (hopxHtml && hopxHtml.length >= 500) searchHtml = hopxHtml;
          }

          if (!searchHtml || searchHtml.length < 500) return;

          // استخراج روابط الحلقات من href (النمط الجديد: /episode/{slug}/)
          const epLinkRe = /href="(https?:\/\/tv10\.egydead\.live\/episode\/([^"/?#]+))\/?"/g;
          const epLinks: Array<{ url: string; rawSlug: string; epNum: number }> = [];
          let elm: RegExpExecArray | null;
          while ((elm = epLinkRe.exec(searchHtml))) {
            const url = elm[1];
            const rawSlug = elm[2];
            if (rawSlug === "feed" || !rawSlug) continue;

            // استخراج رقم الحلقة — النمط A: يَنتهي بـ -e{N}
            const typeA = rawSlug.match(/-e(\d+)$/);
            if (typeA) {
              epLinks.push({ url, rawSlug, epNum: parseInt(typeA[1]) });
              continue;
            }
            // النمط B: يحتوي على الكلمة العربية "الحلقة" (URL-encoded أو plain)
            const decoded = (() => { try { return decodeURIComponent(rawSlug); } catch { return rawSlug; } })();
            const typeB = decoded.match(/الحلقة[^\d]*(\d+)/);
            if (typeB) {
              epLinks.push({ url, rawSlug, epNum: parseInt(typeB[1]) });
            }
          }

          if (!epLinks.length) return;

          // تحديد الـ representative slug بعد تصفية بالـ title similarity
          // هذا يمنع اختيار سيريال خاطئ إذا أعاد البحث نتائج متنوعة (مثلاً: Naruto + Boruto)
          const safeDecodeSlug = (s: string) => { try { return decodeURIComponent(s); } catch { return s; } };

          // استخراج السيريال الأفضل تطابقاً من النتائج
          // نُشكّل "slug title" بإزالة رقم الحلقة ورموز الترميز لأخذ اسم السيريال فقط
          const scoredLinks = epLinks.map(e => {
            const decoded = safeDecodeSlug(e.rawSlug);
            // استخراج اسم السيريال: نحذف الجزء الخاص بالحلقة
            const showName = decoded
              .replace(/-e\d+$/, "")
              .replace(/-الحلقة-[\d]+.*$/, "")
              .replace(/-/g, " ")
              .trim();
            let sc = titleSim(title, showName);
            if (enTitlePrefetched) sc = Math.max(sc, titleSim(enTitlePrefetched, showName));
            return { ...e, showName, sc };
          });

          // نحتفظ فقط بالنتائج التي لها تشابه معقول مع العنوان المطلوب
          const goodLinks = scoredLinks.filter(e => e.sc > 0.3).sort((a, b) => b.sc - a.sc);
          const workingLinks = goodLinks.length ? goodLinks : scoredLinks; // fallback لكل النتائج

          // البحث عن رابط الحلقة المطلوبة في النتائج أو بناؤه من الـ base slug
          let targetUrls: string[] = [];

          // أولاً: ابحث عن تطابق مباشر بين النتائج الجيدة
          const directMatch = workingLinks.find(e => e.epNum === epNum);
          if (directMatch) {
            targetUrls = [directMatch.url + "/", directMatch.url];
          } else {
            // استخراج الـ base slug من أفضل نتيجة وبناء الرابط للحلقة المطلوبة
            const sampleSlug = workingLinks[0].rawSlug;
            const typeA = sampleSlug.match(/^(.+?)-e\d+$/);
            if (typeA) {
              const base = typeA[1];
              targetUrls = [
                `${ED_BASE}/episode/${base}-e${epNum}/`,
                `${ED_BASE}/episode/${base}-e${String(epNum).padStart(2, "0")}/`,
              ];
            } else {
              // النمط B: يحتوي على "الحلقة" بالعربية
              // مثال: "انمي-naruto-shippuden-الحلقة-332-مترجمة"
              // نُعيد البناء: prefix + "-" + "الحلقة" + "-" + N + suffix
              // الحذر: نتجنب double separator إذا كان suffix يبدأ بـ "-"
              const decoded = safeDecodeSlug(sampleSlug);
              const typeB = decoded.match(/^(.+?)-الحلقة-\d+(-.*)?$/);
              if (typeB) {
                const prefix = typeB[1];                  // "انمي-naruto-shippuden"
                const suffix = typeB[2] || "";            // "-مترجمة" أو ""
                // suffix يبدأ بـ "-" بالفعل، لذا لا نُضيف "-" إضافياً
                const encPre = encodeURIComponent(prefix);
                const encHalqa = encodeURIComponent("الحلقة");
                const encSuf = suffix ? encodeURIComponent(suffix.slice(1)) : ""; // نحذف الـ "-" الأولى
                const buildUrl = (n: number | string) =>
                  encSuf
                    ? `${ED_BASE}/episode/${encPre}-${encHalqa}-${n}-${encSuf}/`
                    : `${ED_BASE}/episode/${encPre}-${encHalqa}-${n}/`;
                targetUrls = [
                  buildUrl(epNum),
                  buildUrl(String(epNum).padStart(2, "0")),
                ];
              }
            }
          }

          if (!targetUrls.length) return;

          // الخطوة 2: جلب صفحة الحلقة مباشرة (VPS يصل لـ EgyDead)
          const baseLabel = (() => {
            try { return safeDecodeSlug(workingLinks[0].rawSlug.replace(/-e\d+$/, "").replace(/-الحلقة-\d+.*$/, "")); }
            catch { return workingLinks[0].rawSlug.split("-e")[0]; }
          })();

          for (const epUrl of targetUrls) {
            try {
              const epR = await fetch(epUrl, {
                headers: { "User-Agent": UA, "Referer": `${ED_BASE}/`, "Accept-Language": "ar,en;q=0.9" },
                signal: AbortSignal.timeout(12_000),
              });
              if (!epR.ok) continue;
              const epHtml = await epR.text();
              if (!epHtml || epHtml.length < 500) continue;

              // data-link في li.serversList — إذا كانت موجودة (قد تكون JS-loaded)
              const dataLinks = [...epHtml.matchAll(/data-link=["']([^"']+)["']/g)].map(m => m[1]);
              for (const dl of dataLinks) {
                await sendExtracted(dl, `EgyDead · ${baseLabel}`);
              }

              // iframe src مباشرة — نتجاهل يوتيوب/جوجل وملفات JS
              const iframes = [...epHtml.matchAll(/<iframe[^>]+src=["']([^"']+)["']/g)].map(m => m[1]);
              const realIframes = iframes.filter(ifr =>
                ifr.startsWith("http") &&
                !ifr.includes("youtube") && !ifr.includes("google") &&
                !ifr.includes("egydead") && !ifr.endsWith(".js") &&
                !ifr.includes("cloudflare") && !ifr.includes("c4u1r.sbs")
              );
              for (const ifr of realIframes) {
                await sendExtracted(ifr, `EgyDead · embed`);
              }

              if (dataLinks.length || realIframes.length) break;
            } catch { continue; }
          }
        } catch { /* silent */ }
      }),

      // ── DramaWorld (dwapp.arabypros.com) — أفلام ومسلسلات أنيميشن غربية ─────
      // نستخدم كتالوج فئتي الأنيميشن المُخزَّن مؤقتاً (getDwCatalog) بدل endpoint
      // /search/ لأنه غير موثوق (يُعيد نتائج عشوائية لا علاقة لها بالاستعلام).
      scrapeAnimCached("dramaworld", async () => {
        send("status", { msg: "DramaWorld: جاري البحث…" });
        try {
          const wantType = type === "movie" ? "movie" : "serie";
          const catalog = await getDwCatalog();
          const posters: any[] = wantType === "movie" ? catalog.movies : catalog.series;
          console.error(`[dramaworld] catalog movies=${catalog.movies.length} series=${catalog.series.length} wantType=${wantType} title="${title}"`);
          if (!posters.length) return;

          const scored = posters
            .map(p => ({ p, sc: Math.max(titleSim(title, p.title || ""), enTitlePrefetched ? titleSim(enTitlePrefetched, p.title || "") : 0) }))
            .filter(x => x.sc > 0.6)
            .sort((a, b) => b.sc - a.sc);
          console.error(`[dramaworld] scored matches=${scored.length} best=${scored[0]?.p?.title} id=${scored[0]?.p?.id} sc=${scored[0]?.sc}`);
          if (!scored.length) return;
          const best = scored[0].p;

          let mirrors: any[] = [];
          if (best.type === "movie") {
            mirrors = await dwFetch(`/movie/source/by/${best.id}/${DW_KEY}/`) || [];
          } else {
            const seasons = await dwFetch(`/season/by/serie/${best.id}/${DW_KEY}/`);
            const seasonObj = Array.isArray(seasons) ? (seasons[season - 1] || seasons[0]) : null;
            const episodeObj = seasonObj?.episodes?.[epNum - 1];
            if (!episodeObj) return;
            mirrors = await dwFetch(`/episode/source/by/${episodeObj.id}/${DW_KEY}/`) || [];
          }
          console.error(`[dramaworld] mirrors=${Array.isArray(mirrors) ? mirrors.length : "not-array"} sample=${JSON.stringify(mirrors?.[0])}`);
          if (!Array.isArray(mirrors) || !mirrors.length) return;

          // ترتيب المرايا: المضيفات المؤكد نجاحها بالتحليل العملي أولاً
          const PRIORITY = ["uqload", "luluvid", "vidaraa", "fasel-hd", "qzz.io", "adsmoloco", "kwcdn"];
          const ordered = mirrors
            .filter((m: any) => m?.url && m.type !== "embed" && !m.url.includes("mediafire") && !m.url.includes("mega.nz"))
            .sort((a: any, b: any) => {
              const pa = PRIORITY.findIndex(h => a.url.includes(h));
              const pb = PRIORITY.findIndex(h => b.url.includes(h));
              return (pa === -1 ? 99 : pa) - (pb === -1 ? 99 : pb);
            })
            .slice(0, 6);
          console.error(`[dramaworld] ordered=${ordered.length} urls=${JSON.stringify(ordered.map((m: any) => m.url))}`);

          for (const m of ordered) {
            const ok = await sendExtracted(m.url, "DramaWorld");
            console.error(`[dramaworld] sendExtracted ${m.url} -> ${ok}`);
          }
        } catch (e) { console.error(`[dramaworld] EXCEPTION: ${e}`); }
      }),

      // ── Aether / Nebula (nebula.aether.cx) — TMDB-native، CDN مفتوح ────────
      // nebula.aether.cx/movie/{id} → {stream_url:"..."} مباشرة بدون proxy
      scrapeAnimCached("aether", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "Aether: جاري الاستخراج…" });
          const NEBULA_BASE = "https://nebula.aether.cx";
          const url = type === "movie"
            ? `${NEBULA_BASE}/movie/${tmdbId}?ser=tik`
            : `${NEBULA_BASE}/tv/${tmdbId}/${season}/${epNum}?ser=tik`;
          const r = await fetch(url, {
            headers: { Origin: "https://aether.cx", Referer: "https://aether.cx/" },
            signal: AbortSignal.timeout(10_000),
          });
          if (!r.ok) return;
          const data = await r.json() as { stream_url?: string; stream?: string };
          const stream = data?.stream_url || data?.stream;
          if (!stream) return;
          // unwrap مغلّف /m3u8-proxy?url= إذا كان الـ CDN مغلّف
          let rawStream = stream;
          if (stream.includes("/m3u8-proxy?url=")) {
            try {
              const pu = new URL(stream);
              rawStream = pu.searchParams.get("url") || stream;
            } catch { /* keep as-is */ }
          }
          const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(rawStream)}&ref=${encodeURIComponent("https://aether.cx/")}`;
          const probeOk = await probeHlsProxy(proxied);
          if (!probeOk) return;
          sendSource(proxied, "Aether · Nebula · HLS", proxied, proxied);
        } catch { /* silent */ }
      }),

      // ── Hexa (hexa.su / flixer.su) — TMDB-native HLS متعدد السيرفرات ──────────
      // CDN: nxt.cfw69.workers.dev — CORS * — يعمل من Replit مباشرة
      // cooldown: enc-dec.app/api/enc-hexa يعيد 500 مع "Next retry: N minutes"
      //           → نتجنب الـ hammering بحفظ _hexaFailUntil

      // ── CinePro (CP) — self-hosted microservice على VPS (port 3000) ──────────────
      // TMDB-native, ~14 provider (VixSrc/VidApi/Icefy/…), movie+TV
      // API: GET /v1/movies/{id}  أو  /v1/tv/{id}/seasons/{s}/episodes/{e}
      // Response: { sources: [{ id:{id,name}, quality, url }], subtitles: [] }
      // proxy URLs: /v1/proxy?data=<json-encoded-{url}> → يجب فك ترميزها
      scrapeAnimCached("cinepro", async () => {
        if (!tmdbId) return;
        try {
          const CP_BASE = "http://localhost:3000";
          const endpoint = type === "tv"
            ? `${CP_BASE}/v1/tv/${tmdbId}/seasons/${season}/episodes/${epNum}`
            : `${CP_BASE}/v1/movies/${tmdbId}`;
          const r = await fetch(endpoint, { signal: AbortSignal.timeout(40_000) });
          if (!r.ok) return;
          const cpData: any = await r.json().catch(() => null);
          if (!cpData?.sources?.length) return;

          for (const src of cpData.sources as any[]) {
            let rawUrl: string = src.url || "";
            if (!rawUrl) continue;

            // فك ترميز proxy URL الداخلية: /v1/proxy?data=<json>
            if (rawUrl.startsWith("/v1/proxy") || rawUrl.includes("/v1/proxy?")) {
              try {
                const proxyParams = new URL(rawUrl.startsWith("http") ? rawUrl : `http://x.com${rawUrl}`).searchParams;
                const dataStr = proxyParams.get("data");
                if (dataStr) {
                  const decoded = JSON.parse(decodeURIComponent(dataStr)) as { url?: string };
                  if (decoded?.url) rawUrl = decoded.url;
                }
              } catch { continue; }
            }
            if (!rawUrl.startsWith("http")) continue;

            const providerName = (typeof src.id === "object" ? src.id?.name : src.id) || "CP";
            const quality = src.quality || "720p";
            const label = `CinePro · ${providerName} · ${quality}`;

            // VidApi يستخدم مسارات غير تقليدية (/pl/ أو /playlist/) — يُعدّ HLS
            const isHls = rawUrl.includes(".m3u8") || /\/(pl|playlist)\//i.test(rawUrl);
            if (isHls) {
              const proxied = toHlsProxy(rawUrl, rawUrl);
              sendSource(rawUrl, label, rawUrl, proxied);
            } else {
              const proxied = `/api/anime/video-proxy?url=${encryptParam(rawUrl)}&ref=${encryptParam(rawUrl)}`;
              sendSource(rawUrl, label, rawUrl, proxied);
            }
          }
        } catch { /* silent */ }
      }),

      scrapeAnimCached("hexa", async () => {
        return; // DISABLED 2026-07-08: enc-dec.app/api/enc-hexa returns HTTP 500 consistently — broken on their end
        if (!tmdbId) return;
        if (Date.now() < _hexaFailUntil) return; // cooldown active — enc-dec.app مشغول
        try {
          send("status", { msg: "Hexa: جاري الاستخراج…" });
          const HEXA_UA  = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36";
          const HEXA_REF = "https://hexa.su/";
          // Generate random 32-byte hex key (included in decrypt request)
          const hexaKey  = randomBytes(32).toString("hex");
          const hexaHdrs: Record<string, string> = {
            "User-Agent"          : HEXA_UA,
            "Referer"             : HEXA_REF,
            "Accept"              : "text/plain",
            "X-Fingerprint-Lite"  : "e9136c41504646444",
            "X-Api-Key"           : hexaKey,
          };

          // Step 1: Get challenge token from enc-dec.app
          const encR = await fetch("https://enc-dec.app/api/enc-hexa", {
            headers: hexaHdrs,
            signal : AbortSignal.timeout(8_000),
          });
          // Parse body even on HTTP error (contains retry hint)
          const encData = await encR.json().catch(() => ({})) as {
            status?: number; result?: { token?: string }; hint?: string;
          };
          if (!encR.ok || encData.status !== 200 || !encData.result?.token) {
            // Apply cooldown: parse "Next retry: N minutes" hint
            const hint = encData.hint || "";
            const retryMin = parseInt(hint.match(/(\d+)\s*min/i)?.[1] || "20");
            _hexaFailUntil = Date.now() + retryMin * 60_000;
            return;
          }
          hexaHdrs["X-Cap-Token"] = encData.result.token;

          // Step 2: Fetch encrypted stream data from Hexa TMDB API
          const hexaUrl = type === "movie"
            ? `https://theemoviedb.hexa.su/api/tmdb/movie/${tmdbId}/images`
            : `https://theemoviedb.hexa.su/api/tmdb/tv/${tmdbId}/season/${season}/episode/${epNum}/images`;
          const dataR = await fetch(hexaUrl, {
            headers: hexaHdrs,
            signal : AbortSignal.timeout(12_000),
          });
          if (!dataR.ok) return;
          const encrypted = await dataR.text();
          if (!encrypted || encrypted.length < 20) return;

          // Step 3: Decrypt via enc-dec.app (requires key in body)
          const decR = await fetch("https://enc-dec.app/api/dec-hexa", {
            method : "POST",
            headers: { "Content-Type": "application/json" },
            body   : JSON.stringify({ text: encrypted, key: hexaKey }),
            signal : AbortSignal.timeout(10_000),
          });
          if (!decR.ok) return;
          const decData = await decR.json() as { status?: number; result?: { sources?: Array<{ server: string; url: string }> } };
          if (decData.status !== 200 || !decData.result?.sources?.length) return;

          // Step 4: Send each server's HLS stream through hls-proxy (handles relative segments)
          for (const src of decData.result.sources) {
            if (!src?.url || !src.url.includes(".m3u8")) continue;
            // CDN pjd.cfw69.workers.dev: CORS * + accessible from Replit
            // hls-proxy needed to resolve relative segment paths correctly
            const proxied = `/api/anime/hls-proxy?url=${encodeURIComponent(src.url)}&ref=${encodeURIComponent(HEXA_REF)}`;
            const probeOk = await probeHlsProxy(proxied);
            if (!probeOk) continue;
            sendSource(proxied, `Hexa · ${src.server}`, proxied, proxied);
          }
        } catch { /* silent */ }
      }),

      // ── vidsrc.cc — TMDB-native free API, روuted through cfProxy (VPS IP blocked directly) ─
      scrapeAnimCached("vidsrc_cc", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "VidSrc: جاري الاستخراج…" });
          const apiUrl = type === "tv"
            ? `https://vidsrc.cc/v2/embed/tv/${tmdbId}/${season}/${epNum}`
            : `https://vidsrc.cc/v2/embed/movie/${tmdbId}`;
          // VPS datacenter IPs blocked by vidsrc.cc → must route through CF proxy
          let html = "";
          try {
            html = await cfProxyGet(apiUrl);
          } catch {
            // cfProxy unavailable → skip (direct fetch times out from datacenter IP)
            return;
          }
          if (!html || html.length < 100) return;
          // Extract data-id for API call
          const dataId = html.match(/data-id=["']([^"']+)["']/)?.[1]
                      || html.match(/\/e\/([a-zA-Z0-9]{6,})/)?.[1];
          if (!dataId) return;
          // Fetch sources JSON — also via cfProxy since same IP restriction applies
          const srcUrl = `https://vidsrc.cc/v2/sources?id=${dataId}`;
          let srcData: { sources?: Array<{ url?: string; label?: string }> } = {};
          try {
            const srcHtml = await cfProxyGet(srcUrl);
            srcData = JSON.parse(srcHtml);
          } catch { return; }
          for (const src of (srcData.sources || [])) {
            if (!src?.url) continue;
            const isHls = src.url.includes(".m3u8");
            const proxied = isHls
              ? wrapHls(src.url, "https://vidsrc.cc/")
              : src.url;
            sendSource(proxied, `VidSrc · ${src.label || "HD"}`, src.url, proxied);
          }
        } catch { /* silent */ }
      }),

      // ── superembed.stream — TMDB-native iframe, routed through cfProxy ──────────
      // محتوى الصفحة محمّل عبر JavaScript — cfProxy يُنفّذه (مقارنةً بـ fetch المباشر)
      scrapeAnimCached("superembed", async () => {
        if (!tmdbId) return;
        try {
          send("status", { msg: "SuperEmbed: جاري الاستخراج…" });
          const apiUrl = type === "tv"
            ? `https://superembed.stream/embed/tv?tmdb=${tmdbId}&season=${season}&episode=${epNum}`
            : `https://superembed.stream/embed/movie?tmdb=${tmdbId}`;
          // cfProxy (curl_cffi) can handle JS-rendered pages better than raw fetch
          let html = "";
          try {
            html = await cfProxyGet(apiUrl);
          } catch {
            // Fall back to direct fetch
            const r = await fetch(apiUrl, {
              headers: { "User-Agent": UA, "Referer": "https://superembed.stream/" },
              signal: AbortSignal.timeout(12_000),
            });
            if (!r.ok) return;
            html = await r.text();
          }
          if (!html || html.length < 100) return;
          // Extract HLS URL from inline JS — multiple patterns for different SuperEmbed versions
          const hlsMatch = html.match(/source\s*[:=]\s*["']([^"']+\.m3u8[^"']*)/i)
                        || html.match(/file\s*:\s*["']([^"']+\.m3u8[^"']*)/i)
                        || html.match(/playlist\s*[:=]\s*["']([^"']+\.m3u8[^"']*)/i)
                        || html.match(/["'](https?:\/\/[^"']+\.m3u8[^"']*)/);
          if (!hlsMatch?.[1]) return;
          const hlsUrl = hlsMatch[1];
          const proxied = wrapHls(hlsUrl, "https://superembed.stream/");
          sendSource(proxied, "SuperEmbed · HLS", hlsUrl, proxied);
        } catch { /* silent */ }
      }),

      // ── CineSrc (cinesrc.st, TMDB-native, 15 providers, multi-quality HLS) ─────
      // يعمل كـ microservice على VPS (port 13004) — يُتخطّى إذا لم تكن CINESRC_BASE مُعيَّنة
      scrapeAnimCached("cinesrc", async () => {
        if (!tmdbId) return;
        const CINESRC_BASE = process.env.CINESRC_BASE;
        if (!CINESRC_BASE) return;
        try {
          send("status", { msg: "CineSrc: جاري الاستخراج…" });
          const CS_ORIGIN = "https://cinesrc.st";
          const catPath = type === "tv"
            ? `/api/catalog?id=${tmdbId}&type=tv&season=${season}&episode=${epNum}`
            : `/api/catalog?id=${tmdbId}&type=movie`;
          const catRes = await fetch(`${CINESRC_BASE}${catPath}`, {
            signal: AbortSignal.timeout(10_000),
          });
          if (!catRes.ok) return;
          const catalog: any = await catRes.json();
          const providers: Array<{ id: string; name: string }> = Array.isArray(catalog.providers) ? catalog.providers : [];
          if (!providers.length) return;

          const seenCS = new Set<string>();
          await Promise.allSettled(
            providers.slice(0, 8).map(async (p) => {
              try {
                const streamPath = type === "tv"
                  ? `/api/stream/provider?id=${tmdbId}&type=tv&season=${season}&episode=${epNum}&provider=${p.id}`
                  : `/api/stream/provider?id=${tmdbId}&type=movie&provider=${p.id}`;
                const r = await fetch(`${CINESRC_BASE}${streamPath}`, {
                  signal: AbortSignal.timeout(30_000),
                });
                if (!r.ok) return;
                const data: any = await r.json();
                if (!data.ok || !data.url || seenCS.has(data.url)) return;
                seenCS.add(data.url);
                const proxied = wrapHls(data.url, CS_ORIGIN + "/");
                sendSource(proxied, `CineSrc · ${p.name}`, data.url, proxied);
              } catch { /* silent per provider */ }
            }),
          );
        } catch { /* silent */ }
      }),

      // ── MovieBox — مُعاد تفعيله (Streamrip API) ──────────────────────────────
      scrapeAnimCached("moviebox_anim", async () => {
        if (!title) return;
        const auth = await getMbxAuthAnim();
        if (!auth) return;
        const { token, cookies } = auth;
        const hdrs: Record<string, string> = {
          "Accept": "application/json",
          "User-Agent": _MBX_UA_ANIM,
          "Referer": _MBX_REF_ANIM,
          "Authorization": `Bearer ${token}`,
          "Cookie": cookies,
        };
        try {
          const sr = await fetch(_MBX_SEARCH_ANIM, {
            method: "POST",
            headers: { ...hdrs, "Content-Type": "application/json" },
            body: JSON.stringify({ keyword: title, page: 1, perPage: 12, subjectType: 0 }),
            signal: AbortSignal.timeout(10_000),
          });
          if (!sr.ok) return;
          const sData: any = await sr.json();
          const items: any[] = sData?.data?.items || [];
          if (!items.length) return;

          // فلتر: استبعد المدبلج أولاً
          const nonDubbed = items.filter((it: any) => !_MBX_DUBBED_RE_ANIM.test(it.title || ""));
          const candidates = nonDubbed.length ? nonDubbed : items;
          const qLow = title.toLowerCase();
          candidates.sort((a: any, b: any) => {
            const aHit = (a.title || "").toLowerCase().includes(qLow) ? 1 : 0;
            const bHit = (b.title || "").toLowerCase().includes(qLow) ? 1 : 0;
            return bHit - aHit;
          });
          const item = candidates[0];
          if (!item?.subjectId || !item?.detailPath) return;

          // الموسم والحلقة: فيلم → se=0&ep=0، مسلسل → se=season&ep=epNum
          const se = type === "movie" ? 0 : season;
          const epP = type === "movie" ? 0 : epNum;
          const dr = await fetch(
            `${_MBX_DOWNLOAD_ANIM}?subjectId=${encodeURIComponent(item.subjectId)}&se=${se}&ep=${epP}&detailPath=${encodeURIComponent(item.detailPath)}`,
            { headers: hdrs, signal: AbortSignal.timeout(10_000) },
          );
          if (!dr.ok) return;
          const dData: any = await dr.json();
          const downloads: any[] = dData?.data?.downloads || [];
          if (!downloads.length) return;

          downloads.sort((a: any, b: any) => (b.resolution || 0) - (a.resolution || 0));
          for (const dl of downloads.slice(0, 3)) {
            const res = Number(dl.resolution) || 0;
            if (!dl.url || res <= 0) continue;
            const label = `MovieBox · ${res}p`;
            sendSource(String(dl.url), label, String(dl.url), undefined, { headers: { Referer: _MBX_REF_ANIM } });
          }
        } catch { /* silent */ }
      }),

      // ── Xyra (api.xyra.stream) — معطّل مؤقتاً: خادمهم يرجع 502 (Cloudflare) دائماً منذ 2026-07-09 ──
      // scrapeAnimCached("xyra", async () => {
      //   if (!tmdbId) return;
      //   try {
      //     send("status", { msg: "Xyra: جاري البحث…" });
      //     const xyraType = type === "movie" ? "movie" : "series";
      //     const url = `https://api.xyra.stream/v1/streamhub/streams?api_key=freekey&tmdb_id=${tmdbId}&type=${xyraType}&season=${season}&episode=${epNum}`;
      //     const r = await fetch(url, {
      //       headers: { "User-Agent": UA, "Accept": "application/json" },
      //       signal: AbortSignal.timeout(15_000),
      //     });
      //     if (!r.ok) { console.warn(`[Xyra/anim] HTTP ${r.status} tmdb:${tmdbId}`); return; }
      //     const data: any = await r.json();
      //     const streams: any[] = Array.isArray(data?.streams) ? data.streams : [];
      //     let sent = 0;
      //     for (const s of streams) {
      //       if (sent >= 5) break;
      //       let validUrl: URL;
      //       try { validUrl = new URL(s.url); } catch { continue; }
      //       if (validUrl.protocol !== "https:" && validUrl.protocol !== "http:") continue;
      //       const rawUrl  = s.url as string;
      //       const isHls   = rawUrl.includes(".m3u8");
      //       const hdrs    = s.headers && typeof s.headers === "object" ? s.headers as Record<string, string> : {};
      //       const referer = hdrs["Referer"] || hdrs["referer"] || "https://xyra.stream/";
      //       const label   = `Xyra · ${s.name || s.provider || "HD"} · ${s.quality || "HD"}`;
      //       const proxyUrl = isHls ? wrapHls(rawUrl, referer) : undefined;
      //       sendSource(rawUrl, label, rawUrl, proxyUrl);
      //       sent++;
      //     }
      //     console.log(`[Xyra/anim] tmdb:${tmdbId} → ${sent} streams`);
      //   } catch (e: any) {
      //     console.warn("[Xyra/anim]", e?.message);
      //   }
      // }),

      // ── Notorrent (Stremio addon) — IMDB via TMDB, بدون ترجمة مدمجة ───────────
      scrapeAnimCached("notorrent", async () => {
        if (!imdbId) return;
        try {
          send("status", { msg: "Notorrent: جاري البحث…" });
          const ntPath = type === "movie"
            ? `movie/${imdbId}.json`
            : `series/${imdbId}:${season}:${epNum}.json`;
          // onrender.com cold start: 15-30s — timeout extended accordingly
          const r = await fetch(`https://addon-osvh.onrender.com/stream/${ntPath}`, {
            headers: { "User-Agent": UA, "Accept": "application/json" },
            signal: AbortSignal.timeout(35_000),
          });
          if (!r.ok) { console.warn(`[Notorrent] HTTP ${r.status} imdb:${imdbId}`); return; }
          const data: any = await r.json();
          const streamList: any[] = Array.isArray(data?.streams) ? data.streams : [];
          let sent = 0;
          for (const s of streamList) {
            if (sent >= 4) break;
            // Strict URL validation
            let validUrl: URL;
            try { validUrl = new URL(s.url); } catch { continue; }
            if (validUrl.protocol !== "https:" && validUrl.protocol !== "http:") continue;
            const rawUrl = s.url as string;
            const isHls  = rawUrl.includes(".m3u8");
            const label  = `Notorrent · ${s.title || s.name || "HD"}`;
            const proxyUrl = isHls ? wrapHls(rawUrl, "https://addon-osvh.onrender.com/") : undefined;
            sendSource(rawUrl, label, rawUrl, proxyUrl);
            sent++;
          }
          console.log(`[Notorrent] imdb:${imdbId} → ${sent} streams`);
        } catch (e: any) {
          console.warn("[Notorrent]", e?.message);
        }
      }),

      // ── Akwam (akwam.it) — روابط تحميل مباشرة (downet.net), مصدر احتياطي بأولوية منخفضة ──
      // ملاحظة: akwam.to أصبح صفحة بيع نطاق؛ النطاق الفعلي الحالي هو akwam.it (301 عبر ak.sv)
      scrapeAnimCached("akwam", async () => {
        const q = enTitlePrefetched || title;
        if (!q || type !== "movie") return;
        try {
          send("status", { msg: "Akwam: جاري البحث…" });
          const AK_BASE = "https://akwam.it";
          const sr = await fetch(`${AK_BASE}/search?q=${encodeURIComponent(q)}`, {
            headers: { "User-Agent": UA },
            signal: AbortSignal.timeout(12_000),
          });
          if (!sr.ok) return;
          const searchHtml = await sr.text();
          const linkRe = /href="(https:\/\/akwam\.it\/movie\/\d+\/[^"]+)"/g;
          const candidates: string[] = [];
          let lm: RegExpExecArray | null;
          while ((lm = linkRe.exec(searchHtml)) && candidates.length < 5) candidates.push(lm[1]);
          if (!candidates.length) return;
          const movieUrl = candidates[0];

          const mr = await fetch(movieUrl, { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(12_000) });
          if (!mr.ok) return;
          const movieHtml = await mr.text();
          const dlMatch = movieHtml.match(/href="(https:\/\/akwam\.it\/download\/\d+\/\d+\/[^"]+)"/);
          if (!dlMatch) return;

          const dr = await fetch(dlMatch[1], { headers: { "User-Agent": UA }, signal: AbortSignal.timeout(12_000) });
          if (!dr.ok) return;
          const dlHtml = await dr.text();
          const mp4Re = /href="(https:\/\/[a-z0-9.]*downet\.net\/download\/[^"]+\.mp4)"/gi;
          let mm: RegExpExecArray | null;
          let sent = 0;
          while ((mm = mp4Re.exec(dlHtml)) && sent < 3) {
            const u = mm[1];
            sendSource(u, `Akwam · MP4`, u, u);
            sent++;
          }
          console.log(`[Akwam] "${q}" → ${sent} streams`);
        } catch (e: any) {
          console.warn("[Akwam]", e?.message);
        }
      }),

      // xpass_anim: محذوف بطلب المستخدم 2026-07-15 — CDN (ps1/vip.1x2.space) يحجب VPS/CF IPs

      // ── VaPlayer (streamdata.vaplayer.ru) — TMDB-native, direct HLS ────────────
      // TV:    /api.php?tmdb={id}&type=tv&season={s}&episode={e}
      // Movie: /api.php?tmdb={id}&type=movie
      // Returns: { status_code: "200", data: { stream_urls: ["https://...master.m3u8"] } }
      scrapeAnimCached("vaplayer_anim", async () => {
        if (!tmdbId) return;
        try {
          const VABASE = "https://streamdata.vaplayer.ru";
          const p = new URLSearchParams({ tmdb: String(tmdbId), type });
          if (type !== "movie") { p.set("season", String(season)); p.set("episode", String(epNum)); }
          const apiR = await fetch(`${VABASE}/api.php?${p}`, {
            headers: { "User-Agent": UA, "Referer": "https://nextgencloudfabric.com/" },
            signal: AbortSignal.timeout(14_000),
          });
          if (!apiR.ok) { console.warn(`[VaPlayer-anim] API ${apiR.status}`); return; }
          const apiData: any = await apiR.json();
          if (apiData?.status_code !== "200") { console.warn("[VaPlayer-anim] status", apiData?.status_code); return; }
          const urls: string[] = apiData?.data?.stream_urls ?? [];
          let sent = 0;
          for (const fileUrl of urls.slice(0, 3)) {
            if (!fileUrl || !fileUrl.startsWith("http")) continue;
            const isHls = fileUrl.includes(".m3u8");
            const proxyUrl = isHls ? wrapHls(fileUrl, "https://nextgencloudfabric.com/") : fileUrl;
            sendSource(fileUrl, "VaPlayer · FHD", fileUrl, proxyUrl, { corsOk: true });
            sent++;
            if (sent >= 2) break;
          }
          console.log(`[VaPlayer-anim] tmdb:${tmdbId} ${type} → ${sent} sources`);
        } catch (e: any) {
          console.warn("[VaPlayer-anim]", e?.message);
        }
      }),

      // -- vixsrc.to -- TMDB-native movie+TV, direct HLS
      scrapeAnimCached("vixsrc_anim", async () => {
        if (!tmdbId) return;
        try {
          const VBASE = "https://vixsrc.to";
          const apiPath = type === "movie"
            ? `/api/movie/${tmdbId}`
            : `/api/tv/${tmdbId}/${season}/${epNum}`;
          const apiR = await fetch(VBASE + apiPath, {
            headers: { "User-Agent": UA, "Referer": VBASE + "/" },
            signal: AbortSignal.timeout(12_000),
          });
          if (!apiR.ok) { console.error(`[vixsrc_anim] API ${apiR.status}`); return; }
          const apiData: any = await apiR.json();
          if (!apiData?.src) { console.error("[vixsrc_anim] no src"); return; }
          const embedUrl = VBASE + (apiData.src as string);
          const embedR = await fetch(embedUrl, {
            headers: { "User-Agent": UA, "Referer": VBASE + "/" },
            signal: AbortSignal.timeout(12_000),
          });
          if (!embedR.ok) { console.error(`[vixsrc_anim] embed ${embedR.status}`); return; }
          const html = await embedR.text();
          const urlM    = html.match(/masterPlaylist[\s\S]*?url:\s*'([^']+)'/);
          const tokenM  = html.match(/'token':\s*'([^']+)'/);
          const expireM = html.match(/'expires':\s*'([^']+)'/);
          if (!urlM || !tokenM || !expireM) { console.error("[vixsrc_anim] parse failed"); return; }
          const playlistUrl = `${urlM[1]}&token=${tokenM[1]}&expires=${expireM[1]}&h=1&lang=en`;
          const m3u8R = await fetch(playlistUrl, {
            headers: { "User-Agent": UA, "Referer": embedUrl, "Origin": VBASE },
            signal: AbortSignal.timeout(12_000),
          });
          if (!m3u8R.ok) { console.error(`[vixsrc_anim] playlist ${m3u8R.status}`); return; }
          const m3u8 = await m3u8R.text();
          if (!m3u8.startsWith("#EXTM3U")) { console.error("[vixsrc_anim] bad m3u8"); return; }
          const proxied = wrapHls(playlistUrl, embedUrl);
          sendSource(playlistUrl, "VixSrc · HLS", playlistUrl, proxied);
          console.log(`[vixsrc_anim] tmdb:${tmdbId} ${type} -> ok`);
        } catch (e: any) { console.warn("[vixsrc_anim]", e?.message); }
      }),

      // -- primesrc.me -- 85k movies+TV via Filemoon/Streamwish/Filelions
      scrapeAnimCached("primesrc_anim", async () => {
        try {
          const PBASE = "https://primesrc.me";
          const apiUrl = type === "movie"
            ? (imdbId ? `${PBASE}/api/v1/s?type=movie&imdb=${imdbId}` : null)
            : (tmdbId ? `${PBASE}/api/v1/s?type=tv&tmdb=${tmdbId}&season=${season}&episode=${epNum}` : null);
          if (!apiUrl) return;
          const apiR = await fetch(apiUrl, {
            headers: { "User-Agent": UA, "Referer": PBASE + "/" },
            signal: AbortSignal.timeout(12_000),
          });
          if (!apiR.ok) { console.error(`[primesrc_anim] API ${apiR.status}`); return; }
          const data: any = await apiR.json();
          const servers: any[] = data?.servers ?? [];
          if (!servers.length) { console.log("[primesrc_anim] no servers"); return; }
          const EMBED_MAP: Record<string, string> = {
            Filemoon:   "https://filemoon.sx/e/KEY",
            Filelions:  "https://filelions.to/e/KEY",
            Streamwish: "https://streamwish.to/e/KEY",
            Streamplay: "https://streamplay.to/e/KEY",
            Vidmoly:    "https://vidmoly.to/embed-KEY.html",
            Luluvdoo:   "https://luluvdo.com/e/KEY",
          };
          let sent = 0;
          const seenKeys = new Set<string>();
          const picks = servers
            .filter((s: any) => EMBED_MAP[s.name] && s.key && !seenKeys.has(s.key) && !!seenKeys.add(s.key))
            .slice(0, 6);
          await Promise.allSettled(picks.map(async (srv: any) => {
            const embedUrl = EMBED_MAP[srv.name].replace("KEY", srv.key);
            try {
              const html = await cfGet(embedUrl, PBASE + "/");
              const m = html.match(/"file"\s*:\s*"(https?:\/\/[^"]+\.m3u8[^"]*)"/) || html.match(/"file":\s*"(https?:\/\/[^"]+\.mp4[^"]*)"/);
              if (!m?.[1]) return;
              const hls = m[1];
              sendSource(hls, `PrimeSrc · ${srv.name}`, hls, wrapHls(hls, embedUrl));
              sent++;
            } catch { /* skip */ }
          }));
          console.log(`[primesrc_anim] ${type} -> ${sent} sources`);
        } catch (e: any) { console.warn("[primesrc_anim]", e?.message); }
      }),

    ]);

    clearTimeout(forceClose);
    if (!streamDone && !res.writableEnded) {
      streamDone = true;
      send("done", {}); clearInterval(keepAlive); res.end();
    }
  } catch (e) {
    clearTimeout(forceClose);
    if (!res.writableEnded) {
      send("error", { msg: String(e) });
      send("done",  {}); clearInterval(keepAlive); res.end();
    }
  }
});

export default router;
