package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import org.apache.http.impl.auth.NTLMEngineImpl;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: f, reason: collision with root package name */
    public TypedValue f1168f;

    /* renamed from: g, reason: collision with root package name */
    public TypedValue f1169g;

    /* renamed from: h, reason: collision with root package name */
    public TypedValue f1170h;

    /* renamed from: i, reason: collision with root package name */
    public TypedValue f1171i;

    /* renamed from: j, reason: collision with root package name */
    public TypedValue f1172j;

    /* renamed from: k, reason: collision with root package name */
    public TypedValue f1173k;

    /* renamed from: l, reason: collision with root package name */
    public final Rect f1174l;

    /* renamed from: m, reason: collision with root package name */
    public a f1175m;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public void a(Rect rect) {
        fitSystemWindows(rect);
    }

    public void b(int i10, int i11, int i12, int i13) {
        this.f1174l.set(i10, i11, i12, i13);
        if (q0.b0.X(this)) {
            requestLayout();
        }
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1172j == null) {
            this.f1172j = new TypedValue();
        }
        return this.f1172j;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1173k == null) {
            this.f1173k = new TypedValue();
        }
        return this.f1173k;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1170h == null) {
            this.f1170h = new TypedValue();
        }
        return this.f1170h;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1171i == null) {
            this.f1171i = new TypedValue();
        }
        return this.f1171i;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1168f == null) {
            this.f1168f = new TypedValue();
        }
        return this.f1168f;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1169g == null) {
            this.f1169g = new TypedValue();
        }
        return this.f1169g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.f1175m;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.f1175m;
        if (aVar != null) {
            aVar.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ae  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i10, int i11) {
        boolean z10;
        int measuredWidth;
        TypedValue typedValue;
        int i12;
        int i13;
        float fraction;
        int i14;
        int i15;
        float fraction2;
        int i16;
        int i17;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z11 = true;
        boolean z12 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode == Integer.MIN_VALUE) {
            TypedValue typedValue2 = z12 ? this.f1171i : this.f1170h;
            if (typedValue2 != null && (i16 = typedValue2.type) != 0) {
                if (i16 == 5) {
                    fraction3 = typedValue2.getDimension(displayMetrics);
                } else if (i16 == 6) {
                    int i18 = displayMetrics.widthPixels;
                    fraction3 = typedValue2.getFraction(i18, i18);
                } else {
                    i17 = 0;
                    if (i17 > 0) {
                        Rect rect = this.f1174l;
                        i10 = View.MeasureSpec.makeMeasureSpec(Math.min(i17 - (rect.left + rect.right), View.MeasureSpec.getSize(i10)), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                        z10 = true;
                        if (mode2 == Integer.MIN_VALUE) {
                            TypedValue typedValue3 = z12 ? this.f1172j : this.f1173k;
                            if (typedValue3 != null && (i14 = typedValue3.type) != 0) {
                                if (i14 == 5) {
                                    fraction2 = typedValue3.getDimension(displayMetrics);
                                } else if (i14 == 6) {
                                    int i19 = displayMetrics.heightPixels;
                                    fraction2 = typedValue3.getFraction(i19, i19);
                                } else {
                                    i15 = 0;
                                    if (i15 > 0) {
                                        Rect rect2 = this.f1174l;
                                        i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i15 - (rect2.top + rect2.bottom), View.MeasureSpec.getSize(i11)), NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                                    }
                                }
                                i15 = (int) fraction2;
                                if (i15 > 0) {
                                }
                            }
                        }
                        super.onMeasure(i10, i11);
                        measuredWidth = getMeasuredWidth();
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                        if (!z10 && mode == Integer.MIN_VALUE) {
                            typedValue = !z12 ? this.f1169g : this.f1168f;
                            if (typedValue != null && (i12 = typedValue.type) != 0) {
                                if (i12 != 5) {
                                    fraction = typedValue.getDimension(displayMetrics);
                                } else if (i12 == 6) {
                                    int i20 = displayMetrics.widthPixels;
                                    fraction = typedValue.getFraction(i20, i20);
                                } else {
                                    i13 = 0;
                                    if (i13 > 0) {
                                        Rect rect3 = this.f1174l;
                                        i13 -= rect3.left + rect3.right;
                                    }
                                    if (measuredWidth < i13) {
                                        makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i13, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
                                        if (z11) {
                                            super.onMeasure(makeMeasureSpec, i11);
                                            return;
                                        }
                                        return;
                                    }
                                }
                                i13 = (int) fraction;
                                if (i13 > 0) {
                                }
                                if (measuredWidth < i13) {
                                }
                            }
                        }
                        z11 = false;
                        if (z11) {
                        }
                    }
                }
                i17 = (int) fraction3;
                if (i17 > 0) {
                }
            }
        }
        z10 = false;
        if (mode2 == Integer.MIN_VALUE) {
        }
        super.onMeasure(i10, i11);
        measuredWidth = getMeasuredWidth();
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredWidth, NTLMEngineImpl.FLAG_NEGOTIATE_KEY_EXCH);
        if (!z10) {
            if (!z12) {
            }
            if (typedValue != null) {
                if (i12 != 5) {
                }
                i13 = (int) fraction;
                if (i13 > 0) {
                }
                if (measuredWidth < i13) {
                }
            }
        }
        z11 = false;
        if (z11) {
        }
    }

    public void setAttachListener(a aVar) {
        this.f1175m = aVar;
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1174l = new Rect();
    }
}
