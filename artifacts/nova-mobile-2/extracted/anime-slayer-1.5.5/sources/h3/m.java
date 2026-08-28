package h3;

import android.graphics.Path;
import java.util.List;

/* compiled from: ShapeKeyframeAnimation.java */
/* loaded from: classes.dex */
public class m extends a<l3.m, Path> {

    /* renamed from: i, reason: collision with root package name */
    public final l3.m f7241i;

    /* renamed from: j, reason: collision with root package name */
    public final Path f7242j;

    public m(List<r3.a<l3.m>> list) {
        super(list);
        this.f7241i = new l3.m();
        this.f7242j = new Path();
    }

    @Override // h3.a
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public Path i(r3.a<l3.m> aVar, float f10) {
        this.f7241i.c(aVar.f12830b, aVar.f12831c, f10);
        q3.g.i(this.f7241i, this.f7242j);
        return this.f7242j;
    }
}
