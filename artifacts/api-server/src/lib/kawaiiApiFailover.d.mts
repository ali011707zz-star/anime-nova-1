export interface KawaiiApiEndpoint {
  base: string;
  url: string;
  fallbackUrl?: string;
}

export interface KawaiiApiAttempt {
  base: string;
  endpoint?: "primary" | "compat";
  outcome:
    | "accepted"
    | "invalid_payload"
    | "invalid_json"
    | "http_error"
    | "timeout"
    | "budget_timeout"
    | "network_error"
    | "aborted"
    | "cooldown_skip";
  status: number;
  elapsedMs: number;
}

export interface KawaiiApiResolverOptions {
  fetchImpl?: typeof fetch;
  cooldownMs?: number;
  now?: () => number;
}

export interface KawaiiApiResolveOptions<T> {
  endpoints: readonly KawaiiApiEndpoint[];
  headers?: Record<string, string>;
  parentSignal?: AbortSignal;
  timeoutMs?: number;
  budgetMs?: number;
  maxRequests?: number;
  validate?: (payload: unknown, base: string) => T | null;
  onAttempt?: (event: KawaiiApiAttempt) => void;
}

export function createKawaiiApiResolver(options?: KawaiiApiResolverOptions): {
  resolve<T>(options: KawaiiApiResolveOptions<T>): Promise<{ base: string; value: T } | null>;
  clearCooldowns(): void;
};
