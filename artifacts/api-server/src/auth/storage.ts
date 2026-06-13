import { sbGet, sbUpsert } from "../lib/sb.js";

export interface User {
  id: string;
  email?: string | null;
  first_name?: string | null;
  last_name?: string | null;
  profile_image_url?: string | null;
  password_hash?: string | null;
  username?: string | null;
  display_name?: string | null;
  profile_image_custom?: string | null;
  avatar_color?: number | null;
  email_verified?: boolean | null;
  verification_code?: string | null;
  verification_expires?: string | null;
  created_at?: string | null;
  updated_at?: string | null;
}

export type UpsertUser = Partial<User> & { id?: string };

export interface IAuthStorage {
  getUser(id: string): Promise<User | undefined>;
  getUserByEmail(email: string): Promise<User | undefined>;
  upsertUser(user: UpsertUser): Promise<User>;
}

class AuthStorage implements IAuthStorage {
  async getUser(id: string): Promise<User | undefined> {
    const rows = await sbGet<User>("users", { "id": `eq.${id}` });
    return rows[0];
  }

  async getUserByEmail(email: string): Promise<User | undefined> {
    const rows = await sbGet<User>("users", { "email": `eq.${email}` });
    return rows[0];
  }

  async upsertUser(userData: UpsertUser): Promise<User> {
    const payload = { ...userData, updated_at: new Date().toISOString() };
    if (!payload.id) {
      // New user — let Supabase gen UUID
      delete payload.id;
    }
    const rows = await sbUpsert<User>("users", payload);
    return rows[0]!;
  }
}

export const authStorage = new AuthStorage();
