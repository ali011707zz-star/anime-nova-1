package androidx.lifecycle;

import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* compiled from: SavedStateHandle.java */
/* loaded from: classes.dex */
public final class f0 {

    /* renamed from: e, reason: collision with root package name */
    public static final Class[] f2477e;

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f2478a;

    /* renamed from: b, reason: collision with root package name */
    public final Map<String, SavedStateRegistry.b> f2479b;

    /* renamed from: c, reason: collision with root package name */
    public final Map<String, Object> f2480c;

    /* renamed from: d, reason: collision with root package name */
    public final SavedStateRegistry.b f2481d;

    /* compiled from: SavedStateHandle.java */
    /* loaded from: classes.dex */
    public class a implements SavedStateRegistry.b {
        public a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.b
        public Bundle a() {
            for (Map.Entry entry : new HashMap(f0.this.f2479b).entrySet()) {
                f0.this.d((String) entry.getKey(), ((SavedStateRegistry.b) entry.getValue()).a());
            }
            Set<String> keySet = f0.this.f2478a.keySet();
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
            ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
            for (String str : keySet) {
                arrayList.add(str);
                arrayList2.add(f0.this.f2478a.get(str));
            }
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("keys", arrayList);
            bundle.putParcelableArrayList("values", arrayList2);
            return bundle;
        }
    }

    static {
        Class[] clsArr = new Class[29];
        clsArr[0] = Boolean.TYPE;
        clsArr[1] = boolean[].class;
        clsArr[2] = Double.TYPE;
        clsArr[3] = double[].class;
        Class<SizeF> cls = Integer.TYPE;
        clsArr[4] = cls;
        clsArr[5] = int[].class;
        clsArr[6] = Long.TYPE;
        clsArr[7] = long[].class;
        clsArr[8] = String.class;
        clsArr[9] = String[].class;
        clsArr[10] = Binder.class;
        clsArr[11] = Bundle.class;
        clsArr[12] = Byte.TYPE;
        clsArr[13] = byte[].class;
        clsArr[14] = Character.TYPE;
        clsArr[15] = char[].class;
        clsArr[16] = CharSequence.class;
        clsArr[17] = CharSequence[].class;
        clsArr[18] = ArrayList.class;
        clsArr[19] = Float.TYPE;
        clsArr[20] = float[].class;
        clsArr[21] = Parcelable.class;
        clsArr[22] = Parcelable[].class;
        clsArr[23] = Serializable.class;
        clsArr[24] = Short.TYPE;
        clsArr[25] = short[].class;
        clsArr[26] = SparseArray.class;
        int i10 = Build.VERSION.SDK_INT;
        clsArr[27] = i10 >= 21 ? Size.class : cls;
        if (i10 >= 21) {
            cls = SizeF.class;
        }
        clsArr[28] = cls;
        f2477e = clsArr;
    }

    public f0(Map<String, Object> map) {
        this.f2479b = new HashMap();
        this.f2480c = new HashMap();
        this.f2481d = new a();
        this.f2478a = new HashMap(map);
    }

    public static f0 a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new f0();
        }
        HashMap hashMap = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                hashMap.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new f0(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList != null && parcelableArrayList2 != null && parcelableArrayList.size() == parcelableArrayList2.size()) {
            for (int i10 = 0; i10 < parcelableArrayList.size(); i10++) {
                hashMap.put((String) parcelableArrayList.get(i10), parcelableArrayList2.get(i10));
            }
            return new f0(hashMap);
        }
        throw new IllegalStateException("Invalid bundle passed as restored state");
    }

    public static void e(Object obj) {
        if (obj == null) {
            return;
        }
        for (Class cls : f2477e) {
            if (cls.isInstance(obj)) {
                return;
            }
        }
        throw new IllegalArgumentException("Can't put value with type " + obj.getClass() + " into saved state");
    }

    public <T> T b(String str) {
        return (T) this.f2478a.get(str);
    }

    public SavedStateRegistry.b c() {
        return this.f2481d;
    }

    public <T> void d(String str, T t10) {
        e(t10);
        y yVar = (y) this.f2480c.get(str);
        if (yVar != null) {
            yVar.o(t10);
        } else {
            this.f2478a.put(str, t10);
        }
    }

    public f0() {
        this.f2479b = new HashMap();
        this.f2480c = new HashMap();
        this.f2481d = new a();
        this.f2478a = new HashMap();
    }
}
