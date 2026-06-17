/**
 * Resilience utilities for robust API calls
 * Handles retries, fallbacks, and timeout scenarios
 */

export interface RetryConfig {
  maxAttempts: number;
  initialDelayMs: number;
  maxDelayMs: number;
  backoffMultiplier: number;
}

const DEFAULT_RETRY_CONFIG: RetryConfig = {
  maxAttempts: 3,
  initialDelayMs: 500,
  maxDelayMs: 5000,
  backoffMultiplier: 2,
};

/**
 * Execute async function with exponential backoff retry logic
 */
export async function withRetry<T>(
  fn: () => Promise<T>,
  config: Partial<RetryConfig> = {}
): Promise<T> {
  const finalConfig = { ...DEFAULT_RETRY_CONFIG, ...config };
  let lastError: Error | null = null;
  let delay = finalConfig.initialDelayMs;

  for (let attempt = 1; attempt <= finalConfig.maxAttempts; attempt++) {
    try {
      console.log(`[retry] Attempt ${attempt}/${finalConfig.maxAttempts}`);
      return await fn();
    } catch (error) {
      lastError = error as Error;
      console.warn(`[retry] Attempt ${attempt} failed: ${lastError.message}`);

      if (attempt < finalConfig.maxAttempts) {
        await sleep(delay);
        delay = Math.min(delay * finalConfig.backoffMultiplier, finalConfig.maxDelayMs);
      }
    }
  }

  throw lastError || new Error('Max retry attempts exceeded');
}

/**
 * Try multiple async functions sequentially until one succeeds (fallback pattern)
 */
export async function withFallback<T>(
  fns: Array<() => Promise<T>>,
  errorLabel: string = 'fallback'
): Promise<T> {
  const errors: Array<{ fn: number; error: Error }> = [];

  for (let i = 0; i < fns.length; i++) {
    try {
      console.log(`[fallback] Trying option ${i + 1}/${fns.length}`);
      return await fns[i]();
    } catch (error) {
      errors.push({ fn: i + 1, error: error as Error });
      console.warn(`[fallback] Option ${i + 1} failed: ${(error as Error).message}`);
    }
  }

  const errorMsg = errors.map((e) => `[${e.fn}] ${e.error.message}`).join('; ');
  throw new Error(`All ${errorLabel} attempts failed: ${errorMsg}`);
}

/**
 * Execute function with timeout
 */
export async function withTimeout<T>(
  fn: () => Promise<T>,
  timeoutMs: number
): Promise<T> {
  return Promise.race([
    fn(),
    new Promise<T>((_, reject) =>
      setTimeout(() => reject(new Error(`Operation timeout after ${timeoutMs}ms`)), timeoutMs)
    ),
  ]);
}

/**
 * Combine retry + fallback + timeout for maximum resilience
 */
export async function withFullResilience<T>(
  fns: Array<() => Promise<T>>,
  options: {
    retryConfig?: Partial<RetryConfig>;
    timeout?: number;
    label?: string;
  } = {}
): Promise<T> {
  const { retryConfig, timeout = 30000, label = 'operation' } = options;

  const withTimeoutFns = fns.map((fn) => () =>
    timeout ? withTimeout(fn, timeout) : fn()
  );

  const withRetryFns = withTimeoutFns.map((fn) => () => withRetry(fn, retryConfig));

  return withFallback(withRetryFns, label);
}

/**
 * Sleep utility for delays
 */
function sleep(ms: number): Promise<void> {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

/**
 * Circuit breaker pattern for avoiding cascading failures
 */
export class CircuitBreaker {
  private failureCount: number = 0;
  private lastFailureTime: number = 0;
  private state: 'closed' | 'open' | 'half-open' = 'closed';

  constructor(
    private failureThreshold: number = 5,
    private resetTimeoutMs: number = 60000
  ) {}

  async execute<T>(fn: () => Promise<T>): Promise<T> {
    if (this.state === 'open') {
      if (Date.now() - this.lastFailureTime > this.resetTimeoutMs) {
        console.log('[breaker] Attempting recovery (half-open)');
        this.state = 'half-open';
      } else {
        throw new Error('Circuit breaker is OPEN - service unavailable');
      }
    }

    try {
      const result = await fn();

      if (this.state === 'half-open') {
        console.log('[breaker] Recovery successful (closed)');
        this.state = 'closed';
        this.failureCount = 0;
      }

      return result;
    } catch (error) {
      this.failureCount++;
      this.lastFailureTime = Date.now();

      if (this.failureCount >= this.failureThreshold) {
        console.error('[breaker] Threshold exceeded, opening circuit');
        this.state = 'open';
      }

      throw error;
    }
  }

  reset(): void {
    this.state = 'closed';
    this.failureCount = 0;
    console.log('[breaker] Circuit reset');
  }

  getState(): string {
    return `[breaker] State: ${this.state}, Failures: ${this.failureCount}`;
  }
}
