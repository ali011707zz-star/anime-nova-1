package o0;

import android.os.Build;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;

/* compiled from: PrecomputedTextCompat.java */
/* loaded from: classes.dex */
public class c implements Spannable {

    /* renamed from: i, reason: collision with root package name */
    public static final Object f11436i = new Object();

    /* renamed from: f, reason: collision with root package name */
    public final Spannable f11437f;

    /* renamed from: g, reason: collision with root package name */
    public final a f11438g;

    /* renamed from: h, reason: collision with root package name */
    public final PrecomputedText f11439h;

    public a a() {
        return this.f11438g;
    }

    public PrecomputedText b() {
        Spannable spannable = this.f11437f;
        if (spannable instanceof PrecomputedText) {
            return (PrecomputedText) spannable;
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i10) {
        return this.f11437f.charAt(i10);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f11437f.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f11437f.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f11437f.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public <T> T[] getSpans(int i10, int i11, Class<T> cls) {
        if (Build.VERSION.SDK_INT >= 29) {
            return (T[]) this.f11439h.getSpans(i10, i11, cls);
        }
        return (T[]) this.f11437f.getSpans(i10, i11, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f11437f.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i10, int i11, Class cls) {
        return this.f11437f.nextSpanTransition(i10, i11, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f11439h.removeSpan(obj);
                return;
            } else {
                this.f11437f.removeSpan(obj);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i10, int i11, int i12) {
        if (!(obj instanceof MetricAffectingSpan)) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f11439h.setSpan(obj, i10, i11, i12);
                return;
            } else {
                this.f11437f.setSpan(obj, i10, i11, i12);
                return;
            }
        }
        throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i10, int i11) {
        return this.f11437f.subSequence(i10, i11);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f11437f.toString();
    }

    /* compiled from: PrecomputedTextCompat.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final TextPaint f11440a;

        /* renamed from: b, reason: collision with root package name */
        public final TextDirectionHeuristic f11441b;

        /* renamed from: c, reason: collision with root package name */
        public final int f11442c;

        /* renamed from: d, reason: collision with root package name */
        public final int f11443d;

        /* renamed from: e, reason: collision with root package name */
        public final PrecomputedText.Params f11444e;

        /* compiled from: PrecomputedTextCompat.java */
        /* renamed from: o0.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0283a {

            /* renamed from: a, reason: collision with root package name */
            public final TextPaint f11445a;

            /* renamed from: b, reason: collision with root package name */
            public TextDirectionHeuristic f11446b;

            /* renamed from: c, reason: collision with root package name */
            public int f11447c;

            /* renamed from: d, reason: collision with root package name */
            public int f11448d;

            public C0283a(TextPaint textPaint) {
                this.f11445a = textPaint;
                int i10 = Build.VERSION.SDK_INT;
                if (i10 >= 23) {
                    this.f11447c = 1;
                    this.f11448d = 1;
                } else {
                    this.f11448d = 0;
                    this.f11447c = 0;
                }
                if (i10 >= 18) {
                    this.f11446b = TextDirectionHeuristics.FIRSTSTRONG_LTR;
                } else {
                    this.f11446b = null;
                }
            }

            public a a() {
                return new a(this.f11445a, this.f11446b, this.f11447c, this.f11448d);
            }

            public C0283a b(int i10) {
                this.f11447c = i10;
                return this;
            }

            public C0283a c(int i10) {
                this.f11448d = i10;
                return this;
            }

            public C0283a d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f11446b = textDirectionHeuristic;
                return this;
            }
        }

        public a(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i10, int i11) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f11444e = new PrecomputedText.Params.Builder(textPaint).setBreakStrategy(i10).setHyphenationFrequency(i11).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f11444e = null;
            }
            this.f11440a = textPaint;
            this.f11441b = textDirectionHeuristic;
            this.f11442c = i10;
            this.f11443d = i11;
        }

        public boolean a(a aVar) {
            int i10 = Build.VERSION.SDK_INT;
            if ((i10 >= 23 && (this.f11442c != aVar.b() || this.f11443d != aVar.c())) || this.f11440a.getTextSize() != aVar.e().getTextSize() || this.f11440a.getTextScaleX() != aVar.e().getTextScaleX() || this.f11440a.getTextSkewX() != aVar.e().getTextSkewX()) {
                return false;
            }
            if ((i10 >= 21 && (this.f11440a.getLetterSpacing() != aVar.e().getLetterSpacing() || !TextUtils.equals(this.f11440a.getFontFeatureSettings(), aVar.e().getFontFeatureSettings()))) || this.f11440a.getFlags() != aVar.e().getFlags()) {
                return false;
            }
            if (i10 >= 24) {
                if (!this.f11440a.getTextLocales().equals(aVar.e().getTextLocales())) {
                    return false;
                }
            } else if (i10 >= 17 && !this.f11440a.getTextLocale().equals(aVar.e().getTextLocale())) {
                return false;
            }
            return this.f11440a.getTypeface() == null ? aVar.e().getTypeface() == null : this.f11440a.getTypeface().equals(aVar.e().getTypeface());
        }

        public int b() {
            return this.f11442c;
        }

        public int c() {
            return this.f11443d;
        }

        public TextDirectionHeuristic d() {
            return this.f11441b;
        }

        public TextPaint e() {
            return this.f11440a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (a(aVar)) {
                return Build.VERSION.SDK_INT < 18 || this.f11441b == aVar.d();
            }
            return false;
        }

        public int hashCode() {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 24) {
                return p0.d.b(Float.valueOf(this.f11440a.getTextSize()), Float.valueOf(this.f11440a.getTextScaleX()), Float.valueOf(this.f11440a.getTextSkewX()), Float.valueOf(this.f11440a.getLetterSpacing()), Integer.valueOf(this.f11440a.getFlags()), this.f11440a.getTextLocales(), this.f11440a.getTypeface(), Boolean.valueOf(this.f11440a.isElegantTextHeight()), this.f11441b, Integer.valueOf(this.f11442c), Integer.valueOf(this.f11443d));
            }
            if (i10 >= 21) {
                return p0.d.b(Float.valueOf(this.f11440a.getTextSize()), Float.valueOf(this.f11440a.getTextScaleX()), Float.valueOf(this.f11440a.getTextSkewX()), Float.valueOf(this.f11440a.getLetterSpacing()), Integer.valueOf(this.f11440a.getFlags()), this.f11440a.getTextLocale(), this.f11440a.getTypeface(), Boolean.valueOf(this.f11440a.isElegantTextHeight()), this.f11441b, Integer.valueOf(this.f11442c), Integer.valueOf(this.f11443d));
            }
            if (i10 >= 18) {
                return p0.d.b(Float.valueOf(this.f11440a.getTextSize()), Float.valueOf(this.f11440a.getTextScaleX()), Float.valueOf(this.f11440a.getTextSkewX()), Integer.valueOf(this.f11440a.getFlags()), this.f11440a.getTextLocale(), this.f11440a.getTypeface(), this.f11441b, Integer.valueOf(this.f11442c), Integer.valueOf(this.f11443d));
            }
            if (i10 >= 17) {
                return p0.d.b(Float.valueOf(this.f11440a.getTextSize()), Float.valueOf(this.f11440a.getTextScaleX()), Float.valueOf(this.f11440a.getTextSkewX()), Integer.valueOf(this.f11440a.getFlags()), this.f11440a.getTextLocale(), this.f11440a.getTypeface(), this.f11441b, Integer.valueOf(this.f11442c), Integer.valueOf(this.f11443d));
            }
            return p0.d.b(Float.valueOf(this.f11440a.getTextSize()), Float.valueOf(this.f11440a.getTextScaleX()), Float.valueOf(this.f11440a.getTextSkewX()), Integer.valueOf(this.f11440a.getFlags()), this.f11440a.getTypeface(), this.f11441b, Integer.valueOf(this.f11442c), Integer.valueOf(this.f11443d));
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            sb2.append("textSize=" + this.f11440a.getTextSize());
            sb2.append(", textScaleX=" + this.f11440a.getTextScaleX());
            sb2.append(", textSkewX=" + this.f11440a.getTextSkewX());
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 21) {
                sb2.append(", letterSpacing=" + this.f11440a.getLetterSpacing());
                sb2.append(", elegantTextHeight=" + this.f11440a.isElegantTextHeight());
            }
            if (i10 >= 24) {
                sb2.append(", textLocale=" + this.f11440a.getTextLocales());
            } else if (i10 >= 17) {
                sb2.append(", textLocale=" + this.f11440a.getTextLocale());
            }
            sb2.append(", typeface=" + this.f11440a.getTypeface());
            if (i10 >= 26) {
                sb2.append(", variationSettings=" + this.f11440a.getFontVariationSettings());
            }
            sb2.append(", textDir=" + this.f11441b);
            sb2.append(", breakStrategy=" + this.f11442c);
            sb2.append(", hyphenationFrequency=" + this.f11443d);
            sb2.append("}");
            return sb2.toString();
        }

        public a(PrecomputedText.Params params) {
            this.f11440a = params.getTextPaint();
            this.f11441b = params.getTextDirection();
            this.f11442c = params.getBreakStrategy();
            this.f11443d = params.getHyphenationFrequency();
            this.f11444e = Build.VERSION.SDK_INT < 29 ? null : params;
        }
    }
}
