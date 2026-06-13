import { db } from "../lib/db.js";
import { users } from "@workspace/db";
import { eq } from "drizzle-orm";

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
    const rows = await db.select().from(users).where(eq(users.id, id)).limit(1);
    return rows[0] as any;
  }

  async getUserByEmail(email: string): Promise<User | undefined> {
    const rows = await db.select().from(users).where(eq(users.email, email)).limit(1);
    return rows[0] as any;
  }

  async upsertUser(userData: UpsertUser): Promise<User> {
    const now = new Date();
    const payload: any = { ...userData, updatedAt: now };
    if (!payload.id) {
      delete payload.id;
      const rows = await db.insert(users).values(payload).returning();
      return rows[0] as any;
    }
    const rows = await db
      .insert(users)
      .values(payload)
      .onConflictDoUpdate({ target: users.id, set: { ...payload } })
      .returning();
    return rows[0] as any;
  }
}

export const authStorage = new AuthStorage();
