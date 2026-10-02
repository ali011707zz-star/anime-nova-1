package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "FieldMappingDictionaryCreator")
/* loaded from: classes.dex */
public final class zan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zan> CREATOR = new zao();

    @SafeParcelable.VersionField(id = 1)
    public final int zaa;
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> zab;

    @SafeParcelable.Field(getter = "getRootClassName", id = 3)
    private final String zac;

    @SafeParcelable.Constructor
    public zan(@SafeParcelable.Param(id = 1) int i10, @SafeParcelable.Param(id = 2) ArrayList<zal> arrayList, @SafeParcelable.Param(id = 3) String str) {
        this.zaa = i10;
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            zal zalVar = arrayList.get(i11);
            String str2 = zalVar.zab;
            HashMap hashMap2 = new HashMap();
            int size2 = ((ArrayList) Preconditions.checkNotNull(zalVar.zac)).size();
            for (int i12 = 0; i12 < size2; i12++) {
                zam zamVar = zalVar.zac.get(i12);
                hashMap2.put(zamVar.zab, zamVar.zac);
            }
            hashMap.put(str2, hashMap2);
        }
        this.zab = hashMap;
        this.zac = (String) Preconditions.checkNotNull(str);
        zaa();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (String str : this.zab.keySet()) {
            sb2.append(str);
            sb2.append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zab.get(str);
            for (String str2 : map.keySet()) {
                sb2.append("  ");
                sb2.append(str2);
                sb2.append(": ");
                sb2.append(map.get(str2));
            }
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        ArrayList arrayList = new ArrayList();
        for (String str : this.zab.keySet()) {
            arrayList.add(new zal(str, this.zab.get(str)));
        }
        SafeParcelWriter.writeTypedList(parcel, 2, arrayList, false);
        SafeParcelWriter.writeString(parcel, 3, this.zac, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final void zaa() {
        Iterator<String> it2 = this.zab.keySet().iterator();
        while (it2.hasNext()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zab.get(it2.next());
            Iterator<String> it3 = map.keySet().iterator();
            while (it3.hasNext()) {
                map.get(it3.next()).zad(this);
            }
        }
    }

    public final void zab() {
        for (String str : this.zab.keySet()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zab.get(str);
            HashMap hashMap = new HashMap();
            for (String str2 : map.keySet()) {
                hashMap.put(str2, map.get(str2).zaa());
            }
            this.zab.put(str, hashMap);
        }
    }

    public final void zac(Class<? extends FastJsonResponse> cls, Map<String, FastJsonResponse.Field<?, ?>> map) {
        this.zab.put((String) Preconditions.checkNotNull(cls.getCanonicalName()), map);
    }

    public final Map<String, FastJsonResponse.Field<?, ?>> zad(String str) {
        return this.zab.get(str);
    }

    public final boolean zae(Class<? extends FastJsonResponse> cls) {
        return this.zab.containsKey(Preconditions.checkNotNull(cls.getCanonicalName()));
    }

    public final String zaf() {
        return this.zac;
    }

    public zan(Class<? extends FastJsonResponse> cls) {
        this.zaa = 1;
        this.zab = new HashMap<>();
        this.zac = (String) Preconditions.checkNotNull(cls.getCanonicalName());
    }
}
