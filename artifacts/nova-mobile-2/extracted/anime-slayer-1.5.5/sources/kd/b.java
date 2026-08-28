package kd;

import java.util.Locale;
import java.util.ResourceBundle;

/* compiled from: ResourcesTimeFormat.java */
/* loaded from: classes2.dex */
public class b extends jd.a implements id.b<b> {

    /* renamed from: m, reason: collision with root package name */
    public ResourceBundle f10168m;

    /* renamed from: n, reason: collision with root package name */
    public final c f10169n;

    /* renamed from: o, reason: collision with root package name */
    public id.d f10170o;

    /* renamed from: p, reason: collision with root package name */
    public String f10171p;

    public b(c cVar, String str) {
        this.f10169n = cVar;
        this.f10171p = str;
    }

    @Override // jd.a, id.d
    public String a(id.a aVar) {
        id.d dVar = this.f10170o;
        return dVar == null ? super.a(aVar) : dVar.a(aVar);
    }

    @Override // jd.a, id.d
    public String b(id.a aVar, String str) {
        id.d dVar = this.f10170o;
        return dVar == null ? super.b(aVar, str) : dVar.b(aVar, str);
    }

    @Override // id.b
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public b setLocale(Locale locale) {
        String str = this.f10171p;
        if (str != null) {
            try {
                this.f10168m = ResourceBundle.getBundle(str, locale);
            } catch (Exception unused) {
            }
        }
        if (this.f10168m == null) {
            this.f10168m = ResourceBundle.getBundle(this.f10169n.c(), locale);
        }
        Object obj = this.f10168m;
        if (obj instanceof d) {
            id.d a10 = ((d) obj).a(this.f10169n);
            if (a10 != null) {
                this.f10170o = a10;
            }
        } else {
            this.f10170o = null;
        }
        if (this.f10170o == null) {
            t(this.f10168m.getString(this.f10169n.d() + "Pattern"));
            m(this.f10168m.getString(this.f10169n.d() + "FuturePrefix"));
            o(this.f10168m.getString(this.f10169n.d() + "FutureSuffix"));
            q(this.f10168m.getString(this.f10169n.d() + "PastPrefix"));
            s(this.f10168m.getString(this.f10169n.d() + "PastSuffix"));
            v(this.f10168m.getString(this.f10169n.d() + "SingularName"));
            u(this.f10168m.getString(this.f10169n.d() + "PluralName"));
            try {
                l(this.f10168m.getString(this.f10169n.d() + "FuturePluralName"));
            } catch (Exception unused2) {
            }
            try {
                n(this.f10168m.getString(this.f10169n.d() + "FutureSingularName"));
            } catch (Exception unused3) {
            }
            try {
                p(this.f10168m.getString(this.f10169n.d() + "PastPluralName"));
            } catch (Exception unused4) {
            }
            try {
                r(this.f10168m.getString(this.f10169n.d() + "PastSingularName"));
            } catch (Exception unused5) {
            }
        }
        return this;
    }
}
