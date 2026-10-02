package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.g;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();

    /* renamed from: f, reason: collision with root package name */
    public final int f620f;

    /* renamed from: g, reason: collision with root package name */
    public final long f621g;

    /* renamed from: h, reason: collision with root package name */
    public final long f622h;

    /* renamed from: i, reason: collision with root package name */
    public final float f623i;

    /* renamed from: j, reason: collision with root package name */
    public final long f624j;

    /* renamed from: k, reason: collision with root package name */
    public final int f625k;

    /* renamed from: l, reason: collision with root package name */
    public final CharSequence f626l;

    /* renamed from: m, reason: collision with root package name */
    public final long f627m;

    /* renamed from: n, reason: collision with root package name */
    public List<CustomAction> f628n;

    /* renamed from: o, reason: collision with root package name */
    public final long f629o;

    /* renamed from: p, reason: collision with root package name */
    public final Bundle f630p;

    /* renamed from: q, reason: collision with root package name */
    public Object f631q;

    /* loaded from: classes.dex */
    public static class a implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat[] newArray(int i10) {
            return new PlaybackStateCompat[i10];
        }
    }

    public PlaybackStateCompat(int i10, long j10, long j11, float f10, long j12, int i11, CharSequence charSequence, long j13, List<CustomAction> list, long j14, Bundle bundle) {
        this.f620f = i10;
        this.f621g = j10;
        this.f622h = j11;
        this.f623i = f10;
        this.f624j = j12;
        this.f625k = i11;
        this.f626l = charSequence;
        this.f627m = j13;
        this.f628n = new ArrayList(list);
        this.f629o = j14;
        this.f630p = bundle;
    }

    public static PlaybackStateCompat a(Object obj) {
        ArrayList arrayList;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> d10 = g.d(obj);
        if (d10 != null) {
            ArrayList arrayList2 = new ArrayList(d10.size());
            Iterator<Object> it2 = d10.iterator();
            while (it2.hasNext()) {
                arrayList2.add(CustomAction.a(it2.next()));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(g.i(obj), g.h(obj), g.c(obj), g.g(obj), g.a(obj), 0, g.e(obj), g.f(obj), arrayList, g.b(obj), Build.VERSION.SDK_INT >= 22 ? h.a(obj) : null);
        playbackStateCompat.f631q = obj;
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f620f + ", position=" + this.f621g + ", buffered position=" + this.f622h + ", speed=" + this.f623i + ", updated=" + this.f627m + ", actions=" + this.f624j + ", error code=" + this.f625k + ", error message=" + this.f626l + ", custom actions=" + this.f628n + ", active item id=" + this.f629o + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f620f);
        parcel.writeLong(this.f621g);
        parcel.writeFloat(this.f623i);
        parcel.writeLong(this.f627m);
        parcel.writeLong(this.f622h);
        parcel.writeLong(this.f624j);
        TextUtils.writeToParcel(this.f626l, parcel, i10);
        parcel.writeTypedList(this.f628n);
        parcel.writeLong(this.f629o);
        parcel.writeBundle(this.f630p);
        parcel.writeInt(this.f625k);
    }

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();

        /* renamed from: f, reason: collision with root package name */
        public final String f632f;

        /* renamed from: g, reason: collision with root package name */
        public final CharSequence f633g;

        /* renamed from: h, reason: collision with root package name */
        public final int f634h;

        /* renamed from: i, reason: collision with root package name */
        public final Bundle f635i;

        /* renamed from: j, reason: collision with root package name */
        public Object f636j;

        /* loaded from: classes.dex */
        public static class a implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public CustomAction[] newArray(int i10) {
                return new CustomAction[i10];
            }
        }

        public CustomAction(String str, CharSequence charSequence, int i10, Bundle bundle) {
            this.f632f = str;
            this.f633g = charSequence;
            this.f634h = i10;
            this.f635i = bundle;
        }

        public static CustomAction a(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(g.a.a(obj), g.a.d(obj), g.a.c(obj), g.a.b(obj));
            customAction.f636j = obj;
            return customAction;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f633g) + ", mIcon=" + this.f634h + ", mExtras=" + this.f635i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f632f);
            TextUtils.writeToParcel(this.f633g, parcel, i10);
            parcel.writeInt(this.f634h);
            parcel.writeBundle(this.f635i);
        }

        public CustomAction(Parcel parcel) {
            this.f632f = parcel.readString();
            this.f633g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f634h = parcel.readInt();
            this.f635i = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f620f = parcel.readInt();
        this.f621g = parcel.readLong();
        this.f623i = parcel.readFloat();
        this.f627m = parcel.readLong();
        this.f622h = parcel.readLong();
        this.f624j = parcel.readLong();
        this.f626l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f628n = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f629o = parcel.readLong();
        this.f630p = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f625k = parcel.readInt();
    }
}
