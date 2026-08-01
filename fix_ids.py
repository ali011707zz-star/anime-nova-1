import time
import psycopg2
import requests

# رابط الاتصال بقاعدة البيانات في Supabase
DB_URI = "postgresql://postgres:a0117078153%40%40@db.lylapkfnizpjoyutnlin.supabase.co:5432/postgres"
ANILIST_URL = "https://graphql.anilist.co"

QUERY = """
query ($search: String) {
  Media (search: $search, type: ANIME) {
    id
  }
}
"""

def get_anilist_id(anime_name):
    # تنظيف اسم الأنمي من علامات الاقتباس
    clean_name = anime_name.strip('"' "'")
    try:
        response = requests.post(
            ANILIST_URL, 
            json={'query': QUERY, 'variables': {'search': clean_name}}, 
            timeout=10
        )
        if response.status_code == 200:
            data = response.json()
            media = data.get('data', {}).get('Media')
            if media:
                return media.get('id')
        elif response.status_code == 429: # في حال تجاوز حد الطلبات
            print("⚠️ انتظار 30 ثانية لتجنب حظر الـ API...")
            time.sleep(30)
            return get_anilist_id(anime_name)
    except Exception:
        pass
    return None

def main():
    print("🔌 الاتصال بقاعدة البيانات...")
    conn = psycopg2.connect(DB_URI)
    cursor = conn.cursor()

    cursor.execute("SELECT DISTINCT anime_name FROM aw_links WHERE anilist_id IS NULL;")
    rows = cursor.fetchall()
    total = len(rows)
    print(f"📊 تم العثور على {total} أنمي بدون ID. بدء المعالجة الأوتوماتيكية...\n")

    for i, (anime_name,) in enumerate(rows, 1):
        anilist_id = get_anilist_id(anime_name)
        if anilist_id:
            cursor.execute(
                "UPDATE aw_links SET anilist_id = %s WHERE anime_name = %s AND anilist_id IS NULL;",
                (anilist_id, anime_name)
            )
            conn.commit()
            print(f"[{i}/{total}] ✅ {anime_name} ⬅️ ID: {anilist_id}")
        else:
            print(f"[{i}/{total}] ❌ لم يتم العثور على ID لـ: {anime_name}")
        
        # فاصل زمني بسيط لاحترام حدود API موقع AniList
        time.sleep(0.7)

    cursor.close()
    conn.close()
    print("\n🎉 تم تحديث جميع الأنميات بنجاح!")

if __name__ == "__main__":
    main()

