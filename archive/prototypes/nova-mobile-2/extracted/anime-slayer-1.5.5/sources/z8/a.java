package z8;

import java.text.DecimalFormat;

/* compiled from: DefaultAxisValueFormatter.java */
/* loaded from: classes.dex */
public class a extends c {

    /* renamed from: a, reason: collision with root package name */
    public DecimalFormat f17433a;

    /* renamed from: b, reason: collision with root package name */
    public int f17434b;

    public a(int i10) {
        this.f17434b = i10;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 == 0) {
                stringBuffer.append(".");
            }
            stringBuffer.append("0");
        }
        this.f17433a = new DecimalFormat("###,###,###,##0" + stringBuffer.toString());
    }

    @Override // z8.c
    public String d(float f10) {
        return this.f17433a.format(f10);
    }

    public int g() {
        return this.f17434b;
    }
}
