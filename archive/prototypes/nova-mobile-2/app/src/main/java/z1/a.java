package z1;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.versionedparcelable.VersionedParcel;
import java.lang.reflect.Method;

/* compiled from: VersionedParcelParcel.java */
/* loaded from: classes.dex */
public class a extends VersionedParcel {

    /* renamed from: d, reason: collision with root package name */
    public final SparseIntArray f17253d;

    /* renamed from: e, reason: collision with root package name */
    public final Parcel f17254e;

    /* renamed from: f, reason: collision with root package name */
    public final int f17255f;

    /* renamed from: g, reason: collision with root package name */
    public final int f17256g;

    /* renamed from: h, reason: collision with root package name */
    public final String f17257h;

    /* renamed from: i, reason: collision with root package name */
    public int f17258i;

    /* renamed from: j, reason: collision with root package name */
    public int f17259j;

    /* renamed from: k, reason: collision with root package name */
    public int f17260k;

    public a(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new s.a(), new s.a(), new s.a());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void A(byte[] bArr) {
        if (bArr != null) {
            this.f17254e.writeInt(bArr.length);
            this.f17254e.writeByteArray(bArr);
        } else {
            this.f17254e.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f17254e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void E(int i10) {
        this.f17254e.writeInt(i10);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void G(Parcelable parcelable) {
        this.f17254e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void I(String str) {
        this.f17254e.writeString(str);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void a() {
        int i10 = this.f17258i;
        if (i10 >= 0) {
            int i11 = this.f17253d.get(i10);
            int dataPosition = this.f17254e.dataPosition();
            this.f17254e.setDataPosition(i11);
            this.f17254e.writeInt(dataPosition - i11);
            this.f17254e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public VersionedParcel b() {
        Parcel parcel = this.f17254e;
        int dataPosition = parcel.dataPosition();
        int i10 = this.f17259j;
        if (i10 == this.f17255f) {
            i10 = this.f17256g;
        }
        return new a(parcel, dataPosition, i10, this.f17257h + "  ", this.f3216a, this.f3217b, this.f3218c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean g() {
        return this.f17254e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] i() {
        int readInt = this.f17254e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f17254e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public CharSequence k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f17254e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean m(int i10) {
        while (this.f17259j < this.f17256g) {
            int i11 = this.f17260k;
            if (i11 == i10) {
                return true;
            }
            if (String.valueOf(i11).compareTo(String.valueOf(i10)) > 0) {
                return false;
            }
            this.f17254e.setDataPosition(this.f17259j);
            int readInt = this.f17254e.readInt();
            this.f17260k = this.f17254e.readInt();
            this.f17259j += readInt;
        }
        return this.f17260k == i10;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int o() {
        return this.f17254e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T q() {
        return (T) this.f17254e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String s() {
        return this.f17254e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void w(int i10) {
        a();
        this.f17258i = i10;
        this.f17253d.put(i10, this.f17254e.dataPosition());
        E(0);
        E(i10);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void y(boolean z10) {
        this.f17254e.writeInt(z10 ? 1 : 0);
    }

    public a(Parcel parcel, int i10, int i11, String str, s.a<String, Method> aVar, s.a<String, Method> aVar2, s.a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f17253d = new SparseIntArray();
        this.f17258i = -1;
        this.f17259j = 0;
        this.f17260k = -1;
        this.f17254e = parcel;
        this.f17255f = i10;
        this.f17256g = i11;
        this.f17259j = i10;
        this.f17257h = str;
    }
}
