package g3;

import android.annotation.TargetApi;
import android.graphics.Path;
import android.os.Build;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import l3.i;

/* compiled from: MergePathsContent.java */
@TargetApi(19)
/* loaded from: classes.dex */
public class l implements m, j {

    /* renamed from: d, reason: collision with root package name */
    public final String f6849d;

    /* renamed from: f, reason: collision with root package name */
    public final l3.i f6851f;

    /* renamed from: a, reason: collision with root package name */
    public final Path f6846a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Path f6847b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final Path f6848c = new Path();

    /* renamed from: e, reason: collision with root package name */
    public final List<m> f6850e = new ArrayList();

    /* compiled from: MergePathsContent.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6852a;

        static {
            int[] iArr = new int[i.a.values().length];
            f6852a = iArr;
            try {
                iArr[i.a.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6852a[i.a.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6852a[i.a.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6852a[i.a.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6852a[i.a.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public l(l3.i iVar) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f6849d = iVar.c();
            this.f6851f = iVar;
            return;
        }
        throw new IllegalStateException("Merge paths are not supported pre-KitKat.");
    }

    public final void b() {
        for (int i10 = 0; i10 < this.f6850e.size(); i10++) {
            this.f6848c.addPath(this.f6850e.get(i10).getPath());
        }
    }

    @Override // g3.c
    public void c(List<c> list, List<c> list2) {
        for (int i10 = 0; i10 < this.f6850e.size(); i10++) {
            this.f6850e.get(i10).c(list, list2);
        }
    }

    @Override // g3.j
    public void d(ListIterator<c> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            c previous = listIterator.previous();
            if (previous instanceof m) {
                this.f6850e.add((m) previous);
                listIterator.remove();
            }
        }
    }

    @TargetApi(19)
    public final void e(Path.Op op) {
        this.f6847b.reset();
        this.f6846a.reset();
        for (int size = this.f6850e.size() - 1; size >= 1; size--) {
            m mVar = this.f6850e.get(size);
            if (mVar instanceof d) {
                d dVar = (d) mVar;
                List<m> i10 = dVar.i();
                for (int size2 = i10.size() - 1; size2 >= 0; size2--) {
                    Path path = i10.get(size2).getPath();
                    path.transform(dVar.j());
                    this.f6847b.addPath(path);
                }
            } else {
                this.f6847b.addPath(mVar.getPath());
            }
        }
        m mVar2 = this.f6850e.get(0);
        if (mVar2 instanceof d) {
            d dVar2 = (d) mVar2;
            List<m> i11 = dVar2.i();
            for (int i12 = 0; i12 < i11.size(); i12++) {
                Path path2 = i11.get(i12).getPath();
                path2.transform(dVar2.j());
                this.f6846a.addPath(path2);
            }
        } else {
            this.f6846a.set(mVar2.getPath());
        }
        this.f6848c.op(this.f6846a, this.f6847b, op);
    }

    @Override // g3.m
    public Path getPath() {
        this.f6848c.reset();
        if (this.f6851f.d()) {
            return this.f6848c;
        }
        int i10 = a.f6852a[this.f6851f.b().ordinal()];
        if (i10 == 1) {
            b();
        } else if (i10 == 2) {
            e(Path.Op.UNION);
        } else if (i10 == 3) {
            e(Path.Op.REVERSE_DIFFERENCE);
        } else if (i10 == 4) {
            e(Path.Op.INTERSECT);
        } else if (i10 == 5) {
            e(Path.Op.XOR);
        }
        return this.f6848c;
    }
}
