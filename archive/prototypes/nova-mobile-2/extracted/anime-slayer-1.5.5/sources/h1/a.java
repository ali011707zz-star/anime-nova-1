package h1;

import android.os.Bundle;
import androidx.lifecycle.n0;
import androidx.lifecycle.q;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: LoaderManager.java */
/* loaded from: classes.dex */
public abstract class a {

    /* compiled from: LoaderManager.java */
    /* renamed from: h1.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0135a<D> {
        i1.b<D> onCreateLoader(int i10, Bundle bundle);

        void onLoadFinished(i1.b<D> bVar, D d10);

        void onLoaderReset(i1.b<D> bVar);
    }

    public static <T extends q & n0> a b(T t10) {
        return new b(t10, t10.getViewModelStore());
    }

    @Deprecated
    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract <D> i1.b<D> c(int i10, Bundle bundle, InterfaceC0135a<D> interfaceC0135a);

    public abstract void d();
}
