package z8;

import java.text.DecimalFormat;

/* compiled from: DefaultValueFormatter.java */
/* loaded from: classes.dex */
public class b extends c {

    /* renamed from: a, reason: collision with root package name */
    public DecimalFormat f17435a;

    /* renamed from: b, reason: collision with root package name */
    public int f17436b;

    public b(int i10) {
        g(i10);
    }

    @Override // z8.c
    public String d(float f10) {
        return this.f17435a.format(f10);
    }

    public void g(int i10) {
        this.f17436b = i10;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 == 0) {
                stringBuffer.append(".");
            }
            stringBuffer.append("0");
        }
        this.f17435a = new DecimalFormat("###,###,###,##0" + stringBuffer.toString());
    }
}
