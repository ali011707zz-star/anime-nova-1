package o3;

import android.graphics.Rect;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m3.d;
import p3.c;
import s.d;

/* compiled from: LottieCompositionMoshiParser.java */
/* loaded from: classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    public static final c.a f11735a = c.a.a("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    /* renamed from: b, reason: collision with root package name */
    public static c.a f11736b = c.a.a("id", "layers", "w", "h", "p", "u");

    /* renamed from: c, reason: collision with root package name */
    public static final c.a f11737c = c.a.a("list");

    /* renamed from: d, reason: collision with root package name */
    public static final c.a f11738d = c.a.a("cm", "tm", "dr");

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0043. Please report as an issue. */
    public static e3.d a(p3.c cVar) throws IOException {
        HashMap hashMap;
        ArrayList arrayList;
        p3.c cVar2 = cVar;
        float e10 = q3.h.e();
        d<m3.d> dVar = new d<>();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        s.h<j3.d> hVar = new s.h<>();
        e3.d dVar2 = new e3.d();
        cVar.h();
        int i10 = 0;
        float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        float f12 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
        int i11 = 0;
        while (cVar.z()) {
            switch (cVar2.c0(f11735a)) {
                case 0:
                    i10 = cVar.L();
                    break;
                case 1:
                    i11 = cVar.L();
                    break;
                case 2:
                    f10 = (float) cVar.G();
                    break;
                case 3:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f11 = ((float) cVar.G()) - 0.01f;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 4:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f12 = (float) cVar.G();
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 5:
                    String[] split = cVar.R().split("\\.");
                    if (!q3.h.j(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), 4, 4, 0)) {
                        dVar2.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 6:
                    e(cVar2, dVar2, arrayList2, dVar);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 7:
                    b(cVar2, dVar2, hashMap2, hashMap3);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 8:
                    d(cVar2, hashMap4);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 9:
                    c(cVar2, dVar2, hVar);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                case 10:
                    f(cVar2, dVar2, arrayList3);
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
                default:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    cVar.h0();
                    cVar.k0();
                    hashMap4 = hashMap;
                    arrayList3 = arrayList;
                    break;
            }
            cVar2 = cVar;
        }
        dVar2.s(new Rect(0, 0, (int) (i10 * e10), (int) (i11 * e10)), f10, f11, f12, arrayList2, dVar, hashMap2, hashMap3, hVar, hashMap4, arrayList3);
        return dVar2;
    }

    public static void b(p3.c cVar, e3.d dVar, Map<String, List<m3.d>> map, Map<String, e3.g> map2) throws IOException {
        cVar.d();
        while (cVar.z()) {
            ArrayList arrayList = new ArrayList();
            s.d dVar2 = new s.d();
            cVar.h();
            String str = null;
            String str2 = null;
            String str3 = null;
            int i10 = 0;
            int i11 = 0;
            while (cVar.z()) {
                int c02 = cVar.c0(f11736b);
                if (c02 == 0) {
                    str = cVar.R();
                } else if (c02 == 1) {
                    cVar.d();
                    while (cVar.z()) {
                        m3.d b10 = v.b(cVar, dVar);
                        dVar2.j(b10.d(), b10);
                        arrayList.add(b10);
                    }
                    cVar.k();
                } else if (c02 == 2) {
                    i10 = cVar.L();
                } else if (c02 == 3) {
                    i11 = cVar.L();
                } else if (c02 == 4) {
                    str2 = cVar.R();
                } else if (c02 != 5) {
                    cVar.h0();
                    cVar.k0();
                } else {
                    str3 = cVar.R();
                }
            }
            cVar.x();
            if (str2 != null) {
                e3.g gVar = new e3.g(i10, i11, str, str2, str3);
                map2.put(gVar.d(), gVar);
            } else {
                map.put(str, arrayList);
            }
        }
        cVar.k();
    }

    public static void c(p3.c cVar, e3.d dVar, s.h<j3.d> hVar) throws IOException {
        cVar.d();
        while (cVar.z()) {
            j3.d a10 = m.a(cVar, dVar);
            hVar.i(a10.hashCode(), a10);
        }
        cVar.k();
    }

    public static void d(p3.c cVar, Map<String, j3.c> map) throws IOException {
        cVar.h();
        while (cVar.z()) {
            if (cVar.c0(f11737c) != 0) {
                cVar.h0();
                cVar.k0();
            } else {
                cVar.d();
                while (cVar.z()) {
                    j3.c a10 = n.a(cVar);
                    map.put(a10.b(), a10);
                }
                cVar.k();
            }
        }
        cVar.x();
    }

    public static void e(p3.c cVar, e3.d dVar, List<m3.d> list, s.d<m3.d> dVar2) throws IOException {
        cVar.d();
        int i10 = 0;
        while (cVar.z()) {
            m3.d b10 = v.b(cVar, dVar);
            if (b10.f() == d.a.IMAGE) {
                i10++;
            }
            list.add(b10);
            dVar2.j(b10.d(), b10);
            if (i10 > 4) {
                q3.d.c("You have " + i10 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        cVar.k();
    }

    public static void f(p3.c cVar, e3.d dVar, List<j3.h> list) throws IOException {
        cVar.d();
        while (cVar.z()) {
            String str = null;
            cVar.h();
            float f10 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            float f11 = StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD;
            while (cVar.z()) {
                int c02 = cVar.c0(f11738d);
                if (c02 == 0) {
                    str = cVar.R();
                } else if (c02 == 1) {
                    f10 = (float) cVar.G();
                } else if (c02 != 2) {
                    cVar.h0();
                    cVar.k0();
                } else {
                    f11 = (float) cVar.G();
                }
            }
            cVar.x();
            list.add(new j3.h(str, f10, f11));
        }
        cVar.k();
    }
}
