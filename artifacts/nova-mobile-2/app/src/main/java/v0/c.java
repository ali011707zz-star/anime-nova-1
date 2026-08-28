package v0;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: ResourceCursorAdapter.java */
/* loaded from: classes.dex */
public abstract class c extends a {

    /* renamed from: n, reason: collision with root package name */
    public int f14745n;

    /* renamed from: o, reason: collision with root package name */
    public int f14746o;

    /* renamed from: p, reason: collision with root package name */
    public LayoutInflater f14747p;

    @Deprecated
    public c(Context context, int i10, Cursor cursor, boolean z10) {
        super(context, cursor, z10);
        this.f14746o = i10;
        this.f14745n = i10;
        this.f14747p = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // v0.a
    public View g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f14747p.inflate(this.f14746o, viewGroup, false);
    }

    @Override // v0.a
    public View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f14747p.inflate(this.f14745n, viewGroup, false);
    }
}
