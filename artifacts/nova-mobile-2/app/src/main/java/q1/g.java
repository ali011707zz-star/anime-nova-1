package q1;

import android.database.Cursor;
import android.os.Build;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import o1.t;

/* compiled from: TableInfo.java */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final String f12418a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<String, a> f12419b;

    /* renamed from: c, reason: collision with root package name */
    public final Set<b> f12420c;

    /* renamed from: d, reason: collision with root package name */
    public final Set<d> f12421d;

    /* compiled from: TableInfo.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String f12422a;

        /* renamed from: b, reason: collision with root package name */
        public final String f12423b;

        /* renamed from: c, reason: collision with root package name */
        public final int f12424c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f12425d;

        /* renamed from: e, reason: collision with root package name */
        public final int f12426e;

        /* renamed from: f, reason: collision with root package name */
        public final String f12427f;

        /* renamed from: g, reason: collision with root package name */
        public final int f12428g;

        public a(String str, String str2, boolean z10, int i10, String str3, int i11) {
            this.f12422a = str;
            this.f12423b = str2;
            this.f12425d = z10;
            this.f12426e = i10;
            this.f12424c = c(str2);
            this.f12427f = str3;
            this.f12428g = i11;
        }

        public static boolean a(String str) {
            if (str.length() == 0) {
                return false;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < str.length(); i11++) {
                char charAt = str.charAt(i11);
                if (i11 == 0 && charAt != '(') {
                    return false;
                }
                if (charAt == '(') {
                    i10++;
                } else if (charAt == ')' && i10 - 1 == 0 && i11 != str.length() - 1) {
                    return false;
                }
            }
            return i10 == 0;
        }

        public static boolean b(String str, String str2) {
            if (str2 == null) {
                return false;
            }
            if (str.equals(str2)) {
                return true;
            }
            if (a(str)) {
                return str.substring(1, str.length() - 1).trim().equals(str2);
            }
            return false;
        }

        public static int c(String str) {
            if (str == null) {
                return 5;
            }
            String upperCase = str.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                return 3;
            }
            if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                return 2;
            }
            if (upperCase.contains("BLOB")) {
                return 5;
            }
            return (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
        }

        public boolean d() {
            return this.f12426e > 0;
        }

        public boolean equals(Object obj) {
            String str;
            String str2;
            String str3;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (Build.VERSION.SDK_INT >= 20) {
                if (this.f12426e != aVar.f12426e) {
                    return false;
                }
            } else if (d() != aVar.d()) {
                return false;
            }
            if (!this.f12422a.equals(aVar.f12422a) || this.f12425d != aVar.f12425d) {
                return false;
            }
            if (this.f12428g == 1 && aVar.f12428g == 2 && (str3 = this.f12427f) != null && !b(str3, aVar.f12427f)) {
                return false;
            }
            if (this.f12428g == 2 && aVar.f12428g == 1 && (str2 = aVar.f12427f) != null && !b(str2, this.f12427f)) {
                return false;
            }
            int i10 = this.f12428g;
            return (i10 == 0 || i10 != aVar.f12428g || ((str = this.f12427f) == null ? aVar.f12427f == null : b(str, aVar.f12427f))) && this.f12424c == aVar.f12424c;
        }

        public int hashCode() {
            return (((((this.f12422a.hashCode() * 31) + this.f12424c) * 31) + (this.f12425d ? 1231 : 1237)) * 31) + this.f12426e;
        }

        public String toString() {
            return "Column{name='" + this.f12422a + "', type='" + this.f12423b + "', affinity='" + this.f12424c + "', notNull=" + this.f12425d + ", primaryKeyPosition=" + this.f12426e + ", defaultValue='" + this.f12427f + "'}";
        }
    }

    /* compiled from: TableInfo.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final String f12429a;

        /* renamed from: b, reason: collision with root package name */
        public final String f12430b;

        /* renamed from: c, reason: collision with root package name */
        public final String f12431c;

        /* renamed from: d, reason: collision with root package name */
        public final List<String> f12432d;

        /* renamed from: e, reason: collision with root package name */
        public final List<String> f12433e;

        public b(String str, String str2, String str3, List<String> list, List<String> list2) {
            this.f12429a = str;
            this.f12430b = str2;
            this.f12431c = str3;
            this.f12432d = Collections.unmodifiableList(list);
            this.f12433e = Collections.unmodifiableList(list2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f12429a.equals(bVar.f12429a) && this.f12430b.equals(bVar.f12430b) && this.f12431c.equals(bVar.f12431c) && this.f12432d.equals(bVar.f12432d)) {
                return this.f12433e.equals(bVar.f12433e);
            }
            return false;
        }

        public int hashCode() {
            return (((((((this.f12429a.hashCode() * 31) + this.f12430b.hashCode()) * 31) + this.f12431c.hashCode()) * 31) + this.f12432d.hashCode()) * 31) + this.f12433e.hashCode();
        }

        public String toString() {
            return "ForeignKey{referenceTable='" + this.f12429a + "', onDelete='" + this.f12430b + "', onUpdate='" + this.f12431c + "', columnNames=" + this.f12432d + ", referenceColumnNames=" + this.f12433e + '}';
        }
    }

    /* compiled from: TableInfo.java */
    /* loaded from: classes.dex */
    public static class c implements Comparable<c> {

        /* renamed from: f, reason: collision with root package name */
        public final int f12434f;

        /* renamed from: g, reason: collision with root package name */
        public final int f12435g;

        /* renamed from: h, reason: collision with root package name */
        public final String f12436h;

        /* renamed from: i, reason: collision with root package name */
        public final String f12437i;

        public c(int i10, int i11, String str, String str2) {
            this.f12434f = i10;
            this.f12435g = i11;
            this.f12436h = str;
            this.f12437i = str2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(c cVar) {
            int i10 = this.f12434f - cVar.f12434f;
            return i10 == 0 ? this.f12435g - cVar.f12435g : i10;
        }
    }

    /* compiled from: TableInfo.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        public final String f12438a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f12439b;

        /* renamed from: c, reason: collision with root package name */
        public final List<String> f12440c;

        /* renamed from: d, reason: collision with root package name */
        public final List<String> f12441d;

        public d(String str, boolean z10, List<String> list) {
            this(str, z10, list, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            if (this.f12439b != dVar.f12439b || !this.f12440c.equals(dVar.f12440c) || !this.f12441d.equals(dVar.f12441d)) {
                return false;
            }
            if (this.f12438a.startsWith("index_")) {
                return dVar.f12438a.startsWith("index_");
            }
            return this.f12438a.equals(dVar.f12438a);
        }

        public int hashCode() {
            return ((((((this.f12438a.startsWith("index_") ? -1184239155 : this.f12438a.hashCode()) * 31) + (this.f12439b ? 1 : 0)) * 31) + this.f12440c.hashCode()) * 31) + this.f12441d.hashCode();
        }

        public String toString() {
            return "Index{name='" + this.f12438a + "', unique=" + this.f12439b + ", columns=" + this.f12440c + ", orders=" + this.f12441d + '}';
        }

        public d(String str, boolean z10, List<String> list, List<String> list2) {
            this.f12438a = str;
            this.f12439b = z10;
            this.f12440c = list;
            this.f12441d = (list2 == null || list2.size() == 0) ? Collections.nCopies(list.size(), t.ASC.name()) : list2;
        }
    }

    public g(String str, Map<String, a> map, Set<b> set, Set<d> set2) {
        this.f12418a = str;
        this.f12419b = Collections.unmodifiableMap(map);
        this.f12420c = Collections.unmodifiableSet(set);
        this.f12421d = set2 == null ? null : Collections.unmodifiableSet(set2);
    }

    public static g a(r1.g gVar, String str) {
        return new g(str, b(gVar, str), d(gVar, str), f(gVar, str));
    }

    public static Map<String, a> b(r1.g gVar, String str) {
        Cursor A0 = gVar.A0("PRAGMA table_info(`" + str + "`)");
        HashMap hashMap = new HashMap();
        try {
            if (A0.getColumnCount() > 0) {
                int columnIndex = A0.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME);
                int columnIndex2 = A0.getColumnIndex("type");
                int columnIndex3 = A0.getColumnIndex("notnull");
                int columnIndex4 = A0.getColumnIndex("pk");
                int columnIndex5 = A0.getColumnIndex("dflt_value");
                while (A0.moveToNext()) {
                    String string = A0.getString(columnIndex);
                    hashMap.put(string, new a(string, A0.getString(columnIndex2), A0.getInt(columnIndex3) != 0, A0.getInt(columnIndex4), A0.getString(columnIndex5), 2));
                }
            }
            return hashMap;
        } finally {
            A0.close();
        }
    }

    public static List<c> c(Cursor cursor) {
        int columnIndex = cursor.getColumnIndex("id");
        int columnIndex2 = cursor.getColumnIndex("seq");
        int columnIndex3 = cursor.getColumnIndex("from");
        int columnIndex4 = cursor.getColumnIndex("to");
        int count = cursor.getCount();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < count; i10++) {
            cursor.moveToPosition(i10);
            arrayList.add(new c(cursor.getInt(columnIndex), cursor.getInt(columnIndex2), cursor.getString(columnIndex3), cursor.getString(columnIndex4)));
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static Set<b> d(r1.g gVar, String str) {
        HashSet hashSet = new HashSet();
        Cursor A0 = gVar.A0("PRAGMA foreign_key_list(`" + str + "`)");
        try {
            int columnIndex = A0.getColumnIndex("id");
            int columnIndex2 = A0.getColumnIndex("seq");
            int columnIndex3 = A0.getColumnIndex("table");
            int columnIndex4 = A0.getColumnIndex("on_delete");
            int columnIndex5 = A0.getColumnIndex("on_update");
            List<c> c10 = c(A0);
            int count = A0.getCount();
            for (int i10 = 0; i10 < count; i10++) {
                A0.moveToPosition(i10);
                if (A0.getInt(columnIndex2) == 0) {
                    int i11 = A0.getInt(columnIndex);
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (c cVar : c10) {
                        if (cVar.f12434f == i11) {
                            arrayList.add(cVar.f12436h);
                            arrayList2.add(cVar.f12437i);
                        }
                    }
                    hashSet.add(new b(A0.getString(columnIndex3), A0.getString(columnIndex4), A0.getString(columnIndex5), arrayList, arrayList2));
                }
            }
            return hashSet;
        } finally {
            A0.close();
        }
    }

    public static d e(r1.g gVar, String str, boolean z10) {
        Cursor A0 = gVar.A0("PRAGMA index_xinfo(`" + str + "`)");
        try {
            int columnIndex = A0.getColumnIndex("seqno");
            int columnIndex2 = A0.getColumnIndex("cid");
            int columnIndex3 = A0.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME);
            int columnIndex4 = A0.getColumnIndex("desc");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1 && columnIndex4 != -1) {
                TreeMap treeMap = new TreeMap();
                TreeMap treeMap2 = new TreeMap();
                while (A0.moveToNext()) {
                    if (A0.getInt(columnIndex2) >= 0) {
                        int i10 = A0.getInt(columnIndex);
                        String string = A0.getString(columnIndex3);
                        String str2 = A0.getInt(columnIndex4) > 0 ? "DESC" : "ASC";
                        treeMap.put(Integer.valueOf(i10), string);
                        treeMap2.put(Integer.valueOf(i10), str2);
                    }
                }
                ArrayList arrayList = new ArrayList(treeMap.size());
                arrayList.addAll(treeMap.values());
                ArrayList arrayList2 = new ArrayList(treeMap2.size());
                arrayList2.addAll(treeMap2.values());
                return new d(str, z10, arrayList, arrayList2);
            }
            return null;
        } finally {
            A0.close();
        }
    }

    public static Set<d> f(r1.g gVar, String str) {
        Cursor A0 = gVar.A0("PRAGMA index_list(`" + str + "`)");
        try {
            int columnIndex = A0.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME);
            int columnIndex2 = A0.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.ORIGIN);
            int columnIndex3 = A0.getColumnIndex("unique");
            if (columnIndex != -1 && columnIndex2 != -1 && columnIndex3 != -1) {
                HashSet hashSet = new HashSet();
                while (A0.moveToNext()) {
                    if ("c".equals(A0.getString(columnIndex2))) {
                        String string = A0.getString(columnIndex);
                        boolean z10 = true;
                        if (A0.getInt(columnIndex3) != 1) {
                            z10 = false;
                        }
                        d e10 = e(gVar, string, z10);
                        if (e10 == null) {
                            return null;
                        }
                        hashSet.add(e10);
                    }
                }
                return hashSet;
            }
            return null;
        } finally {
            A0.close();
        }
    }

    public boolean equals(Object obj) {
        Set<d> set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        String str = this.f12418a;
        if (str == null ? gVar.f12418a != null : !str.equals(gVar.f12418a)) {
            return false;
        }
        Map<String, a> map = this.f12419b;
        if (map == null ? gVar.f12419b != null : !map.equals(gVar.f12419b)) {
            return false;
        }
        Set<b> set2 = this.f12420c;
        if (set2 == null ? gVar.f12420c != null : !set2.equals(gVar.f12420c)) {
            return false;
        }
        Set<d> set3 = this.f12421d;
        if (set3 == null || (set = gVar.f12421d) == null) {
            return true;
        }
        return set3.equals(set);
    }

    public int hashCode() {
        String str = this.f12418a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, a> map = this.f12419b;
        int hashCode2 = (hashCode + (map != null ? map.hashCode() : 0)) * 31;
        Set<b> set = this.f12420c;
        return hashCode2 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        return "TableInfo{name='" + this.f12418a + "', columns=" + this.f12419b + ", foreignKeys=" + this.f12420c + ", indices=" + this.f12421d + '}';
    }
}
