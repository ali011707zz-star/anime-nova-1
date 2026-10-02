package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.e;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: MediaControllerCompat.java */
/* loaded from: classes.dex */
public abstract class c implements IBinder.DeathRecipient {

    /* renamed from: a, reason: collision with root package name */
    public final Object f638a;

    /* renamed from: b, reason: collision with root package name */
    public android.support.v4.media.session.a f639b;

    /* compiled from: MediaControllerCompat.java */
    /* loaded from: classes.dex */
    public static class a implements e.a {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference<c> f640a;

        public a(c cVar) {
            this.f640a = new WeakReference<>(cVar);
        }

        @Override // android.support.v4.media.session.e.a
        public void a(CharSequence charSequence) {
            c cVar = this.f640a.get();
            if (cVar != null) {
                cVar.f(charSequence);
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void b() {
            c cVar = this.f640a.get();
            if (cVar != null) {
                cVar.g();
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void c(Bundle bundle) {
            c cVar = this.f640a.get();
            if (cVar != null) {
                cVar.b(bundle);
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void d(List<?> list) {
            c cVar = this.f640a.get();
            if (cVar != null) {
                cVar.e(MediaSessionCompat.QueueItem.c(list));
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void e(Object obj) {
            c cVar = this.f640a.get();
            if (cVar != null) {
                cVar.c(MediaMetadataCompat.a(obj));
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void f(int i10, int i11, int i12, int i13, int i14) {
            c cVar = this.f640a.get();
            if (cVar != null) {
                cVar.a(new d(i10, i11, i12, i13, i14));
            }
        }

        @Override // android.support.v4.media.session.e.a
        public void g(Object obj) {
            c cVar = this.f640a.get();
            if (cVar == null || cVar.f639b != null) {
                return;
            }
            cVar.d(PlaybackStateCompat.a(obj));
        }

        @Override // android.support.v4.media.session.e.a
        public void h(String str, Bundle bundle) {
            c cVar = this.f640a.get();
            if (cVar != null) {
                if (cVar.f639b == null || Build.VERSION.SDK_INT >= 23) {
                    cVar.h(str, bundle);
                }
            }
        }
    }

    /* compiled from: MediaControllerCompat.java */
    /* loaded from: classes.dex */
    public static class b extends a.AbstractBinderC0021a {

        /* renamed from: f, reason: collision with root package name */
        public final WeakReference<c> f641f;

        public b(c cVar) {
            this.f641f = new WeakReference<>(cVar);
        }

        public void a(CharSequence charSequence) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(6, charSequence, null);
            }
        }

        public void b() throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(8, null, null);
            }
        }

        public void c(Bundle bundle) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(7, bundle, null);
            }
        }

        public void d(List<MediaSessionCompat.QueueItem> list) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(5, list, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void e(boolean z10) throws RemoteException {
        }

        public void g(MediaMetadataCompat mediaMetadataCompat) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(3, mediaMetadataCompat, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void h(int i10) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(9, Integer.valueOf(i10), null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void j(int i10) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(12, Integer.valueOf(i10), null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void k() throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(13, null, null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void n(boolean z10) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(11, Boolean.valueOf(z10), null);
            }
        }

        @Override // android.support.v4.media.session.a
        public void onEvent(String str, Bundle bundle) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(1, str, bundle);
            }
        }

        @Override // android.support.v4.media.session.a
        public void p(PlaybackStateCompat playbackStateCompat) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(2, playbackStateCompat, null);
            }
        }

        public void r(ParcelableVolumeInfo parcelableVolumeInfo) throws RemoteException {
            c cVar = this.f641f.get();
            if (cVar != null) {
                cVar.i(4, parcelableVolumeInfo != null ? new d(parcelableVolumeInfo.f615f, parcelableVolumeInfo.f616g, parcelableVolumeInfo.f617h, parcelableVolumeInfo.f618i, parcelableVolumeInfo.f619j) : null, null);
            }
        }
    }

    public c() {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f638a = e.a(new a(this));
            return;
        }
        b bVar = new b(this);
        this.f639b = bVar;
        this.f638a = bVar;
    }

    public void a(d dVar) {
    }

    public void b(Bundle bundle) {
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        i(8, null, null);
    }

    public void c(MediaMetadataCompat mediaMetadataCompat) {
    }

    public void d(PlaybackStateCompat playbackStateCompat) {
    }

    public void e(List<MediaSessionCompat.QueueItem> list) {
    }

    public void f(CharSequence charSequence) {
    }

    public void g() {
    }

    public void h(String str, Bundle bundle) {
    }

    public void i(int i10, Object obj, Bundle bundle) {
    }
}
