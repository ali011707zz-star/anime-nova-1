package ja;

import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: FieldNamingPolicy.java */
/* loaded from: classes.dex */
public abstract class d implements ja.e {

    /* renamed from: f, reason: collision with root package name */
    public static final d f9090f;

    /* renamed from: g, reason: collision with root package name */
    public static final d f9091g;

    /* renamed from: h, reason: collision with root package name */
    public static final d f9092h;

    /* renamed from: i, reason: collision with root package name */
    public static final d f9093i;

    /* renamed from: j, reason: collision with root package name */
    public static final d f9094j;

    /* renamed from: k, reason: collision with root package name */
    public static final d f9095k;

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ d[] f9096l;

    /* compiled from: FieldNamingPolicy.java */
    /* loaded from: classes.dex */
    public static final class a extends d {
        public a(String str, int i10) {
            super(str, i10, null);
        }

        @Override // ja.e
        public String a(Field field) {
            return field.getName();
        }
    }

    static {
        a aVar = new a("IDENTITY", 0);
        f9090f = aVar;
        d dVar = new d("UPPER_CAMEL_CASE", 1) { // from class: ja.d.b
            {
                a aVar2 = null;
            }

            @Override // ja.e
            public String a(Field field) {
                return d.c(field.getName());
            }
        };
        f9091g = dVar;
        d dVar2 = new d("UPPER_CAMEL_CASE_WITH_SPACES", 2) { // from class: ja.d.c
            {
                a aVar2 = null;
            }

            @Override // ja.e
            public String a(Field field) {
                return d.c(d.b(field.getName(), " "));
            }
        };
        f9092h = dVar2;
        d dVar3 = new d("LOWER_CASE_WITH_UNDERSCORES", 3) { // from class: ja.d.d
            {
                a aVar2 = null;
            }

            @Override // ja.e
            public String a(Field field) {
                return d.b(field.getName(), EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR).toLowerCase(Locale.ENGLISH);
            }
        };
        f9093i = dVar3;
        d dVar4 = new d("LOWER_CASE_WITH_DASHES", 4) { // from class: ja.d.e
            {
                a aVar2 = null;
            }

            @Override // ja.e
            public String a(Field field) {
                return d.b(field.getName(), "-").toLowerCase(Locale.ENGLISH);
            }
        };
        f9094j = dVar4;
        d dVar5 = new d("LOWER_CASE_WITH_DOTS", 5) { // from class: ja.d.f
            {
                a aVar2 = null;
            }

            @Override // ja.e
            public String a(Field field) {
                return d.b(field.getName(), ".").toLowerCase(Locale.ENGLISH);
            }
        };
        f9095k = dVar5;
        f9096l = new d[]{aVar, dVar, dVar2, dVar3, dVar4, dVar5};
    }

    public d(String str, int i10) {
    }

    public static String b(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (Character.isUpperCase(charAt) && sb2.length() != 0) {
                sb2.append(str2);
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    public static String c(String str) {
        int length = str.length() - 1;
        int i10 = 0;
        while (!Character.isLetter(str.charAt(i10)) && i10 < length) {
            i10++;
        }
        char charAt = str.charAt(i10);
        if (Character.isUpperCase(charAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(charAt);
        if (i10 == 0) {
            return upperCase + str.substring(1);
        }
        return str.substring(0, i10) + upperCase + str.substring(i10 + 1);
    }

    public static d valueOf(String str) {
        for (d value : f9096l) {
            if (value.name().equals(str)) {
                return value;
            }
        }
        throw new IllegalArgumentException("No enum constant ja.d." + str);
    }

    public static d[] values() {
        return (d[]) f9096l.clone();
    }

    public /* synthetic */ d(String str, int i10, a aVar) {
        this(str, i10);
    }

    private final String name() {
        return new String[]{"IDENTITY", "UPPER_CAMEL_CASE", "UPPER_CAMEL_CASE_WITH_SPACES",
                "LOWER_CASE_WITH_UNDERSCORES", "LOWER_CASE_WITH_DASHES",
                "LOWER_CASE_WITH_DOTS"}[java.util.Arrays.asList(f9096l).indexOf(this)];
    }
}
