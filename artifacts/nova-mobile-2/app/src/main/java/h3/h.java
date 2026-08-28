package h3;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MaskKeyframeAnimation.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    public final List<a<l3.m, Path>> f7230a;

    /* renamed from: b, reason: collision with root package name */
    public final List<a<Integer, Integer>> f7231b;

    /* renamed from: c, reason: collision with root package name */
    public final List<l3.h> f7232c;

    public h(List<l3.h> list) {
        this.f7232c = list;
        this.f7230a = new ArrayList(list.size());
        this.f7231b = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            this.f7230a.add(list.get(i10).b().a());
            this.f7231b.add(list.get(i10).c().a());
        }
    }

    public List<a<l3.m, Path>> a() {
        return this.f7230a;
    }

    public List<l3.h> b() {
        return this.f7232c;
    }

    public List<a<Integer, Integer>> c() {
        return this.f7231b;
    }
}
