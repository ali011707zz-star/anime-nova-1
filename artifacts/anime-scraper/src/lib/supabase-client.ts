// Supabase has been replaced with API-based auth via /api/auth/* endpoints.
// This file is kept as a stub to avoid import errors in any remaining references.

export const supabase = {
  auth: {
    getSession: async () => ({ data: { session: null } }),
    getUser: async () => ({ data: { user: null } }),
    onAuthStateChange: (_event: any, _cb: any) => ({ data: { subscription: { unsubscribe: () => {} } } }),
    signInWithPassword: async () => ({ error: new Error("Use /api/auth/email-signin instead") }),
    signUp: async () => ({ error: new Error("Use /api/auth/email-signup instead") }),
    signOut: async () => ({}),
    updateUser: async () => ({ data: { user: null }, error: null }),
    resend: async () => ({}),
  },
};
