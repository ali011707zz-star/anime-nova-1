// Supabase admin client — stub. All auth is handled via Replit Auth + email sessions.
// This file is kept so any remaining import references compile without errors.

export const supabaseAdmin = {
  auth: {
    getUser: async (_token: string) => ({ data: { user: null }, error: new Error("Supabase not configured") }),
    admin: {
      deleteUser: async (_id: string) => ({ error: new Error("Supabase not configured") }),
    },
  },
};
