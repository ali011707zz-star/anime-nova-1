import { sbSelect, sbUpsert } from "../lib/supabaseClient.js";

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
    const rows = await sbSelect("users", { id: `eq.${id}` }, { limit: 1 });
    return rows[0] as User | undefined;
  }

  async getUserByEmail(email: string): Promise<User | undefined> {
    const rows = await sbSelect("users", { email: `eq.${email}` }, { limit: 1 });
    return rows[0] as User | undefined;
  }

  async upsertUser(userData: UpsertUser): Promise<User> {
    const payload = { ...userData, updated_at: new Date().toISOString() };
    const row = await sbUpsert("users", payload, "id");
    return row as User;
  }
}

export const authStorage = new AuthStorage();
