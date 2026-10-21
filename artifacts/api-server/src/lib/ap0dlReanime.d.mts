export type Ap0dlFlixInfo = {
  master_url?: string;
  w_payload?: string;
  referer?: string;
  xor_mask?: number[];
};

export type Ap0dlReanimeStream = {
  url?: string;
  quality?: number | null;
  title?: string | null;
  audio?: "sub" | "dub" | "raw" | "both" | string;
  server?: string | null;
  kind?: "hls" | "direct" | "dash" | string;
  flix?: Ap0dlFlixInfo | null;
};

export type Ap0dlGrabResult = {
  anime?: string;
  provider: string;
  episode: number;
  title?: string | null;
  streams: Ap0dlReanimeStream[];
};

export function buildAp0dlGrabArgs(watchUrl: string, episodeNumber: number): string[];
export function parseAp0dlGrabOutput(stdout: string, episodeNumber: number): Ap0dlGrabResult | null;
export function runAp0dlGrab(options: {
  watchUrl: string;
  episodeNumber: number;
  timeoutMs?: number;
  binary?: string;
}): Promise<Ap0dlGrabResult>;
