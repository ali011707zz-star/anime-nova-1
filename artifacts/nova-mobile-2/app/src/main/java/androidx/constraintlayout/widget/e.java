package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import w.e;

/* compiled from: Placeholder.java */
/* loaded from: classes.dex */
public class e extends View {

    /* renamed from: f, reason: collision with root package name */
    public int f1806f;

    /* renamed from: g, reason: collision with root package name */
    public View f1807g;

    /* renamed from: h, reason: collision with root package name */
    public int f1808h;

    public void a(ConstraintLayout constraintLayout) {
        if (this.f1807g == null) {
            return;
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) getLayoutParams();
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) this.f1807g.getLayoutParams();
        bVar2.f1650u0.a1(0);
        e.b y10 = bVar.f1650u0.y();
        e.b bVar3 = e.b.FIXED;
        if (y10 != bVar3) {
            bVar.f1650u0.b1(bVar2.f1650u0.R());
        }
        if (bVar.f1650u0.O() != bVar3) {
            bVar.f1650u0.C0(bVar2.f1650u0.v());
        }
        bVar2.f1650u0.a1(8);
    }

    public void b(ConstraintLayout constraintLayout) {
        if (this.f1806f == -1 && !isInEditMode()) {
            setVisibility(this.f1808h);
        }
        View findViewById = constraintLayout.findViewById(this.f1806f);
        this.f1807g = findViewById;
        if (findViewById != null) {
            ((ConstraintLayout.b) findViewById.getLayoutParams()).f1626i0 = true;
            this.f1807g.setVisibility(0);
            setVisibility(0);
        }
    }

    public View getContent() {
        return this.f1807g;
    }

    public int getEmptyVisibility() {
        return this.f1808h;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (isInEditMode()) {
            canvas.drawRGB(223, 223, 223);
            Paint paint = new Paint();
            paint.setARGB(BaseProgressIndicator.MAX_ALPHA, 210, 210, 210);
            paint.setTextAlign(Paint.Align.CENTER);
            paint.setTypeface(Typeface.create(Typeface.DEFAULT, 0));
            Rect rect = new Rect();
            canvas.getClipBounds(rect);
            paint.setTextSize(rect.height());
            int height = rect.height();
            int width = rect.width();
            paint.setTextAlign(Paint.Align.LEFT);
            paint.getTextBounds("?", 0, 1, rect);
            canvas.drawText("?", ((width / 2.0f) - (rect.width() / 2.0f)) - rect.left, ((height / 2.0f) + (rect.height() / 2.0f)) - rect.bottom, paint);
        }
    }

    public void setContentId(int i10) {
        View findViewById;
        if (this.f1806f == i10) {
            return;
        }
        View view = this.f1807g;
        if (view != null) {
            view.setVisibility(0);
            ((ConstraintLayout.b) this.f1807g.getLayoutParams()).f1626i0 = false;
            this.f1807g = null;
        }
        this.f1806f = i10;
        if (i10 == -1 || (findViewById = ((View) getParent()).findViewById(i10)) == null) {
            return;
        }
        findViewById.setVisibility(8);
    }

    public void setEmptyVisibility(int i10) {
        this.f1808h = i10;
    }
}
