package y3;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import wb.h;

/* compiled from: OrderType.kt */
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes.dex */
public @interface a {

    /* renamed from: a, reason: collision with root package name */
    public static final C0428a f16424a = C0428a.f16425a;

    /* compiled from: OrderType.kt */
    /* renamed from: y3.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0428a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ C0428a f16425a = new C0428a();

        /* renamed from: b, reason: collision with root package name */
        public static final String[] f16426b = {"latest_first", "earliest_first", "anime_name_asc", "anime_year_asc", "anime_year_desc"};

        /* renamed from: c, reason: collision with root package name */
        public static final String[] f16427c = {"latest_first", "anime_name_asc", "anime_year_asc", "anime_year_desc", "anime_rating_desc"};

        /* renamed from: d, reason: collision with root package name */
        public static final String[] f16428d = (String[]) h.k(new String[]{"latest_first", "earliest_first"}, "top_comments");

        /* renamed from: e, reason: collision with root package name */
        public static final String[] f16429e = (String[]) h.k(new String[]{"latest_first", "earliest_first"}, "top_comment_replies");

        public final String[] a() {
            return f16426b;
        }

        public final String[] b() {
            return f16428d;
        }

        public final String[] c() {
            return f16429e;
        }

        public final String[] d() {
            return f16427c;
        }
    }
}
