package o3;

import android.graphics.Color;
import android.graphics.Rect;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import m3.d;
import p3.c;

/* compiled from: LayerParser.java */
/* loaded from: classes.dex */
public class v {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11731a = c.a.a("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd");

    /* renamed from: b, reason: collision with root package name */
    public static final c.a f11732b = c.a.a(GoogleApiAvailabilityLight.TRACKING_SOURCE_DIALOG, "a");

    /* renamed from: c, reason: collision with root package name */
    public static final c.a f11733c = c.a.a("ty", "nm");

    /* compiled from: LayerParser.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11734a;

        static {
            int[] iArr = new int[d.b.values().length];
            f11734a = iArr;
            try {
                iArr[d.b.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11734a[d.b.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static m3.d a(e3.d dVar) {
        Rect b10 = dVar.b();
        return new m3.d(Collections.emptyList(), dVar, "__container", -1L, d.a.PRE_COMP, -1L, null, Collections.emptyList(), new k3.l(), 0, 0, 0, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, b10.width(), b10.height(), null, null, Collections.emptyList(), d.b.NONE, null, false, null, null);
    }

    public static m3.d b(p3.c cVar, e3.d dVar) throws IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        d.b bVar = d.b.NONE;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        cVar.h();
        Float valueOf = Float.valueOf(1.0f);
        Float valueOf2 = Float.valueOf(StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD);
        d.b bVar2 = bVar;
        d.a aVar = null;
        String str = null;
        k3.l lVar = null;
        k3.j jVar = null;
        k3.k kVar = null;
        k3.b bVar3 = null;
        l3.a aVar2 = null;
        j jVar2 = null;
        long j10 = -1;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        float f11 = 1.0f;
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i13 = 0;
        int i14 = 0;
        boolean z10 = false;
        float f13 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        long j11 = 0;
        String str2 = null;
        String str3 = "UNSET";
        while (cVar.z()) {
            switch (cVar.c0(f11731a)) {
                case 0:
                    str3 = cVar.R();
                    break;
                case 1:
                    j11 = cVar.L();
                    break;
                case 2:
                    str = cVar.R();
                    break;
                case 3:
                    int L = cVar.L();
                    aVar = d.a.UNKNOWN;
                    if (L >= aVar.ordinal()) {
                        break;
                    } else {
                        aVar = d.a.values()[L];
                        break;
                    }
                case 4:
                    j10 = cVar.L();
                    break;
                case 5:
                    i10 = (int) (cVar.L() * q3.h.e());
                    break;
                case 6:
                    i11 = (int) (cVar.L() * q3.h.e());
                    break;
                case 7:
                    i12 = Color.parseColor(cVar.R());
                    break;
                case 8:
                    lVar = c.g(cVar, dVar);
                    break;
                case 9:
                    int L2 = cVar.L();
                    if (L2 >= d.b.values().length) {
                        dVar.a("Unsupported matte type: " + L2);
                        break;
                    } else {
                        bVar2 = d.b.values()[L2];
                        int i15 = a.f11734a[bVar2.ordinal()];
                        if (i15 == 1) {
                            dVar.a("Unsupported matte type: Luma");
                        } else if (i15 == 2) {
                            dVar.a("Unsupported matte type: Luma Inverted");
                        }
                        dVar.r(1);
                        break;
                    }
                case 10:
                    cVar.d();
                    while (cVar.z()) {
                        arrayList3.add(x.a(cVar, dVar));
                    }
                    dVar.r(arrayList3.size());
                    cVar.k();
                    break;
                case 11:
                    cVar.d();
                    while (cVar.z()) {
                        l3.c a10 = h.a(cVar, dVar);
                        if (a10 != null) {
                            arrayList4.add(a10);
                        }
                    }
                    cVar.k();
                    break;
                case 12:
                    cVar.h();
                    while (cVar.z()) {
                        int c02 = cVar.c0(f11732b);
                        if (c02 == 0) {
                            jVar = d.d(cVar, dVar);
                        } else if (c02 != 1) {
                            cVar.h0();
                            cVar.k0();
                        } else {
                            cVar.d();
                            if (cVar.z()) {
                                kVar = b.a(cVar, dVar);
                            }
                            while (cVar.z()) {
                                cVar.k0();
                            }
                            cVar.k();
                        }
                    }
                    cVar.x();
                    break;
                case 13:
                    cVar.d();
                    ArrayList arrayList5 = new ArrayList();
                    while (cVar.z()) {
                        cVar.h();
                        while (cVar.z()) {
                            int c03 = cVar.c0(f11733c);
                            if (c03 == 0) {
                                int L3 = cVar.L();
                                if (L3 == 29) {
                                    aVar2 = e.b(cVar, dVar);
                                } else if (L3 == 25) {
                                    jVar2 = new k().b(cVar, dVar);
                                }
                            } else if (c03 != 1) {
                                cVar.h0();
                                cVar.k0();
                            } else {
                                arrayList5.add(cVar.R());
                            }
                        }
                        cVar.x();
                    }
                    cVar.k();
                    dVar.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList5);
                    break;
                case 14:
                    f11 = (float) cVar.G();
                    break;
                case 15:
                    f12 = (float) cVar.G();
                    break;
                case 16:
                    i13 = (int) (cVar.L() * q3.h.e());
                    break;
                case 17:
                    i14 = (int) (cVar.L() * q3.h.e());
                    break;
                case 18:
                    f10 = (float) cVar.G();
                    break;
                case 19:
                    f13 = (float) cVar.G();
                    break;
                case 20:
                    bVar3 = d.f(cVar, dVar, false);
                    break;
                case 21:
                    str2 = cVar.R();
                    break;
                case 22:
                    z10 = cVar.F();
                    break;
                default:
                    cVar.h0();
                    cVar.k0();
                    break;
            }
        }
        cVar.x();
        ArrayList arrayList6 = new ArrayList();
        if (f10 > StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
            arrayList2.add(new r3.a(dVar, valueOf2, valueOf2, null, StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD, Float.valueOf(f10)));
        } else {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
        }
        if (f13 <= StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
            f13 = dVar.f();
        }
        arrayList2.add(new r3.a(dVar, valueOf, valueOf, null, f10, Float.valueOf(f13)));
        arrayList2.add(new r3.a(dVar, valueOf2, valueOf2, null, f13, Float.valueOf(Float.MAX_VALUE)));
        if (str3.endsWith(".ai") || "ai".equals(str2)) {
            dVar.a("Convert your Illustrator layers to shape layers.");
        }
        return new m3.d(arrayList4, dVar, str3, j11, aVar, j10, str, arrayList, lVar, i10, i11, i12, f11, f12, i13, i14, jVar, kVar, arrayList2, bVar2, bVar3, z10, aVar2, jVar2);
    }
}
