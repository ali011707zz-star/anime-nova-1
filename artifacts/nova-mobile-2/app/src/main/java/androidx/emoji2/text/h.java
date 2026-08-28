package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* compiled from: EmojiSpan.java */
/* loaded from: classes.dex */
public abstract class h extends ReplacementSpan {

    /* renamed from: g, reason: collision with root package name */
    public final f f1977g;

    /* renamed from: f, reason: collision with root package name */
    public final Paint.FontMetricsInt f1976f = new Paint.FontMetricsInt();

    /* renamed from: h, reason: collision with root package name */
    public short f1978h = -1;

    /* renamed from: i, reason: collision with root package name */
    public short f1979i = -1;

    /* renamed from: j, reason: collision with root package name */
    public float f1980j = 1.0f;

    public h(f fVar) {
        p0.i.h(fVar, "metadata cannot be null");
        this.f1977g = fVar;
    }

    public final f a() {
        return this.f1977g;
    }

    public final int b() {
        return this.f1978h;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.f1976f);
        Paint.FontMetricsInt fontMetricsInt2 = this.f1976f;
        this.f1980j = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / this.f1977g.e();
        this.f1979i = (short) (this.f1977g.e() * this.f1980j);
        short i12 = (short) (this.f1977g.i() * this.f1980j);
        this.f1978h = i12;
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt3 = this.f1976f;
            fontMetricsInt.ascent = fontMetricsInt3.ascent;
            fontMetricsInt.descent = fontMetricsInt3.descent;
            fontMetricsInt.top = fontMetricsInt3.top;
            fontMetricsInt.bottom = fontMetricsInt3.bottom;
        }
        return i12;
    }
}
