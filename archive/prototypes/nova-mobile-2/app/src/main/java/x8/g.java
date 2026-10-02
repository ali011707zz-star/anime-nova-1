package x8;

import android.graphics.DashPathEffect;
import android.graphics.Paint;

/* compiled from: LimitLine.java */
/* loaded from: classes.dex */
public class g extends b {

    /* renamed from: g, reason: collision with root package name */
    public float f16211g;

    /* renamed from: h, reason: collision with root package name */
    public float f16212h;

    /* renamed from: i, reason: collision with root package name */
    public int f16213i;

    /* renamed from: j, reason: collision with root package name */
    public Paint.Style f16214j;

    /* renamed from: k, reason: collision with root package name */
    public String f16215k;

    /* renamed from: l, reason: collision with root package name */
    public DashPathEffect f16216l;

    /* renamed from: m, reason: collision with root package name */
    public a f16217m;

    /* compiled from: LimitLine.java */
    /* loaded from: classes.dex */
    public enum a {
        LEFT_TOP,
        LEFT_BOTTOM,
        RIGHT_TOP,
        RIGHT_BOTTOM
    }

    public DashPathEffect k() {
        return this.f16216l;
    }

    public String l() {
        return this.f16215k;
    }

    public a m() {
        return this.f16217m;
    }

    public float n() {
        return this.f16211g;
    }

    public int o() {
        return this.f16213i;
    }

    public float p() {
        return this.f16212h;
    }

    public Paint.Style q() {
        return this.f16214j;
    }
}
